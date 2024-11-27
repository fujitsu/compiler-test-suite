#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <string.h>
  
 
 
 
 
 
 

#include<stddef.h>
int scpva01();
int m3etre26();
int m3etre25();
int m3etre24();
int m3etre23();
int m3etre22();
int m3etre21();
int m3etre20();
int m3etre19();
int m3etre18();
int m3etre17();
int mptest17();
int main()
{
    printf("** \n");
    mptest17();
    m3etre17();
    m3etre18();
    m3etre19();
    m3etre20();
    m3etre21();
    m3etre22();
    m3etre23();
    m3etre24();
    m3etre25();
    m3etre26();
    scpva01();
    printf("\n** \n");
exit (0);
}


 
 
 
 
struct ste {
             int  sti[5];
             char stc;
             struct ste *nxt ;
           } st01[5] ;
static char string[]="abcde";
int fun02(int);
int fun01(struct ste *,int);
void fun03(struct ste,struct ste *);

int mptest17()
{
   struct ste  st ;
   int         i01 , cd ;

   printf("\n***** MPTEST17 START *****\n");
   for(i01=0 ; i01<5 ; i01++){
                          
       st01[i01].nxt = (struct ste *) fun01(&st01[i01],i01);
                                   
       if( !(cd=fun02(st01[i01].sti[i01])) ){
            printf("*** NG  %d   CODE = %d ***\n",i01,cd);
             
            fun03(st01[i01],&st01[i01+1]);
            break ;
       } else {
            printf("*** OK  %d ***\n",i01);
       }
   }
   printf("***** MPTEST17 END *****\n");
}
int fun01(str,i)
   struct ste *str ;
   int         i ;
{
   int    ii;
   for( ii=0 ; ii<5 ; str->sti[ii]=i,ii++ ) ;
   str->stc = string[i++] ;
   str++;
   return((int)str);
}
int fun02(i)
   int    i ;
{
   int    i01 ;
   char   c = 'a';
   for( i01=0 ; i01<5 ; i01++ ){
       if(st01[i].sti[i01]!=i) return(1);
   }
   if( st01[i].nxt!=&st01[i+1] ) return(2);
   if( st01[i--].stc!=c+i ) return(3);
   return(0);
}
void fun03(s,p)
   struct ste s;
   struct ste *p;
{
   int i=0;
   for(;i<5;printf("       st.sti[d]    = %d  \n",i,s.sti[i++]));
   printf("       st.stc       = %c \n",s.stc);
   printf("       st.nxt       = %x \n",s.nxt);
   printf("       next address = %x \n",p);
   return;
}
 
 
int m3etre17()
  {
printf("\n* M3ETRE17 *** MK3 TEST FOR X_TREEMK *** STARTED *\n");
 
 
 
{
  int a=1;
  int i=0;
  int *p;
  p=&a;
  i=2-*p;
  if(i==1)
    printf("*** M3ETRE17-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE17-01 *** N G ***\n");
}
 
 
 
{
  int a=1;
  int i=0;
  int *p;
  p=&a;
  i=2+*p;
  if(i==3)
    printf("*** M3ETRE17-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE17-02 *** N G ***\n");
}
 
 
 
{
  int arr[2];
  int a=0;
  int i=0;
  int *p;
  arr[0]=1;
  p=&a;
  if(arr[*p]==1)
    printf("*** M3ETRE17-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE17-03 *** N G ***\n");
}
 
 
 
{
  int a=0;
  int i=0;
  int *p;
  p=&a;
  i+=*p;
  if(i==0)
    printf("*** M3ETRE17-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE17-04 *** N G ***\n");
}
 
 
 
{
  int a=1;
  int i=0;
  int *p;
  p=&a;
  i-=*p;
  if(i==(-1))
    printf("*** M3ETRE17-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE17-05 *** N G ***\n");
}
 
 
 
{
  int a=2;
  int i=2;
  int *p;
  p=&a;
  i*=*p;
  if(i==4)
    printf("*** M3ETRE17-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE17-06 *** N G ***\n");
}
 
 
 
{
  int a=2;
  int i=2;
  int *p;
  p=&a;
  i/=*p;
  if(i==1)
    printf("*** M3ETRE17-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE17-07 *** N G ***\n");
}
 
 
 
{
  int a=2;
  int i=3;
  int *p;
  p=&a;
  i%=*p;
  if(i==1)
    printf("*** M3ETRE17-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE17-08 *** N G ***\n");
}
 
 
 
{
  int a=1;
  int i=2;
  int *p;
  p=&a;
  i>>=*p;
  if(i==1)
    printf("*** M3ETRE17-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE17-09 *** N G ***\n");
}
 
 
 
{
  int a=1;
  int i=2;
  int *p;
  p=&a;
  i<<=*p;
  if(i==4)
    printf("*** M3ETRE17-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE17-10 *** N G ***\n");
}
printf("*** M3ETRE17 *** MK3 TEST FOR X_TREEMK *** ENDED ***\n");
  }
 
 
