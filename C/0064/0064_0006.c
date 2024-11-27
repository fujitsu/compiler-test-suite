#include <stdio.h>


static char corrval[30] = { "CORRECTVAL  :" } ,
	 compval[30] = { "COMPUTEDVAL :" } ;
typedef long    wchar_t;
int main()
{
  int    judge = 0 ;
  int i3,i6;
  short         *si_ptr  ; short         si_wk1 =1,si_wk2;
  double        *d_ptr   ; double        d_wk1  =1;

  si_ptr = (short *)0;
  d_ptr  = (double *)0;
  if ((int)si_ptr == 0) judge++ ;
  if ((int)d_ptr  == 0) judge++ ;
  si_ptr  = &si_wk1 ;
  d_ptr   = &d_wk1  ;
  i3 = (int)si_ptr;
  i6 = (int)d_ptr ;
  if (i3 == (int)&si_wk1) judge++ ;
  if (i6 == (int)&d_wk1) judge++  ;
#if defined(__aarch64__) || defined (__HPC_ACE__) || defined(__HPC_ACE2__)
  si_wk1 = (short)0x60000fffff003736 ;
  si_wk2 = (short)0x60000fffff003736 ;  
#else
  si_wk1 = (short)si_ptr ;
  si_wk2 = (short)d_ptr ;
#endif
  si_ptr =(short *)si_wk1;
  d_ptr  =(double *)si_wk2;
  if ((int)si_ptr != (int)&si_wk1) judge++ ;
      else printf("si_ptr:%x, &si_wk1:%x\n",(int)si_ptr,(int)&si_wk1);
  if ((int)d_ptr  != (int)&d_wk1) judge++ ;
      else printf("d_ptr:%x, &d_wk1:%x\n",(int)d_ptr,(int)&d_wk1);
  if ( 6 != judge )  {           
    printf("\n\n%34.25s%s  %-33.30s\n"," *NG*     AT ITEM NUMBER ",
	   "FEC01.12", " cast int <--> pointer") ;
    printf("\n%s%12d\n",corrval,6 );  
    printf("\n%s%12d\n",compval,judge );  
  } else {
    printf("OK\n");
  }
  return( (6 != judge )+1) ;     
}
