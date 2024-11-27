#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int main()
{
 int calen[42][12];
 int a,b,d,e,f,work1,work2,work3,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10;
 int i11,i12,i13,i14,i15,i16,i17,i18,i19,i20,i21;
 static int days[12]={31,28,31,30,31,30,31,31,30,31,30,31};
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
        printf("input 0 9999 \n");
        d++;
        continue;
      }
    if((year[d]%4==0)&&(year[d]%100!=0)&&
      (year[d]%400==0)&&(year[d]%2000!=0))
      days[1]=29;
    work1=year[d]-1;
    work2=work1%100;
    work3=work1/100;
    e=(284/10)+work2+(work2/4)+(work3/4)-2*work3;
    f=e%7;
    a=0;
    while(a<=11){
      b=0;
      while(b<=days[a]){
        calen[b+f][a]=b;
        b++;
      }
      f=(days[a]+f)%7;
      a++;
   }
   a=0;
   while(a<=11){
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
exit (0);
}