int m3etre18()
  {
printf("\n* M3ETRE18 *** MK3 TEST FOR X_TREEMK *** STARTED *\n");
 
 
 
{
  int a=1;
  int i=2;
  int *p;
  p=&a;
  i&=*p;
  if(i==0)
    printf("*** M3ETRE18-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE18-01 *** N G ***\n");
}
 
 
 
{
  int a=1;
  int i=2;
  int *p;
  p=&a;
  i^=*p;
  if(i==3)
    printf("*** M3ETRE18-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE18-02 *** N G ***\n");
}
 
 
 
{
  int a=1;
  int i=2;
  int *p;
  p=&a;
  i|=*p;
  if(i==3)
    printf("*** M3ETRE18-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE18-03 *** N G ***\n");
}
 
 
 
{
  int a=1;
  int i=2;
  int *p;
  p=&a;
  i=*p;
  if(i==1)
    printf("*** M3ETRE18-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE18-04 *** N G ***\n");
}
 
 
 
{
  int i=0;
  int a=1;
  int *p;
  int **pp;
  p=&a;
  pp=&p;
  i=**pp;
  if(i==1)
    printf("*** M3ETRE18-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE18-05 *** N G ***\n");
}
 
 
 
{
  int i=0;
  int a=1;
  int *p;
  p=&a;
  i=-*p;
  if(i==-1)
    printf("*** M3ETRE18-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE18-06 *** N G ***\n");
}
 
 
 
{
  int i=1;
  int a=1;
  int *p;
  p=&a;
  i=!*p;
  if(i==0)
    printf("*** M3ETRE18-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE18-07 *** N G ***\n");
}
 
 
 
{
  int i=0;
  int a=0;
  int *p;
  p=&a;
  i=~*p;
  if(i==(-1))
    printf("*** M3ETRE18-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE18-08 *** N G ***\n");
}
 
 
 
{
  int i=0;
  int a=1;
  int *p;
  p=&a;
  i=i==0?*p:0;
  if(i==1)
    printf("*** M3ETRE18-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE18-09 *** N G ***\n");
}
 
 
 
{
  int i=0;
  int a=1;
  int *p;
  p=&a;
  i=i==1?0:*p;
  if(i==1)
    printf("*** M3ETRE18-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE18-10 *** N G ***\n");
}
printf("*** M3ETRE18 *** MK3 TEST FOR X_TREEMK *** ENDED ***\n");
  }
 
 
int m3etre19()
  {
printf("\n* M3ETRE19 *** MK3 TEST FOR X_TREEMK *** STARTED *\n");
 
 
 
{
  int i=0;
  int a=1;
  int *p;
  p=&a;
  i=(*p);
  if(i==1)
    printf("*** M3ETRE19-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE19-01 *** N G ***\n");
}
 
 
 
{
  int i=0;
  int a=1;
  int *p;
  p=&a;
  i=+*p;
  if(i==1)
    printf("*** M3ETRE19-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE19-02 *** N G ***\n");
}
 
 
 
{
  int i=0;
  int a=1;
  int *p;
  p=&a;
  i=++*p;
  if(i==2)
    printf("*** M3ETRE19-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE19-03 *** N G ***\n");
}
 
 
 
{
  int i=0;
  int a=1;
  int *p;
  p=&a;
  i=--*p;
  if(i==0)
    printf("*** M3ETRE19-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE19-04 *** N G ***\n");
}
 
 
 
{
  int i=0;
  int a=1;
  int *p;
  p=&a;
  --*p,*p+=2;
  if(*p==2)
    printf("*** M3ETRE19-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE19-05 *** N G ***\n");
}
 
 
 
{
  int i=0;
  int a=1;
  int *p;
  p=&a,*p=2;
  if(a==2)
    printf("*** M3ETRE19-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE19-05 *** N G ***\n");
}
 
 
 
{
  int i=0;
  i=3-1;
  if(i==2)
    printf("*** M3ETRE19-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE19-06 *** N G ***\n");
}
 
 
 
{
  int i=0,a=3,b=1;
  i=a-b;
  if(i==2)
    printf("*** M3ETRE19-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE19-07 *** N G ***\n");
}
 
 
 
{
  int i=1;
  -i;
  if(-i==-1)
    printf("*** M3ETRE19-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE19-08 *** N G ***\n");
}
 
 
 
{
  int i=1,a=3;
  i=0<-a;
  if(i==0)
    printf("*** M3ETRE19-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE19-09 *** N G ***\n");
}
 
 
 
{
  int i=1,a=3;
  i=0<=-a;
  if(i==0)
    printf("*** M3ETRE19-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE19-10 *** N G ***\n");
}
printf("*** M3ETRE19 *** MK3 TEST FOR X_TREEMK *** ENDED ***\n");
  }
 
 
