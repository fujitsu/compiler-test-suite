#include <stdlib.h>
#include <math.h>
#include <string.h>
  
 
 
 
 
 
 

#include <stdio.h>
#include <setjmp.h>
int sub1a(int i_dum, int *i1, int *j1);
int sub1();
int sub2();
int kan();
int m3mpjp01();
int m3etre43();
int m3etre42();
int m3etre41();
int m3etre40();
int m3etre39();
int m3etre38();
int m3etre37();
int m3mptr05();
int m3mptr04();
int m3mptr03();
int m3mptr02();
int m3mptr01();
int m3mpjp00();
int m3mpyt05();
int m3mpyt04();
int m3mpyt03();
int m3mpyt02();
int main()
{
    printf("*** \n");
    m3mpyt02();
    m3mpyt03();
    m3mpyt04();
    m3mpyt05();
    m3mpjp00();
    m3mpjp01();
    m3mptr01();
    m3mptr02();
    m3mptr03();
    m3mptr04();
    m3mptr05();
    m3etre37();
    m3etre38();
    m3etre39();
    m3etre40();
    m3etre41();
    m3etre42();
    m3etre43();
    printf("\n*** \n");
exit (0);
}

struct numlist
  {
   int number ;
   struct numlist *benum ;
   struct numlist *afnum ;
  } ;
   int indata[10];
   int n ;
