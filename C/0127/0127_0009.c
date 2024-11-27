#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int init(double a[],double b[],long int n);

#define SIZE 4096
int main()
   {
   double a[SIZE],b[SIZE];
   double res1,func1(double a[],double b[],long int n);
   double res2,func2(double a[],double b[],long int n);
   double res3,func3(double a[],double b[],long int n);
   double res4,func4(double a[],double b[],long int n);

   init(a,b,SIZE);
   res1 = func1(a,b,SIZE);
   printf(" #### test1 => %g ####\n",res1);
   init(a,b,SIZE);
   res2 = func2(a,b,SIZE/256);
   printf(" #### test2 => %g ####\n",res2);
   init(a,b,SIZE);
   res3 = func3(a,b,SIZE);
   printf(" #### test3 => %g ####\n",res3);
   init(a,b,SIZE);
   res4 = func4(a,b,SIZE);
   printf(" #### test4 => %g ####\n",res4);
	exit(0);
   }
double func1(double a[],double b[],long int n)
   {
   long int i,j=1;
   double sum1=0.0,sum2=0.0,sum3=0.0;
   for(i=0;i<n;i++) {
      a[i] = fabs(a[i]/b[i]+a[i]);
      b[i] = fabs(b[i]*a[i]-b[i]);
      if(i < 5) sum1 += a[i] * (double)(j++);
      else      sum2 -= b[i] * (double)(j++);
   }
   for(i=0;i<n;i++) {
      sum3 += sum1 + (double)i;
      sum3 -= sum2 - (double)i;
   }
   return sum3;
}
#define A(i,j)    a[i*64+j]
#define B(i,j,k)  b[(i*16+j)*16+k]
double func2(double a[],double b[],long int n)
   {
   long int i,j,k;
   double sum1,sum2,sum3=0.0;
   for(i=0;i<n;i++) {
      sum2 = 0.0;
      for(j=0;j<n;j++) {
         A(i,j) = sqrt(fabs(A(i,j))) / sin(fabs(A(i,j)));
         sum1 =0.0;
         for(k=0;k<n;k++) {
            B(i,j,k) = cos(fabs(B(i,j,k))) * sqrt(fabs(B(i,j,k)));
            sum1 += B(i,j,k);
         }
         sum2 += sum1 + A(i,j);
      }
      sum3 += sum2;
   }
   return sum3;
}
double func3(double a[],double b[],long int n)
   {
   long int i;
   double sum=0.0;
   struct tag {
      double a[SIZE];
      double b[SIZE];
      } st;
   for(i=0;i<n;i++) {
      st.a[i] = a[i];
      st.b[i] = b[i];
   }
   for(i=0;i<n;i+=2) {
      st.a[i] = st.a[i] + fabs(st.b[i]);
      st.b[i] = st.b[i] + fabs(st.a[i]);
      sum -= st.a[i] * st.b[i];
   }
   return sum;
}
double func4(double a[],double b[],long int n)
   {
   long int i;
   double sum=0.0;
   struct tag {
      double a[SIZE];
      double b[SIZE];
      } st;
   struct tag *p;
   p = &st;
   for(i=0;i<n;i++) {
      p->a[i] = a[i];
      p->b[i] = b[i];
   }
   for(i=0;i<n;i++) {
      p->a[i] = p->a[i] + fabs(p->a[i]);
      p->b[i] = p->b[i] + fabs(p->b[i]);
      sum += p->a[i] + p->b[i];
   }
   return sum;
}
int init(double a[],double b[],long int n)
   {
   long int i;
   for(i=0;i<n;i++) {
      a[i] = (double)(i+1);
      b[i] = (double)(-i-1);
   }
}
