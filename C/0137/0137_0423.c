#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

static int     eint=0,einta[5]={1,2,3,4,5};
static char    echar='a',echara[]="bcde";
int main()
{ void func();
   int *pi,*pia[5],i,ngf=0;
   char *pc,*pca,ch='c';

   pi=&eint;pia[0]=&einta[0];pia[1]=&einta[1];
            pia[2]=&einta[2];pia[3]=&einta[3];
            pia[4]=&einta[4];
   pc=&echar;pca=echara;
   func(pi,pia,pc,pca);
   if(eint==1)  printf("** OK ** -- eint \n");
   else { ngf++;
           printf("?? NG ?? --eint = %d \n",eint);
        }
   for(i=0;i<5;i++)
   {
      if(einta[i]==i+2)printf("** OK ** -- einta[%d] \n",i);
      else { ngf++;
           printf("?? NG ?? -- einta[%d] = %d\n",i,einta[i]);
      }
   }
   if(echar=='b')  printf("** OK ** -- echar\n");
   else { ngf++;printf("?? NG ?? --echar= %c \n",echar);}
   for(i=0;i<4;i++)
   { if(echara[i]==ch++)
         printf("** OK ** -- echara[%d] \n",i);
      else { ngf++;
         printf("?? NG ?? -- echara[%d] = %c\n",i,echara[i]);
   }}
   if(ngf==0) printf("*** MPTEST46 OK ***\n");
   else       printf("*** MPTEST46 NG ***\n");
  exit(0);
}
void func(p1,p2,p3,p4)
int *p1,*p2[5];
char *p3,*p4;
{ int i,*wp;
    *p1+=1;
    for(i=0;i<5;i++) {
     wp=p2[i];
     if(wp==0) return;
     *wp+=1;
     }
    *p3+=1;
    for(i=0;i<4;i++) *(p4++)+=1;
}
