const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0f1118", /* black   */
  [1] = "#57698A", /* red     */
  [2] = "#607195", /* green   */
  [3] = "#6D7593", /* yellow  */
  [4] = "#8A7A8B", /* blue    */
  [5] = "#7888A9", /* magenta */
  [6] = "#9A97AE", /* cyan    */
  [7] = "#e5d0cb", /* white   */

  /* 8 bright colors */
  [8]  = "#a0918e",  /* black   */
  [9]  = "#57698A",  /* red     */
  [10] = "#607195", /* green   */
  [11] = "#6D7593", /* yellow  */
  [12] = "#8A7A8B", /* blue    */
  [13] = "#7888A9", /* magenta */
  [14] = "#9A97AE", /* cyan    */
  [15] = "#e5d0cb", /* white   */

  /* special colors */
  [256] = "#0f1118", /* background */
  [257] = "#e5d0cb", /* foreground */
  [258] = "#e5d0cb",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
