#include <stdlib.h>
#include <stdio.h>   
#define END    1+2+3+4 
#define ENTRY  0+0 
#define TEN    10 
#define ZERO   0 
#define ARRAY1 i+1+2-3
#define ARRAY2 j+ZERO 
#define ARRAY3 k+1+2+3+4+5+6+7+8+9+10-55 
 
struct { 
       double a;
       double b;
       }var1[TEN];
struct {
       double c[TEN];
       double d[TEN];
       }var2;
struct {
       double e[TEN];
       double f[TEN];
       }var3[TEN];
int main(){
      int i;
      int j;
      int k;
      long int count = ZERO;
      for(i=ENTRY;i<END;i++){
	 var1[ARRAY1].a=0.0000;
	 var1[ARRAY1].b=var1[ARRAY1].a+1.0000;
	 }
      for(i=ENTRY;i<END;i++){
	 printf("var1[%d].a = %g \n",i,var1[ARRAY1].a);
	 printf("var1[%d].b = %g \n",i,var1[ARRAY1].b);
	 }
      for(i=ENTRY;i<END;i++){
	 var1[ARRAY1].a=var1[ARRAY1].a+2.0000;
	 var1[ARRAY1].a=var1[ARRAY1].a+3.0000;
	 }
      for(i=ENTRY;i<END;i++){
	 printf("var1[%d].a = %g \n",i,var1[ARRAY1].a);
	 }
      for(j=ENTRY;j<END;j++){
	 var2.c[ARRAY2]=var1[ARRAY2].a+4.0000;
	 var2.d[ARRAY2]=var2.c[ARRAY2]+5.0000;
	 }
      for(j=ENTRY;j<END;j++){
	 printf("var2.c[%d] = %g \n",j,var2.c[ARRAY2]);
	 printf("var2.d[%d] = %g \n",j,var2.d[ARRAY2]);
	 }
      for(j=ENTRY;j<END;j++){
	 var2.d[ARRAY2]=var2.d[ARRAY2]+6.0000;
	 var2.d[ARRAY2]=var2.d[ARRAY2]+7.0000;
	 }
      for(j=ENTRY;j<END;j++){
	 printf("var2.d[%d] = %g \n",j,var2.d[ARRAY2]);
	 }
      for(i=ENTRY;i<END;i++){
         for(j=ENTRY;j<END;j++){
	    var3[ARRAY1].e[ARRAY2]=var2.d[ARRAY2]+8.0000;
	    var3[ARRAY1].f[ARRAY2]=var3[ARRAY1].e[ARRAY2]+9.0000;
	    }
	 }
      for(i=ENTRY;i<END;i++){
         for(j=ENTRY;j<END;j++){
	    printf("var3[%d].e[%d] = %g \n",i,j,var3[ARRAY1].e[ARRAY2]);
	    printf("var3[%d].f[%d] = %g \n",i,j,var3[ARRAY1].f[ARRAY2]);
	    }
	 }
      for(i=ENTRY;i<END;i++){
         for(j=ENTRY;j<END;j++){
	    var3[ARRAY1].f[ARRAY2]=var3[ARRAY1].f[ARRAY2]+10.0000;
	    var3[ARRAY1].f[ARRAY2]=var3[ARRAY1].f[ARRAY2]+11.0000;
	    }
	 }
      for(i=ENTRY;i<END;i++){
         for(j=ENTRY;j<END;j++){
	    printf("var3[%d].f[%d] = %g \n",i,j,var3[ARRAY1].f[ARRAY2]);
	    }
	 }
      for(i=ENTRY;i<END;i++){ 
         if(var1[ARRAY1].a == 5) 
	    printf("var1[%d].a is OK!! \n", ARRAY1);
         else 
	    printf("var1[%d].a is NG!! \n", ARRAY1);
	    }
      for(j=ENTRY;j<END;j++){ 
         if(var1[ARRAY2].b == 1) 
	    printf("var1[%d].b] is OK!! \n", ARRAY2);
         else 
	    printf("var1[%d].b] is NG!! \n", ARRAY2);
	    }
      for(i=ENTRY;i<END;i++){ 
         if(var2.c[ARRAY1] == 9) 
	    printf("var2.c[%d] is OK!! \n", ARRAY1);
         else 
	    printf("var2.c[%d] is NG!! \n", ARRAY1);
	    }
      for(j=ENTRY;j<END;j++){ 
         if(var2.d[ARRAY2] == 27) 
	    printf("var2.d[%d] is OK!! \n", ARRAY2);
         else 
	    printf("var2.d[%d] is NG!! \n", ARRAY2);
	    }
      for(i=ENTRY;i<END;i++){ 
         for(j=ENTRY;j<END;j++){ 
            if(var3[ARRAY1].e[ARRAY2] == 35 && var3[ARRAY1].f[ARRAY2] == 44) 
	    printf("var3[%d].e[%d] is OK!! \n",ARRAY1,ARRAY2);
	    printf("var3[%d].f[%d] is OK!! \n",ARRAY1,ARRAY2);
	    }
         }
	exit(0);
     }