int inputdata(struct numlist *justnum, struct numlist *updatad);
int dataout(struct numlist *justnum);
int m3mpyt02()
{
   struct numlist listar[50] ;
   struct numlist *startad ;
   struct numlist *updatad ;
   static int allnum[10]={1,2,3,4,5,6,7,8,9,10} ;
   int result ;
   int i ;
       indata[0]=5 ;
       indata[1]=8 ;
       indata[2]=2 ;
       indata[3]=9 ;
       indata[4]=6 ;
       indata[5]=10;
       indata[6]=1 ;
       indata[7]=7 ;
       indata[8]=3 ;
       indata[9]=4 ;
   startad=listar ;
   printf ("\n** sort *****\n");
   startad->number=indata[0] ;
   startad->benum=0 ;
   startad->afnum=0 ;
   updatad=listar ;
   i=1 ;
   while (i<=9)
         {
          updatad=updatad+1 ;
          updatad->number=indata[i] ;
          updatad->benum=0 ;
          updatad->afnum=0 ;
          inputdata (startad,updatad);
          i++ ;
         }
   n=0 ;
   dataout (startad);
   if(memcmp(indata,allnum,40)==0)
     {
       printf ("***** ok *****\n");
     }
   else
     {
       printf ("***** ng *****\n");
      }
   return 0;
}
int inputdata(struct numlist *justnum, struct numlist *updatad)
{
   if (justnum->number > updatad->number)
  {
     if (justnum->benum==0)
       justnum->benum=updatad ;
     else
       inputdata (justnum->benum,updatad);
   }
    else
      {
        if (justnum->afnum==0)
            justnum->afnum=updatad ;
        else
            inputdata (justnum->afnum,updatad);
       }
   return 0;
}
 int dataout(struct numlist *justnum)
{
if (justnum->benum!=0)
    dataout (justnum->benum);
printf ("value:- %d -\n",justnum->number);
indata[n] = justnum->number ;
n++ ;
if (justnum->afnum!=0)
    dataout (justnum->afnum);
 return 0;
}
struct sort
{
   int data ;
   struct sort *head ;
} ;
int relative(struct sort *now, struct sort *add);
 int m3mpyt03()
{
   struct sort num[50] ;
   struct sort *first ;
   struct sort *last ;
   static int allnum[20]={0,1,2,3,4,5,6,7,8,9,10,20,
                           30,40,50,60,70,80,90,100};
   int nums[20] ;
   int n ;
   int i ;
   nums[0]=100 ;
   nums[1]=6 ;
   nums[2]=30 ;
   nums[3]=10 ;
   nums[4]=2 ;
   nums[5]=0 ;
   nums[6]=4 ;
   nums[7]=40 ;
   nums[8]=7 ;
   nums[9]=80 ;
   nums[10]=3 ;
   nums[11]=50 ;
   nums[12]=1 ;
   nums[13]=90 ;
   nums[14]=20 ;
   nums[15]=9 ;
   nums[16]=70 ;
   nums[17]=8 ;
   nums[18]=60 ;
   nums[19]=5 ;
   first=num ;
   last=num ;
   first->data=nums[0] ;
   first->head=0 ;
   i=1;
   printf ("\n***** sort *****\n");
   while (i<=19)
      {
         last++ ;
         last->head=0 ;
         last->data=nums[i] ;
         if (first->data > last->data)
           {
             last->head=first ;
             first=last;
           }
         else
             relative (first,last);
         i++;
       }
    n=0;
    while (first != 0)
       {
         printf ("***** list data : %2d\n",first->data );
         nums[n]=first->data ;
         first=first->head ;
         n++;
       }
   if (memcmp(nums,allnum,80)==0)
        printf ("***** ok *****\n");
   else
        printf ("***** ng *****\n");
   return 0;
}
int relative(struct sort *now, struct sort *add)
{
    if ((now->head->data)<(add->data) && now->head!=0)
      {
        relative (now->head,add);
      }
    else
     {
        add->head=now->head;
        now->head=add ;
     }
    return 0;
}
struct homerun
{
   int some[3];
   int hit;
   int str;
   int total;
};
  struct homerun hit[50];
  struct homerun *sno;
  int n,i,j,hs,h,c,demo,d,e;
  static int nums[3]={7,2,5};
  int table[3];
  int strnum[3];
  int hitnum[3];
 int m3mpyt04()
{
  d=1;
  sno=hit;
  i=0;
  c=0;
  hs=0;
  n=0;
  while(i<=2){
    if(hs==3){
      break;
    }
    table[0]=d;
    table[1]=d+1;
    table[2]=d+2;
    kan();
    i++;
    d=d+3;
  }
  if(hs!=3){
    table[c]=0;
    c++;
  }
  while(h<=2){
    switch(c){
      case 0:break;
      case 1:
               switch(n){
               case 1:table[2]=strnum[0];
                        table[0]=hitnum[0];
                        table[1]=hitnum[1];
                        break;
               case 2:table[1]=strnum[0];
                        table[0]=hitnum[0];
                        table[2]=hitnum[2];
                        break;
               case 3:table[0]=strnum[0];
                        table[1]=hitnum[1];
                        table[2]=hitnum[2];
                        break;
               }
      break;
      case 2:
               switch(n){
               case 0:table[2]=strnum[1];
                        table[1]=strnum[2];
                        table[0]=hitnum[0];
                        break;
               case 1:table[0]=strnum[2];
                        table[2]=strnum[0];
                        table[1]=hitnum[1];
                        break;
               case 2:table[0]=strnum[1];
                        table[1]=strnum[0];
                        table[2]=hitnum[2];
                        break;
               }
      break;
      case 3:table[1]=strnum[0];
               table[2]=strnum[1];
               table[0]=strnum[2];
      }
      n=0;
      c=0;
      hs=0;
      kan();
  }
  if(memcmp(nums,hitnum,12)==0)
    printf("\n***** ok *****\n");
  else
    printf("***** ng *****\n");
  return 0;
}
 int kan()
{
  h=0;
  sno->some[0]=table[0];
  sno->some[1]=table[1];
  sno->some[2]=table[2];
  sno->hit=0;
  sno->str=0;
  sno->total=0;
  e=0;
  while(e<=2){
    if(nums[e]==sno->some[e]) {
      sno->hit++;
      hitnum[e]=sno->some[e];
      n=n+e;
      h++;
    }
    j=0;
    while(j<=2){
      if(nums[e]==sno->some[j] && e!=j) {
        sno->str++;
        strnum[c]=sno->some[j];
        c++;
      }
      j++;
    }
    e++;
  }
  sno->total=sno->hit+sno->str;
  hs=hs+sno->total;
  sno++;
  return 0;
}
 int m3mpyt05()
{
 int calen[42][12];
 int a,b,d,e,f,work1,work2,work3,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10;
 int i11,i12,i13,i14,i15,i16,i17,i18,i19,i20,i21;
 static int tsuk[12]={31,28,31,30,31,30,31,31,30,31,30,31};
 static int year[11]={1989,2000,-12,1,1990,1991,1992,
                  1993,20001,2001,2000};
 static char *month[]={" january ","february "," march  ",
 "  april  ","   may   ","  june   ","  july   "," august  ",
 "september"," october ","novenber ","december "};
 static char week[]={"su mo tu we th fr sa"};
 static char *hi[]={"  "," 1"," 2"," 3"," 4"," 5"," 6"," 7"," 8",
 " 9","10","11","12","13","14","15","16","17","18","19","20","21",
 "22","23","24","25","26","27","28","29","30","31"};

  d=0;
  while(d<=10){
    a=0;
    while(a<=11){
      b=0;
      while(b<=41){
        calen[b][a]=0;
        b++;
     }
     a++;
    }
    if(year[d] < 0){
      printf("don't print  %d   calender \n",year[d]);
      printf("don't make beforechrist calender \n");
      d++;
      continue;
    }
    else
      if(year[d]>9999){
        printf("don't print %d  calender \n",year[d]);
        printf("input 0<year>9999 \n");
        d++;
        continue;
      }
    if((year[d]%4==0)&&(year[d]%100!=0)&&
      (year[d]%400==0)&&(year[d]%2000!=0))
      tsuk[1]=29;
    work1=year[d]-1;
    work2=work1%100;
    work3=work1/100;
    e=(284/10)+work2+(work2/4)+(work3/4)-2*work3;
    f=e%7;
    a=0;
    while(a<=11){
      b=0;
      while(b<=tsuk[a]){
        calen[b+f][a]=b;
        b++;
      }
      f=(tsuk[a]+f)%7;
      a++;
   }
   printf("\n      * * * * * * * * * *      %4d  ",year[d]);
   printf("calendar      * * * * * * * * * * \n");
   a=0;
   while(a<=11){
     printf("%20s%25s%25s\n",month[a],month[a+1],month[a+2]);
     printf("%25s%25s%25s\n",week,week,week);
     b=0;
     while(b<=41){
        i1=calen[b][a];
        i2=calen[b+1][a];
        i3=calen[b+2][a];
        i4=calen[b+3][a];
        i5=calen[b+4][a];
        i6=calen[b+5][a];
        i7=calen[b+6][a];
        i8=calen[b][a+1];
        i9=calen[b+1][a+1];
        i10=calen[b+2][a+1];
        i11=calen[b+3][a+1];
        i12=calen[b+4][a+1];
        i13=calen[b+5][a+1];
        i14=calen[b+6][a+1];
        i15=calen[b][a+2];
        i16=calen[b+1][a+2];
        i17=calen[b+2][a+2];
        i18=calen[b+3][a+2];
        i19=calen[b+4][a+2];
        i20=calen[b+5][a+2];
        i21=calen[b+6][a+2];
        printf("%7s%3s%3s%3s%3s%3s%3s",hi[i1],hi[i2],hi[i3],
               hi[i4],hi[i5],hi[i6],hi[i7]);
        printf("%7s%3s%3s%3s%3s%3s%3s",hi[i8],hi[i9],hi[i10],
               hi[i11],hi[i12],hi[i13],hi[i14]);
        printf("%7s%3s%3s%3s%3s%3s%3s\n",hi[i15],hi[i16],hi[i17],
               hi[i18],hi[i19],hi[i20],hi[i21]);
        b=b+7;
     }
     a=a+3;
   }
   d++;
}
  if(hi[i21]==hi[0])
    printf(" *****     calendar program ok     *****\n");
  else
    printf(" *****     calendar program ng     *****\n");
  return 0;
}
  
 jmp_buf     env_area;
 static int  int1,int2;

 int m3mpjp00()
 {
   int1=1;
   int2=2;
   switch (setjmp(env_area)) {
     case 0: if((int1==1)&&(int2==2))
             {
               printf("\ntest-1 ok \n");
             }
             else
             {
               printf("test-1 ng. int1=%d,int2=%d\n",int1,int2);
             }
             goto l1;
     case 1: if((int1==10)&&(int2==20))
             {
               printf("test-2 ok \n");
             }
             else
             {
               printf("test-2 ng. int1=%d,int2=%d\n",int1,int2);
             }
             goto l2;
     case 2: if((int1==100)&&(int2==200))
             {
               printf("test-3 ok \n");
             }
             else
             {
               printf("test-3 ng. int1=%d,int2=%d\n",int1,int2);
             }
             return 0;
     }
 l1: ;
   sub1();
 l2: ;
   sub2();
   return 0;
 }

 int  sub1()
 {
   int1=10;
   int2=20;
   longjmp(env_area,1);
   return 0;
 }

 int  sub2()
 {
   int1=100;
   int2=200;
   longjmp(env_area,2);
   return 0;
 }
  
 jmp_buf  env_area;
 extern int  int1,int2;
 int      err_cnt,i,j,k;
 int      int_ar1[10] = {0,1,2,3,4,5,6,7,8,9};
 int      int_ar2[10];                             
 int      int_ans[10] = {0,1,2,3,4,8,6,7,8,9};   

 int m3mpjp01()
 {
   printf("m3mpjp01 start\n");
   for (i=0,j=0;j<10;i++,j++)
   {
     int1=int_ar1[i];
     int2=setjmp(env_area);
     int_ar2[j]=int_ar1[i];
     if (int2 == 1)
     {
       goto l1;
     }
   }
   sub1a(int1,&i,&j);
 l1:;
   err_cnt=0;
   for (k=0;k<10;k++)
   {
     if (int_ar2[k] != int_ans[k])
     {
       printf("***ng*** int_ar2(%d)=%d, right_value=%d\n",
              k,int_ar2[k],int_ans[k]);
       err_cnt++;
     }
   }
   if (err_cnt == 0)
   {
     printf("**** ok ****\n");
   }
   printf("m3mpjp01 end\n");
   return 0;
 }
 int sub1a(int i_dum, int *i1, int *j1)
 {
   *i1=8;
   *j1=5;
   longjmp(env_area,1);
   return 0;
 }
 
 
 int m3mptr01()
{
  int flag=0;
  int i=0;
  int c=3;
  int hs=3;
  while(1){
    if(i==2){
      flag=1;
      goto switches ;
    }
    i++;
  }
  switches:;
  flag++;
  switch(c){
    case 0:break;
    case 1:
           break;
    case 2:
           break;
    case 3:
           flag++;
           break;
    }
  if(flag==3)
    printf("***** ok *****\n");
  else
    printf("***** ng *****\n");
  return 0;
}
 
 
 int m3mptr02()
{
  int a=0,b=0,c,d,e,f,flag=0;
  c=25;
  a=10;
  c=35;
  a=5;
  d=100;
  d=200;
  e=300;
  e=400;
  f=60;
  f=80;
  flag=0;
  if(a!=c){
    flag=1;
  }
  if(b<=b){
    if(c>=a){
    b=e;
    flag++;
    }
  }
  if(b==b){
    b=f;
    flag++;
  }
  a=2000;
  b=5000;
  c=10000;
  d=100;
  e=300;
  f=60;
  if(flag==3){
    printf("*****  ok  *****\n");
  }
  else {
    printf("*****  ng  *****\n");
  }
  return 0;
}
 
 
 int m3mptr03()
{
  int flag=0;
  int a,b=0,c=0,d,e,f=0;
  a=10;
  a=15;
  d=30;
  d=5;
  if(a!=20){
    flag++;
  }
  if((a>5) ||(d<50)){
    a=b+f;
    flag++;
  }
  else {
    a=c+f;
    flag++;
  }
  if(flag==2){
    printf("*****   ok   *****\n");
  }
  else {
    printf("*****   ng   *****\n");
  }
  d=20;
  e=30;
  b=55;
  c=60;
  a=100;
  f=200;
  return 0;
}
 
 
 int m3mptr04()
{
  int flag=0;
  int i,c,a,b;
  a=20;
  b=53;
  a=3;
  b=1;
  c=60;
  c=3;
  i=0;
  while(1){
    if(i==2){
      flag=1;
      goto switches ;
    }
    i++;
  }
  switches:;
  for(i=0 ; i<5 ; i++){
    if(i<4){
      continue;
    }
    flag++;
  }
  flag++;
  switch(c){
    case 0:
           b=a;
           break;
    case 1:
           if(b>10)
           break;
    case 2:
           break;
    case 3:
           flag++;
           if(c<120){
             flag++;
           }
           break;
    }
  if(b<3){
    flag++;
    if(flag>10){
    }
    else {
      flag++;
    }
  }
  a=2;
  b=50;
  c=333;
  if(flag==7)
    printf("***** ok *****\n");
  else
    printf("***** ng *****\n");
  return 0;
}
 
 
 int m3mptr05()
{
  int a,b,c,d,e,i,j,flag=0;
  i=0;
  a=0;
  a=2;
  c=5;
  if(c>=5){
  }
  while(i<3){
    j=0;
    while(j<=2){
      b=a+j;
      flag++;
      j++;
    }
    flag--;
    i++;
  }
  if(flag==6){
    printf("*****   ok   *****\n");
  }
  else {
    printf("*****   ng   *****\n");
  }
  a=20;
  b=30;
  return 0;
}
 
 
 
 
 int m3etre37()
  {
printf("\n* M3ETRE37 *** MK3 TEST FOR X_TREEMK *** STARTED *\n");
 
 
 
{
  int i=0,a=1,b=-2;
  i=b<=~a;
  if(i==1)
    printf("*** M3ETRE37-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE37-01 *** N G ***\n");
}
 
 
 
{
  int i=1,a=1,b=-2;
  i=b>~a;
  if(i==0)
    printf("*** M3ETRE37-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE37-02 *** N G ***\n");
}
 
 
 
{
  int i=0,a=1,b=-2;
  i=b>=~a;
  if(i==1)
    printf("*** M3ETRE37-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE37-03 *** N G ***\n");
}
 
 
 
{
  int i=0,a=1,b=-2;
  i=b==~a;
  if(i==1)
    printf("*** M3ETRE37-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE37-04 *** N G ***\n");
}
 
 
 
{
  int i=1,a=1,b=-2;
  i=b!=~a;
  if(i==0)
    printf("*** M3ETRE37-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE37-05 *** N G ***\n");
}
 
 
 
{
  int i=2,a=1,b=1;
  i=b&&~a;
  if(i==1)
    printf("*** M3ETRE37-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE37-06 *** N G ***\n");
}
 
 
 
{
  int i=2,a=1,b=0;
  i=b||~a;
  if(i==1)
    printf("*** M3ETRE37-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE37-07 *** N G ***\n");
}
 
 
 
{
  int i=0,a=1,b=6;
  i=b/~a;
  if(i==-3)
    printf("*** M3ETRE37-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE37-08 *** N G ***\n");
}
 
 
 
{
  int i=0,a=1,b=5;
  i=b%~a;
  if(i==1)
    printf("*** M3ETRE37-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE37-09 *** N G ***\n");
}
 
 
 
{
  int i=0,a=-2,b=1;
  i=b<<~a;
  if(i==2)
    printf("*** M3ETRE37-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE37-10 *** N G ***\n");
}
printf("*** M3ETRE37 *** MK3 TEST FOR X_TREEMK *** ENDED ***\n");
return 0;
}
 
 
 
 
 int m3etre38()
  {
printf("\n*** M3ETRE38 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
 
 
 
{
  int i=0,a=-2,b=2;
  i=b>>~a;
  if(i==1)
    printf("*** M3ETRE38-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE38-01 *** N G ***\n");
}
 
 
 
{
  int i=0,a=-2,b=1;
  i=b^~a;
  if(i==0)
    printf("*** M3ETRE38-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE38-02 *** N G ***\n");
}
 
 
 
{
  int i=0,a=-2,b=1;
  i=b|~a;
  if(i==1)
    printf("*** M3ETRE38-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE38-03 *** N G ***\n");
}
 
 
 
{
  int i=0,a=-2,b=1;
  i=b&~a;
  if(i==1)
    printf("*** M3ETRE38-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE38-04 *** N G ***\n");
}
 
 
 
{
  int i=0,a=1,b=1;
  i=b*~a;
  if(i==-2)
    printf("*** M3ETRE38-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE38-05 *** N G ***\n");
}
 
 
 
{
  int i=0,a=1,b=1;
  i=b-~a;
  if(i==3)
    printf("*** M3ETRE38-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE38-06 *** N G ***\n");
}
 
 
 
{
  int i=0,a=1,b=1;
  i=b+~a;
  if(i==-1)
    printf("*** M3ETRE38-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE38-07 *** N G ***\n");
}
 
 
 
{
  int i=0,a=-2,b=1;
  static int arr[]={1,2,3};
  i=arr[~a];
  if(i==2)
    printf("*** M3ETRE38-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE38-08 *** N G ***\n");
}
 
 
 
{
  int i=1,a=1;
  i+=~a;
  if(i==-1)
    printf("*** M3ETRE38-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE38-09 *** N G ***\n");
}
 
 
 
{
  int i=1,a=1;
  i-=~a;
  if(i==3)
    printf("*** M3ETRE38-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE38-10 *** N G ***\n");
}
printf("*** M3ETRE38 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
return 0;
  }
 
 
 
 
 int m3etre39()
  {
printf("\n*** M3ETRE39 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
 
 
 
{
  int i=1,a=1;
  i*=~a;
  if(i==-2)
    printf("*** M3ETRE39-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE39-01 *** N G ***\n");
}
 
 
 
{
  int i=4,a=1;
  i/=~a;
  if(i==-2)
    printf("*** M3ETRE39-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE39-02 *** N G ***\n");
}
 
 
 
{
  int i=5,a=1;
  i%=~a;
  if(i==1)
    printf("*** M3ETRE39-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE39-03 *** N G ***\n");
}
 
 
 
{
  int i=4,a=-2;
  i>>=~a;
  if(i==2)
    printf("*** M3ETRE39-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE39-04 *** N G ***\n");
}
 
 
 
{
  int i=4,a=-2;
  i<<=~a;
  if(i==8)
    printf("*** M3ETRE39-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE39-05 *** N G ***\n");
}
 
 
 
{
  int i=4,a=-2;
  i&=~a;
  if(i==0)
    printf("*** M3ETRE39-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE39-06 *** N G ***\n");
}
 
 
 
{
  int i=4,a=-2;
  i^=~a;
  if(i==5)
    printf("*** M3ETRE39-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE39-07 *** N G ***\n");
}
 
 
 
{
  int i=4,a=-2;
  i|=~a;
  if(i==5)
    printf("*** M3ETRE39-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE39-08 *** N G ***\n");
}
 
 
 
{
  int i=4,a=-2;
  i=~a;
  if(i==1)
    printf("*** M3ETRE39-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE39-09 *** N G ***\n");
}
 
 
 
{
  int i=4,a=-2;
  i=-~a;
  if(i==-1)
    printf("*** M3ETRE39-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE39-10 *** N G ***\n");
}
printf("*** M3ETRE39 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
 return 0;
  }
 
 
 
 
 int m3etre40()
  {
printf("\n*** M3ETRE40 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
 
 
 
{
  int i=4,a=-2;
  i=(i==4)?~a:0;
  if(i==1)
    printf("*** M3ETRE40-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE40-01 *** N G ***\n");
}
 
 
 
{
  int i=4,a=-2;
  i=(i==5)?0:~a;
  if(i==1)
    printf("*** M3ETRE40-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE40-02 *** N G ***\n");
}
 
 
 
{
  int i=4,a=-2;
  i=(~a);
  if(i==1)
    printf("*** M3ETRE40-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE40-03 *** N G ***\n");
}
 
 
 
{
  int i=4,a=-2;
  i=+~a;
  if(i==1)
    printf("*** M3ETRE40-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE40-04 *** N G ***\n");
}
 
 
 
{
  int i=4,a=-3;
  i=(++a,~a);
  if(i==1)
    printf("*** M3ETRE40-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE40-05 *** N G ***\n");
}
 
 
 
{
  int i=4,a=-3;
  if(i==sizeof(int))
    printf("*** M3ETRE40-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE40-06 *** N G ***\n");
}
 
 
 
{
  int i=4;
  i=i<sizeof(int);
  if(i==0)
    printf("*** M3ETRE40-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE40-07 *** N G ***\n");
}
 
 
 
{
  int i=4;
  i=i<=sizeof(int);
  if(i==1)
    printf("*** M3ETRE40-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE40-08 *** N G ***\n");
}
 
 
 
{
  int i=4;
  i=i>sizeof(int);
  if(i==0)
    printf("*** M3ETRE40-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE40-09 *** N G ***\n");
}
 
 
 
{
  int i=4;
  i=i>=sizeof(int);
  if(i==1)
    printf("*** M3ETRE40-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE40-10 *** N G ***\n");
}
printf("*** M3ETRE40 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
return 0;
  }
 
 
 
 
 int m3etre41()
  {
printf("\n*** M3ETRE41 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
 
 
 
{
  int i=4;
  i=i==sizeof(int);
  if(i==1)
    printf("*** M3ETRE41-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE41-01 *** N G ***\n");
}
 
 
 
{
  int i=4;
  i=i!=sizeof(int);
  if(i==0)
    printf("*** M3ETRE41-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE41-02 *** N G ***\n");
}
 
 
 
{
  int i=4;
  i=i&&sizeof(int);
  if(i==1)
    printf("*** M3ETRE41-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE41-03 *** N G ***\n");
}
 
 
 
{
  int i=4;
  i=i||sizeof(int);
  if(i==1)
    printf("*** M3ETRE41-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE41-04 *** N G ***\n");
}
 
 
 
{
  int i=4;
  i=i/sizeof(int);
  if(i==1)
    printf("*** M3ETRE41-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE41-05 *** N G ***\n");
}
 
 
 
{
  int i=4;
  i=i%sizeof(int);
  if(i==0)
    printf("*** M3ETRE41-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE41-06 *** N G ***\n");
}
 
 
 
{
  int i=1;
  i=i<<sizeof(int);
  if(i==16)
    printf("*** M3ETRE41-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE41-07 *** N G ***\n");
}
 
 
 
{
  int i=16;
  i=i>>sizeof(int);
  if(i==1)
    printf("*** M3ETRE41-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE41-08 *** N G ***\n");
}
 
 
 
{
  int i=4;
  i=i^sizeof(int);
  if(i==0)
    printf("*** M3ETRE41-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE41-09 *** N G ***\n");
}
 
 
 
{
  int i=4;
  i=i|sizeof(int);
  if(i==4)
    printf("*** M3ETRE41-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE41-10 *** N G ***\n");
}
printf("*** M3ETRE41 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
return 0;
  }
 
 
 
 
 int m3etre42()
  {
printf("\n*** M3ETRE42 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
 
 
 
{
  int i=4;
  i=i&sizeof(int);
  if(i==4)
    printf("*** M3ETRE42-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE42-01 *** N G ***\n");
}
 
 
 
{
  int i=4;
  i=i*sizeof(int);
  if(i==16)
    printf("*** M3ETRE42-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE42-02 *** N G ***\n");
}
 
 
 
{
  int i=4;
  i=i-sizeof(int);
  if(i==0)
    printf("*** M3ETRE42-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE42-03 *** N G ***\n");
}
 
 
 
{
  int i=4;
  i=i+sizeof(int);
  if(i==8)
    printf("*** M3ETRE42-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE42-04 *** N G ***\n");
}
 
 
 
{
  int i=4;
  static int arr[]={1,2,3,4,5,6};
  i=arr[sizeof(int)];
  if(i==5)
    printf("*** M3ETRE42-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE42-05 *** N G ***\n");
}
 
 
 
{
  int i=4;
  i+=sizeof(int);
  if(i==8)
    printf("*** M3ETRE42-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE42-06 *** N G ***\n");
}
 
 
{
  int i=4;
  i-=sizeof(int);
  if(i==0)
    printf("*** M3ETRE42-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE42-07 *** N G ***\n");
}
 
 
{
  int i=4;
  i*=sizeof(int);
  if(i==16)
    printf("*** M3ETRE42-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE42-08 *** N G ***\n");
}
 
 
{
  int i=4;
  i/=sizeof(int);
  if(i==1)
    printf("*** M3ETRE42-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE42-09 *** N G ***\n");
}
 
 
{
  int i=4;
  i%=sizeof(int);
  if(i==0)
    printf("*** M3ETRE42-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE42-10 *** N G ***\n");
}
printf("*** M3ETRE42 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
return 0;
  }
 
 
 
 
 int m3etre43()
  {
printf("\n*** M3ETRE43 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
 
 
 
{
  int i=16;
  i>>=sizeof(int);
  if(i==1)
    printf("*** M3ETRE43-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE43-01 *** N G ***\n");
}
 
 
 
{
  int i=1;
  i<<=sizeof(int);
  if(i==16)
    printf("*** M3ETRE43-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE43-02 *** N G ***\n");
}
 
 
 
{
  int i=1;
  i&=sizeof(int);
  if(i==0)
    printf("*** M3ETRE43-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE43-03 *** N G ***\n");
}
 
 
 
{
  int i=1;
  i^=sizeof(int);
  if(i==5)
    printf("*** M3ETRE43-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE43-04 *** N G ***\n");
}
 
 
 
{
  int i=1;
  i|=sizeof(int);
  if(i==5)
    printf("*** M3ETRE43-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE43-05 *** N G ***\n");
}
 
 
 
{
  int i=1;
  i=sizeof(int);
  if(i==4)
    printf("*** M3ETRE43-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE43-06 *** N G ***\n");
}
 
 
 
{
  int i=1;
  i=-sizeof(int);
  if(i==-4)
    printf("*** M3ETRE43-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE43-07 *** N G ***\n");
}
 
 
 
{
  int i=1;
  i=(i==1)?sizeof(int):0;
  if(i==4)
    printf("*** M3ETRE43-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE43-08 *** N G ***\n");
}
 
 
 
{
  int i=1;
  i=(i==2)?0:sizeof(int);
  if(i==4)
    printf("*** M3ETRE43-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE43-09 *** N G ***\n");
}
 
 
 
{
  int i=1;
  i=(sizeof(int));
  if(i==4)
    printf("*** M3ETRE43-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE43-10 *** N G ***\n");
}
printf("*** M3ETRE43 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
return 0;
}
