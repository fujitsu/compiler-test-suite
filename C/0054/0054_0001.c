#include <stdio.h>
int f(int xx, int yy);

int main()
{
printf(" 02 START \n");
{
   int an1,an2,an3,an4,an5,an6,an7,an8,an9,an10,an11;
   int ar[3]={0,1,2};
   int dy=1; char c=1;char *q;
   int *p;int **pp;int i=1;
   p=ar; q=&c;pp=&p;

   an1=(int)*p+(dy&&dy);   
   an2=(char)*p+(dy&&dy);  
   (void)*p;  
   an4=(int)*p;          
   an5=(int)(dy+dy)+(dy&&dy); 
   an6=(int)**pp+(dy?1:0); 
   an7=(int)*(p+i)+(dy&&dy); 
   an8=(int)ar[i]+(dy?1:0);  
   an9=(int)*p+(dy&&dy);    
   an10=(char)*(q+i-1)+(dy?0:1); 
   an11=(int)dy+(dy?0:1); 

   if(an1==1 && an2==1 && an4==0 && an5==3 && an6==1 &&
      an7==2 && an8==2 && an9==1 && an10==1 && an11==1)
      printf("02-1 OK \n");
   else
      printf("02-2 NG \n");
 }
{
   int an1,an2,an3,an4,an5,an6,an7,an8,an9,an10,an11;
   int ar[3]={0,1,2};
   int dy=1; char c=1;char *q;
   int *p;int **pp;int i=1;
   p=ar; q=&c;pp=&p;

   an1=f((int)*p,(dy&&dy));   
   an2=f((char)*p,(dy&&dy));  
   (void)*p;  
   an4=(int)*p;          
   an5=f((int)(dy+dy),(dy&&dy)); 
   an6=f((int)**pp,(dy?1:0)); 
   an7=f((int)*(p+i),(dy&&dy)); 
   an8=f((int)ar[i],(dy?1:0));  
   an9=f((int)*p,(dy&&dy));    
   an10=f((char)*(q+i-1),(dy?0:1));
   an11=f((int)dy,(dy?0:1)); 

   if(an1==1 && an2==1 && an4==0 && an5==3 && an6==1 &&
      an7==2 && an8==2 && an9==1 && an10==1 && an11==1)
      printf("02-2 OK \n");
   else
      printf("02-2 NG \n");
 }
printf(" 02 END   \n");
 }
 int f(xx,yy)
 int xx,yy;
 { return xx+yy;}