int m3etre20()
  {
printf("\n* M3ETRE20 *** MK3 TEST FOR X_TREEMK *** STARTED *\n");
 
 
 
{
  int i=0,a=3;
  i=0>-a;
  if(i==1)
    printf("*** M3ETRE20-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE20-01 *** N G ***\n");
}
 
 
 
{
  int i=0,a=3;
  i=0>=-a;
  if(i==1)
    printf("*** M3ETRE20-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE20-02 *** N G ***\n");
}
 
 
 
{
  int i=1,a=3;
  i=0==-a;
  if(i==0)
    printf("*** M3ETRE20-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE20-03 *** N G ***\n");
}
 
 
 
{
  int i=0,a=3;
  i=0!=-a;
  if(i==1)
    printf("*** M3ETRE20-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE20-04 *** N G ***\n");
}
 
 
 
{
  int i=0,a=3;
  i=1&&-a;
  if(i==1)
    printf("*** M3ETRE20-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE20-05 *** N G ***\n");
}
 
 
 
{
  int i=0,a=3;
  i=0||-a;
  if(i==1)
    printf("*** M3ETRE20-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE20-06 *** N G ***\n");
}
 
 
 
{
  int i=0,a=3;
  i=a/-3;
  if(i==-1)
    printf("*** M3ETRE20-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE20-07 *** N G ***\n");
}
 
 
 
{
  int i=0,a=5;
  i=a%-3;
  if(i==2)
    printf("*** M3ETRE20-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE20-08 *** N G ***\n");
}
printf("*** M3ETRE20 *** MK3 TEST FOR X_TREEMK *** ENDED ***\n");
  }
 
 
int m3etre21()
  {
printf("\n* M3ETRE21 *** MK3 TEST FOR X_TREEMK *** STARTED *\n");
 
 
 
{
  int i=0,a=1;
  i=a ^ -a;
  if(i==-2)
    printf("*** M3ETRE21-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE21-01 *** N G ***\n");
}
 
 
 
{
  int i=0,a=1;
  i=a | -a;
  if(i==-1)
    printf("*** M3ETRE21-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE21-02 *** N G ***\n");
}
 
 
 
{
  int i=0,a=1;
  i=a & -a;
  if(i==1)
    printf("*** M3ETRE21-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE21-03 *** N G ***\n");
}
 
 
 
{
  int i=0,a=1;
  i=a * -a;
  if(i==-1)
    printf("*** M3ETRE21-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE21-04 *** N G ***\n");
}
 
 
 
{
  int i=0,a=1;
  i=a - -a;
  if(i==2)
    printf("*** M3ETRE21-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE21-05 *** N G ***\n");
}
 
 
 
{
  int i=1,a=1;
  i=a + -a;
  if(i==0)
    printf("*** M3ETRE21-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE21-06 *** N G ***\n");
}
 
 
 
{
  int i=0,a[2],b=-1;
  a[0]=4;
  a[1]=5;
  i=a[-b];
  if(i==5)
    printf("*** M3ETRE21-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE21-07 *** N G ***\n");
}
 
 
 
{
  int i=0,a=1;
  i+=-a;
  if(i==-1)
    printf("*** M3ETRE21-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE21-08 *** N G ***\n");
}
 
 
 
{
  int i=0,a=1;
  i-=-a;
  if(i==1)
    printf("*** M3ETRE21-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE21-09 *** N G ***\n");
}
 
 
 
{
  int i=1,a=1;
  i*=-a;
  if(i==-1)
    printf("*** M3ETRE21-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE21-10 *** N G ***\n");
}
printf("*** M3ETRE21 *** MK3 TEST FOR X_TREEMK *** ENDED ***\n");
  }
 
 
