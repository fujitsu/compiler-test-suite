#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main()
{ int func();
   if(func()!=0) printf("***** MPTEST36 NG *****\n");
   else          printf("***** MPTEST36 OK *****\n");
exit (0);
}
int func()
{
#ifdef __STDC__
  int f_fr(int),f_wl(int),f_if(int),f_rn(int),f_dw(int);
#else
  int f_fr(),f_wl(),f_if(),f_rn(),f_dw();
#endif
  int i1,i2,i3,i4;
  int r1,r3,r4,r5;

     i1=1;i2=2;i3=3;i4=4;
     for(r1=f_fr(i1);f_fr(i2);f_fr(i3))
        r4=f_fr(i4);
     while(f_wl(i1))
        f_wl(i2);
     do { r5=f_dw(i1); }
     while(f_dw(i2));
     if(f_if(i1)!=1) printf("*** MPTEST36 NG ***\n");
     else if(f_if(i2)!=2) printf("*** MPTEST36 NG ***\n");
     else r3=f_if(i3);
     return(f_rn(r3));
}
int f_fr(i)
   int i;
{
   switch(i){ case 1 : return(1);
               case 2 : return(0);
               default: printf(
                        "*** MPTEST36 NG > IN F_FR *** = %d\n",i);
                        return(i);
   }
}
int f_wl(i)
   int i;
{ switch(i){ case 1 : return(0);
               default: printf("*** MPTEST36 NG > IN F_WL ***\n");
                        return(i);
            }
}
int f_dw(i)
   int i;
{ switch(i){ case 1 : return(1);
               case 2 : return(0);
               default: printf("*** MPTEST36 NG > IN F_DW ***\n");
                        return(i);
            }
}
int f_if(i)
   int i;
{ switch(i){ case 1 : return(1);
               case 2 : return(2);
               case 3 : return(3);
               default: printf("*** MPTEST36 NG > IN F_IF ***\n");
                        return(i);
            }
}
int f_rn(i)
   int i;
{ switch(i){ case 3 : return(0);
               default: printf("*** MPTEST36 NG > IN F_RN ***\n");
                        return(i);
            }
}
