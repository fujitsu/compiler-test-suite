#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
struct  t1 {
   int        a;
   char       b;
   struct t1 *tp;
};

struct  t1 t1a,t1b,t1c;
int main()
{
#ifdef __STDC__
   int funce(char *);
   int func1(struct t1 *),init(int),chk(struct t1 *);
#else
   int funce();
   int func1(),init(),chk();
#endif
   char  cc;
   int   i,rtc;
   struct t1 *t1p;

   printf("*** mptest03 start ***\n");
   for( i=0 ; init(i) ; i++);
   for( t1p=&t1a ; t1p != 0 ; t1p = t1p->tp) {
      rtc = func1(t1p);
      if(rtc == -1) {
         funce("in main");
         goto l1;
      }
      rtc = chk(t1p);
   }
l1:
   if(rtc == 0){
     for(cc='a',t1p=&t1a ; t1p!=0 ; t1p=t1p->tp,cc++){
       printf("  ( t1%c )  a=%d, b=%c\n", cc,t1p->a,t1p->b);
     }
     printf("*** mptest03 ok ***\n");
   }
exit (0);
}
#ifdef __STDC__
int init(int i)
#else
int init(i)
int i;
#endif
{
   switch(i){
      case 0:
         t1a.a = 0;
         t1a.b ='a';
         t1a.tp = &t1b;
         break;
      case 1:
         t1b.a = 1;
         t1b.b = 'b';
         t1b.tp = &t1c;
         break;
      case 2:
         t1c.a = 2;
         t1c.b = 'c';
         t1c.tp = 0;
         break;
      default:
         return(0);
   }
   return(1);
}

#ifdef __STDC__
int func1(struct t1 *tp)
#else
int func1(tp)
struct t1  *tp;
#endif
{
   if(tp == 0)
      return(-1);
   switch(tp->a){
      case 0:
         if(tp->b != 'a')
            return(-1);
         tp->b = 'x';
         return(0);
      case 1:
         if(tp->b != 'b')
            return(-1);
         tp->b = 'y';
         return(0);
      case 2:
         if(tp->b != 'c')
            return(-1);
         tp->b = 'z';
         return(0);
      default:
         return(-1);
   }
}

#ifdef __STDC__
int funce(char *str)
#else
funce(str)
char *str;
#endif
{
   printf("*** mptest03 ng *** %s ***\n",str);
   return(-1);
}

#ifdef __STDC__
int chk(struct t1 *ptr)
#else
chk(ptr)
struct t1 *ptr;
#endif
{
   static char rdata[3] = {'x','y','z'};

   if(ptr == 0)
      return(funce("in chk 1"));
   if(ptr->a >= 0 && ptr->a < 3){
      if(rdata[ptr->a] == ptr->b) {
         printf(" ** ok *** t1.a = %d *** \n",ptr->a);
         printf(" ** ok *** t1.b = %c *** \n",ptr->b);
         return(0);
      } else {
         printf("     *** t1.a = %d *** \n",ptr->a);
         printf("     *** t1.b = %c *** \n",ptr->b);
         return(funce("in chk 2"));
      }
   } else {
      return(funce("in chk 3"));
   }
   return(0);
}