int m3etre22()
  {
printf("\n* M3ETRE22 *** MK3 TEST FOR X_TREEMK *** STARTED *\n");
 
 
 
{
  int i=1,a=1;
  i/=-a;
  if(i==-1)
    printf("*** M3ETRE22-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE22-01 *** N G ***\n");
}
 
 
 
{
  int i=1,a=1;
  i%=-a;
  if(i==0)
    printf("*** M3ETRE22-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE22-02 *** N G ***\n");
}
 
 
 
{
  int i=1,a=1;
  i&=-a;
  if(i==1)
    printf("*** M3ETRE22-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE22-03 *** N G ***\n");
}
 
 
 
{
  int i=1,a=1;
  i^=-a;
  if(i==-2)
    printf("*** M3ETRE22-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE22-04 *** N G ***\n");
}
 
 
 
{
  int i=1,a=1;
  i|=-a;
  if(i==-1)
    printf("*** M3ETRE22-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE22-05 *** N G ***\n");
}
 
 
 
{
  int i=1,a=1;
  i=-a;
  if(i==-1)
    printf("*** M3ETRE22-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE22-06 *** N G ***\n");
}
 
 
 
{
  int i=1;
  i=- -i;
  if(i==1)
    printf("*** M3ETRE22-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE22-07 *** N G ***\n");
}
 
 
 
{
  int i=1,a=1;
  i=!-a;
  if(i==0)
    printf("*** M3ETRE22-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE22-08 *** N G ***\n");
}
printf("*** M3ETRE22 *** MK3 TEST FOR X_TREEMK *** ENDED ***\n");
  }
 
 
int m3etre23()
  {
printf("\n* M3ETRE23 *** MK3 TEST FOR X_TREEMK *** STARTED *\n");
 
 
 
{
  int i=1,a=1;
  i=~-a;
  if(i==0)
    printf("*** M3ETRE23-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE23-01 *** N G ***\n");
}
 
 
 
{
  int i=1,a=1;
  i=(a==1)?-1:2;
  if(i==-1)
    printf("*** M3ETRE23-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE23-02 *** N G ***\n");
}
 
 
 
{
  int i=1,a=1;
  i=(a==0)?1:-2;
  if(i==-2)
    printf("*** M3ETRE23-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE23-03 *** N G ***\n");
}
 
 
 
{
  int i=1,a=1;
  i=(-a);
  if(i==-1)
    printf("*** M3ETRE23-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE23-04 *** N G ***\n");
}
 
 
 
{
  int i=1;
  + -1;
  if(+ -i==-1)
    printf("*** M3ETRE23-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE23-05 *** N G ***\n");
}
 
 
 
{
  int i=1,a=1;
  i=i++ -a;
  if(i==0)
    printf("*** M3ETRE23-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE23-06 *** N G ***\n");
}
 
 
 
{
  int i=1,a=1;
  i=i-- -a;
  if(i==0)
    printf("*** M3ETRE23-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE23-07 *** N G ***\n");
}
 
 
 
{
  int i=1,a=-2,b=0;
  b=(i=i+1,-i==a);
  if(b==1)
    printf("*** M3ETRE23-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE23-08 *** N G ***\n");
}
 
 
 
{
  int i=0;
  i=1+1;
  if(i==2)
    printf("*** M3ETRE23-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE23-09 *** N G ***\n");
}
 
 
 
{
  int i=0,a=1;
  i=a+a;
  if(i==2)
    printf("*** M3ETRE23-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE23-10 *** N G ***\n");
}
 
 
 
{
  int i=1;
  +i;
  if(1==+i)
    printf("*** M3ETRE23-11 *****     O    K     *****\n");
  else
    printf("*** M3ETRE23-11 *** N G ***\n");
}
 
 
 
{
  int i=0,a=1,b=2;
  i=a<+b;
  if(i==1)
    printf("*** M3ETRE23-12 *****     O    K     *****\n");
  else
    printf("*** M3ETRE23-12 *** N G ***\n");
}
printf("*** M3ETRE23 *** MK3 TEST FOR X_TREEMK *** ENDED ***\n");
  }
 
 
