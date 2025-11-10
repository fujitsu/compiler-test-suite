#include <stdio.h>

__attribute__ ((format_arg (2)))
char *my_dgettext (int no, char *my_format)
{
  char c_no[13];
  static char area[1024];
  int ix, jx, kx;
  
  sprintf(c_no, "%d", no) ;

  for(ix=0;my_format[ix] !=0;ix++) {
    if(my_format[ix] == '%' &&
       my_format[ix+1] == 'd') {
      break;
    }
  }

  if(my_format[ix] == 0) { return my_format; }

  for (jx = 0; jx < ix; jx++) {
    area[jx] = my_format[jx];
  }

  for (kx = 0; c_no[kx] != 0; jx++, kx++) {
    area[jx] = c_no[kx];
  }
  
  for(ix += 2; my_format[ix] !=0; jx++, ix++) {
    area[jx] = my_format[ix];
  }
  
  return area ;
}
