#!/usr/bin/env python
import yaml
import jinja2
import sys
import os

theme_path = "themes"
template_path = "templates"
output_path = "output"

def dict_update(parent, child):
    """Recursively update parent dict with child dict."""
    for key, value in child.items():
        if key in parent and isinstance(parent[key], dict):
            parent[key] = dict_update(parent[key], value)
        else:
            parent[key] = value
    return parent

def read_config(config_file):
    """Read a YAML config file."""
    base_config = {}
    with open(config_file) as fh:
        data = yaml.load(fh)

    if data.get('extends'):
        parent_config = os.path.join(theme_path, data['extends'])
        base_config = read_config(parent_config)

    return dict_update(base_config, data)

def split_colors(data):
    additional_data = {}
    for key, value in data.items():
        if key.startswith('base'):
            r = value[:2]
            g = value[2:4]
            b = value[-2:]
            additional_data[key + '_r'] = r
            additional_data[key + '_g'] = g
            additional_data[key + '_b'] = b
            additional_data[key + '_rd'] = int(r, 16)
            additional_data[key + '_gd'] = int(g, 16)
            additional_data[key + '_bd'] = int(b, 16)
    data = dict_update(data, additional_data)
    return data

def render_all_templates(files, data):
    env = jinja2.Environment(loader=jinja2.FileSystemLoader('.'))
    print(files)
    for template_fh, out_fh in files.items():
        out = open(os.path.expanduser(out_fh), 'w')
        out.truncate()
        template = env.get_template(os.path.join(template_path, template_fh))
        out.write(template.render(data))

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: theme <config_file.yaml>")
    else:
        filepath = sys.argv[1]
        config_yaml = read_config(filepath)
        config_yaml = split_colors(config_yaml)
        render_all_templates(config_yaml.get('files'), config_yaml)
