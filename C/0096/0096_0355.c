#include  <stdio.h>
 
 
 
int main()
 {
   int                 i4a,i4b,i4c,i4d,i4[10],i,j;
   short int           i2a,i2b,i2c,i2d,i2[10];
   unsigned int        u4a,u4b,u4c,u4d,u4[10];
   unsigned short int  u2a,u2b,u2c,u2d,u2[10];

   i4a = -1;
   i2a = -1;
   for(i=0;i<10;i++) {
     i4[i] = i | i4a;
     i2[i] = i | i2a;
   }
   for(i=0;i<10;i++) {
     if(i4[i] == -1) ;
     else goto error;
     if(i2[i] == -1) ;
     else goto error;
   }
   printf("okokok  okokok\n");
   goto nop;
   error:printf("ngngng  ngngng\n");
   printf("i4 = ");
   for(i=0;i<10;i++) {
     if(i == 9) printf("%d\n",i4[i]);
     else printf("%d ",i4[i]);
   }
   printf("i2 = ");
   for(i=0;i<10;i++) {
     if(i == 9) printf("%d\n",i2[i]);
     else printf("%d ",i2[i]);
   }
   nop:;
 }
