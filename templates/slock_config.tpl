/* user and group to drop privileges to */
static const char *user  = "nobody";
static const char *group = "nogroup";

static const char *colorname[NUMCOLS] = {
	[INIT] =   "#{{ base00 }}",     /* after initialization */
	[INPUT] =  "#{{ base0C }}",   /* during input */
	[FAILED] = "#{{ base08 }}",   /* wrong password */
};

/* treat a cleared input like a wrong password (color) */
static const int failonclear = 1;