int m3etre24()
  {
printf("\n* M3ETRE24 *** MK3 TEST FOR X_TREEMK *** STARTED *\n");
 
 
 
{
  int i=0,a=1,b=2;
  i=a<=+b;
  if(i==1)
    printf("*** M3ETRE24-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE24-01 *** N G ***\n");
}
 
 
 
{
  int i=0,a=1,b=2;
  i=a>+b;
  if(i==0)
    printf("*** M3ETRE24-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE24-02 *** N G ***\n");
}
 
 
 
{
  int i=0,a=1,b=2;
  i=a>=+b;
  if(i==0)
    printf("*** M3ETRE24-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE24-03 *** N G ***\n");
}
 
 
 
{
  int i=0,a=1,b=2;
  i=a==+b;
  if(i==0)
    printf("*** M3ETRE24-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE24-04 *** N G ***\n");
}
 
 
 
{
  int i=0,a=1,b=2;
  i=a!=+b;
  if(i==1)
    printf("*** M3ETRE24-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE24-05 *** N G ***\n");
}
 
 
 
{
  int i=1,a=0,b=2;
  i=a&&+b;
  if(i==0)
    printf("*** M3ETRE24-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE24-06 *** N G ***\n");
}
 
 
 
{
  int i=1,a=1,b=2;
  i=a||+b;
  if(i==1)
    printf("*** M3ETRE24-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE24-07 *** N G ***\n");
}
 
 
 
{
  int i=1,a=2,b=2;
  i=a/+b;
  if(i==1)
    printf("*** M3ETRE24-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE24-08 *** N G ***\n");
}
 
 
 
{
  int i=1,a=2,b=2;
  i=a%+b;
  if(i==0)
    printf("*** M3ETRE24-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE24-09 *** N G ***\n");
}
 
 
 
{
  int i=1,a=2,b=2;
  i=a<<+b;
  if(i==8)
    printf("*** M3ETRE24-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE24-10 *** N G ***\n");
}
printf("*** M3ETRE24 *** MK3 TEST FOR X_TREEMK *** ENDED ***\n");
  }
 
 
int m3etre25()
  {
printf("\n* M3ETRE25 *** MK3 TEST FOR X_TREEMK *** STARTED *\n");
 
 
 
{
  int i=1,a=4,b=2;
  i=a>>+b;
  if(i==1)
    printf("*** M3ETRE25-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE25-01 *** N G ***\n");
}
 
 
 
{
  int i=1,a=4,b=2;
  i=a^+b;
  if(i==6)
    printf("*** M3ETRE25-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE25-02 *** N G ***\n");
}
 
 
 
{
  int i=1,a=4,b=2;
  i=a|+b;
  if(i==6)
    printf("*** M3ETRE25-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE25-03 *** N G ***\n");
}
 
 
 
{
  int i=1,a=4,b=2;
  i=a&+b;
  if(i==0)
    printf("*** M3ETRE25-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE25-04 *** N G ***\n");
}
 
 
 
{
  int i=1,a=4,b=2;
  i=a*+b;
  if(i==8)
    printf("*** M3ETRE25-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE25-05 *** N G ***\n");
}
 
 
 
{
  int i=1,a=4,b=2;
  i=a-+b;
  if(i==2)
    printf("*** M3ETRE25-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE25-06 *** N G ***\n");
}
 
 
 
{
  int i=1,a=4,b=2;
  i=a+ +b;
  if(i==6)
    printf("*** M3ETRE25-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE25-07 *** N G ***\n");
}
 
 
 
{
  int i=1,arr[2],b=0;
  arr[0]=3;
  i=arr[+b];
  if(i==3)
    printf("*** M3ETRE25-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE25-08 *** N G ***\n");
}
 
 
 
{
  int i=0,a=1;
  i+= +a;
  if(i==1)
    printf("*** M3ETRE25-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE25-09 *** N G ***\n");
}
 
 
 
{
  int i=0,a=1;
  i-= +a;
  if(i==-1)
    printf("*** M3ETRE25-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE25-10 *** N G ***\n");
}
printf("*** M3ETRE25 *** MK3 TEST FOR X_TREEMK *** ENDED ***\n");
  }
 
 
