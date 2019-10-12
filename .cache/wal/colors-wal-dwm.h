static const char norm_fg[] = "#e5d0cb";
static const char norm_bg[] = "#0f1118";
static const char norm_border[] = "#a0918e";

static const char sel_fg[] = "#e5d0cb";
static const char sel_bg[] = "#607195";
static const char sel_border[] = "#e5d0cb";

static const char urg_fg[] = "#e5d0cb";
static const char urg_bg[] = "#57698A";
static const char urg_border[] = "#57698A";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
