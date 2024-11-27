#include <stdlib.h>
#include <stdio.h>
#include <math.h>

struct tag {
       float real;
       float imag;
       };
int init (long int i4[], float r4[], double d8[], char c[], short int h2[], struct tag cp[], struct tag *p, long int n);
int main (void)
   {
   long int i4[10];
   float    r4[10];
   double   d8[10];
   char      c[10];
   short int h2[10];
   struct tag cp[10],*p;
   long int i,j;

   p = cp;
   init(i4,r4,d8,c,h2,cp,p,10);
   for(i=0;i<10;i++) {
      i4[i] = i4[i] + fabs(100-i);
   }

   for(i=-0;i>-10;i--) {
      j = fabs(i);
      r4[j] = r4[j] * (float)sin((double)i);
   }

   for(i=0,j=9;i<10;j--,i++) {
      d8[j] = d8[j] / fabs(cos((double)(-j*i)));
      d8[j] = -(i+1) * d8[j];
      d8[j] = fabs(d8[j]);
      }

   j=0;
   for(;;) {
      if(j<10) break;
      j++;
      cp[i].real -= fabs(cp[i].real * cp[i].imag);
      cp[i].imag += fabs(cp[i].imag / cp[i].real);
      i++;
   }

   for(i=0;i<10;i+=2) {
      p->real = fabs(p->real);
      p->imag = p->real * fabs(p->imag);
      (p+1)->real = fabs((p+1)->real);
      (p+1)->imag = (p+1)->real * fabs((p+1)->imag);
      p+=2;
   }

   for(i=0;i<10;i++) {
      if(i<5) {
         h2[i] = fabs(h2[i]);
         h2[i] = fabs(i-h2[i]);
      }
      else h2[i] = i;
   }

   i=0;
   for(j=0;j<10;j++) {
      c[i++] =fabs(c[j]);
   }

   for(i=0;i<10;i++) {
      printf("i4[%ld] => %ld  r4[%ld] => %g",i,i4[i],i,r4[i]);
      printf("  d8[%ld] => %g  h2[%ld] => %d\n",i,d8[i],i,h2[i]);
   }

   p = cp;
   for(i=0;i<10;i++) {
      printf("p->real => %g  p->imag => %g",p->real,p->imag);
      printf("  cp[%ld].real => %g  cp[%ld].imag => %g\n",
           i,cp[i].real,i,cp[i].imag);
      p++;
   }

   for(i=0;i<10;i++) {
      printf("c[%ld] => %d\n",i,c[i]);
   }
	exit(0);
}

int init (long int i4[], float r4[], double d8[], char c[], short int h2[], struct tag cp[], struct tag *p, long int n)
   {
   long int i;
   for(i=0;i<n;i++) {
      i4[i] = i;
      r4[i] = (float)sin((double)i);
      d8[i] = cos((double)i);
      c[i] = i;
      h2[i] = i;
      cp[i].real = r4[i];
      cp[i].imag = r4[i]-i;
      p->real = d8[i];
      p->imag = d8[i]-i;
   }
}