int m3etre26()
  {
printf("\n* M3ETRE26 *** MK3 TEST FOR X_TREEMK *** STARTED *\n");
 
 
 
{
  int i=0,a=1;
  i*= +a;
  if(i==0)
    printf("*** M3ETRE26-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE26-01 *** N G ***\n");
}
 
 
 
{
  int i=0,a=1;
  i/= +a;
  if(i==0)
    printf("*** M3ETRE26-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE26-02 *** N G ***\n");
}
 
 
 
{
  int i=3;
  int a=2;
  i %= a;
  if(i==1)
    printf("*** M3ETRE26-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE26-03 *** N G ***\n");
}
 
 
 
{
  int i=2,a=1;
  i>>= +a;
  if(i==1)
    printf("*** M3ETRE26-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE26-04 *** N G ***\n");
}
 
 
 
{
  int i=2,a=1;
  i<<= +a;
  if(i==4)
    printf("*** M3ETRE26-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE26-05 *** N G ***\n");
}
 
 
 
{
  int i=2,a=1;
  i&= +a;
  if(i==0)
    printf("*** M3ETRE26-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE26-06 *** N G ***\n");
}
 
 
 
{
  int i=2,a=1;
  i^= +a;
  if(i==3)
    printf("*** M3ETRE26-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE26-07 *** N G ***\n");
}
 
 
 
{
  int i=2,a=1;
  i|= +a;
  if(i==3)
    printf("*** M3ETRE26-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE26-08 *** N G ***\n");
}
 
 
 
{
  int i=2,a=1;
  i= +a;
  if(i==1)
    printf("*** M3ETRE26-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE26-09 *** N G ***\n");
}
 
 
 
{
  int i=2,a=1;
  i= -+a;
  if(i==-1)
    printf("*** M3ETRE26-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE26-10 *** N G ***\n");
}
printf("*** M3ETRE26 *** MK3 TEST FOR X_TREEMK *** ENDED ***\n");
  }
 
 
int scpva01() {
 struct tag1 {
    signed char          sc;
  unsigned char          usc;
    signed short int     ssi;
  unsigned short int     usi;
    signed long int      sli;
  unsigned long int      uli;
    signed long long int slli;
  unsigned long long int ulli;
           float    fl;
           double   du;
      long double   ldu;
           char     ch[3];
      wchar_t       lch;
 }s={'a','b',1,2,3,4,5,6,1.0,2.0,3.0,"xyz",L'a'};
 printf("*** SCPVA01 TEST START ***\n");
 if (s.sc == 'a')
      { printf("  ## SIGNED CHAR TEST OK            ##\n"); }
 else { printf(" ** SIGNED CHAR TEST NG            **\n"); }
 if (s.usc == 'b')
      { printf(" ** UNSIGNED CHAR TEST OK          **\n"); }
 else { printf("  ## UNSIGNED CHAR TEST NG          ##\n"); }
 if (s.ssi == 1)
      { printf(" ** SIGNED SHORT INT TEST OK       **\n"); }
 else { printf("  ## SIGNED SHORT INT TEST NG       ##\n"); }
 if (s.usi == 2)
      { printf(" ** UNSIGNED SHORT INT TEST OK     **\n"); }
 else { printf("  ## UNSIGNED SHORT INT TEST NG     ##\n"); }
 if (s.sli == 3)
      { printf(" ** SIGNED LONG INT TEST OK        **\n"); }
 else { printf("  ## SIGNED LONG INT TEST NG        ##\n"); }
 if (s.uli == 4)
      { printf(" ** UNSIGNED LOND INT TEST OK      **\n"); }
 else { printf("  ## UNSIGNED LOND INT TEST NG      ##\n"); }
 if (s.slli == 5)
      { printf(" ** SIGNED LONG LONG INT TEST OK   **\n"); }
 else { printf("  ## SIGNED LONG LONG INT TEST NG   ##\n"); }
 if (s.ulli == 6)
      { printf(" ** UNSIGNED LONG LONG INT TEST OK **\n"); }
 else { printf("  ## UNSIGNED LONG LONG INT TEST NG ##\n"); }
 if (s.fl == 1.0)
      { printf(" ** FLOAT TEST OK                  **\n"); }
 else { printf("  ## FLOAT TEST NG                  ##\n"); }
 if (s.du == 2.0)
      { printf(" ** DOUBLE TEST OK                 **\n"); }
 else { printf("  ## DOUBLE TEST NG                 ##\n"); }
 if (s.ldu == 3.0)
      { printf(" ** LONG DOUBLE TEST OK            **\n"); }
 else { printf("  ## LONG DOUBLE TEST NG            ##\n"); }
 if (0 == memcmp(s.ch,"xyz",3))
      { printf(" ** CHAR*N TEST OK                 **\n"); }
 else { printf("  ## CHAR*N TEST NG                 ##\n"); }
 if (s.lch == L'a')
      { printf(" ** LONG CHAR TEST OK              **\n"); }
 else { printf("  ## LONG CHAR TEST NG              ##\n"); }
 printf("*** SCPVA01 TEST END   ***\n");
}
