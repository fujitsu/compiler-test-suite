#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
#define  array_max   49
#define  use         '1'
#define  wave        5
#define  mask1       0x7000
#define  mask2       0x3000
#define  tmask       0x4000
struct aroundtr{
        unsigned short int attr1 :1;
        unsigned short int attr2 :1;
        unsigned short int attr3 :1;
} *ptr;
struct around {
       char used;
       int  value;
       struct aroundtr  atrbt;
 } ws[array_max+1];
int main()
 {
 int i,count;
 struct    around   *p;
 unsigned  short  *q;
     for(i=0; i < array_max ; i++){
          p = &ws[i];
          if(i%2 == 0) {
               p->used  = use;
               p->value = i*wave;
               q=(unsigned short *)(&(p->atrbt));
               *q=mask1;
          }
          else
               p->value = i;
               q=(unsigned short *)(&(p->atrbt));
               *q = mask2;
     }
     for(count=0,i=0; i < array_max ; i++){
          p = &ws[i];
          if(p->used == use){
               q=(unsigned short *)(&(p->atrbt));
               if(*q & tmask)
                  count ++;
          }
    }
    if (count = 25) printf(" ok \n");
    else            printf(" ng \n");
exit (0);
 }
