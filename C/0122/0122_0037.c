#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z;
int main()
{
   int ans;
 
   printf("********** 26 TEST START **********\n");
 
   a = b = c = d = e = f = g = h = i = 1; 
   j = k = l = m = n = o = p = q = r = 1; 
   s = t = u = v = w = x = y = z = 1;     
 
   ans=a-(b-c)-((d-e)-((f-g)-((h-i)-((j-k)-((l-m)-((n-o)-((p-q)-((r-s)-
       ((t-u)-((v-w)-((x-y)-z)))))))))));
 
   if (ans == 2)
       printf("***** 26 - 01 ***** O   K *****\n");
     else
       printf("***** 26 - 01 ***** N   G *****\n");
 
   printf("********** 26 TEST  END  **********\n");
exit (0);
}
