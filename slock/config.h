/* user and group to drop privileges to */
static const char *user  = "nobody";
static const char *group = "nobody";

static const char *colorname[NUMCOLS] = {
	"#091720",     /* after initialization */
	"#005f5f",   /* during input */
	//original "#005577",
	//"#005f5f",   
	//"#74b4a6",
	//"#005577",
	//noch heller: 7affff
	"#CC3333",   /* wrong password */
};

/* treat a cleared input like a wrong password */
static const int failonclear = 1;
