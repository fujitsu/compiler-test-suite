#include  <stdio.h>
int main()
 {
 auto     signed char                  a0=1;
 auto     signed char                  a1=1;
 auto     signed char                 *a2=&a1;
 auto     unsigned char            a3=1;
 auto     unsigned char            a4=1;
 auto     unsigned char           *a5=&a4;
 auto     signed short int             a6=1;
 auto     signed short int             a7=1;
 auto     signed short int            *a8=&a7;
 auto     unsigned short int       a9=1;
 auto     unsigned short int       a10=1;
 auto     unsigned short int      *a11=&a10;
 auto     signed long      int         a12=1;
 auto     signed long      int         a13=1;
 auto     signed long      int        *a14=&a13;
 auto     unsigned long  int       a15=1;
 auto     unsigned long  int       a16=1;
 auto     unsigned long  int      *a17=&a16;
 auto     signed long long int         a18=1;
 auto     signed long long int         a19=1;
 auto     signed long long int        *a20=&a19;
 auto     unsigned long long int       a21=1;
 auto     unsigned long long int       a22=1;
 auto     unsigned long long int      *a23=&a22;
 static   signed char                  a24=1;
 static   signed char                  a25=1;
 static   signed char                 *a26=&a25;
 static   unsigned char            a27=1;
 static   unsigned char            a28=1;
 static   unsigned char           *a29=&a28;
 static   signed short int             a30=1;
 static   signed short int             a31=1;
 static   signed short int            *a32=&a31;
 static   unsigned short int       a33=1;
 static   unsigned short int       a34=1;
 static   unsigned short int      *a35=&a34;
 static   signed long      int         a36=1;
 static   signed long      int         a37=1;
 static   signed long      int        *a38=&a37;
 static   unsigned long  int       a39=1;
 static   unsigned long  int       a40=1;
 static   unsigned long  int      *a41=&a40;
 static   signed long long int         a42=1;
 static   signed long long int         a43=1;
 static   signed long long int        *a44=&a43;
 static   unsigned long long int       a45=1;
 static   unsigned long long int       a46=1;
 static   unsigned long long int      *a47=&a46;
 register signed char                  a48=1;
               signed char                  a49=1;
 register signed char                 *a50=&a49;
 register unsigned char            a51=1;
               unsigned char            a52=1;
 register unsigned char           *a53=&a52;
 register signed short int             a54=1;
               signed short int             a55=1;
 register signed short int            *a56=&a55;
 register unsigned short int       a57=1;
               unsigned short int       a58=1;
 register unsigned short int      *a59=&a58;
 register signed long      int         a60=1;
               signed long      int         a61=1;
 register signed long      int        *a62=&a61;
 register unsigned long  int       a63=1;
               unsigned long  int       a64=1;
 register unsigned long  int      *a65=&a64;
 register signed long long int         a66=1;
               signed long long int         a67=1;
 register signed long long int        *a68=&a67;
 register unsigned long long int       a69=1;
               unsigned long long int       a70=1;
 register unsigned long long int      *a71=&a70;
 int sum=0;
 int sum1=57;
 double sum2=57.0;
 sum=sum+a0;sum=sum+ a1;sum=sum+ (*a2);sum=sum+a3* a4;
 sum=sum+ (*a5)*a6;sum=sum+ a7/ (*a8);sum=sum+a9> a10;
 sum=sum+ (*a11)>a12* a13;sum=sum+ (*a14)*a15> a16/ (*a17);
 sum=sum+a18>= a19;sum=sum+ (*a20)>=a21* a22;sum=sum+ (*a23)
 *a24>= a25/ (*a26);sum=sum+a27== a28;sum=sum+ (*a29)==a30*
 a31;sum=sum+ (*a32)*a33== a34/ (*a35);sum=sum+a36> a37==
 (*a38)>a39* a40;sum=sum+ (*a41)*a42> a43/ (*a44)==a45>= a46
 ;sum=sum+ (*a47)>=a48* a49== (*a50)*a51>= a52/ (*a53);
 sum=sum+a54^ a55;sum=sum+ (*a56)^a57* a58;sum=sum+ (*a59)
 *a60^ a61/ (*a62);sum=sum+a63> a64^ (*a65)>a66* a67;
 sum=sum+ (*a68)*a69> a70/ (*a71)^a0>= a1;sum=sum+ (*a2)>=
 a3* a4^ (*a5)*a6>= a7/ (*a8);sum=sum+a9== a10^ (*a11)==
 a12* a13;sum=sum+ (*a14)*a15== a16/ (*a17)^a18> a19==
 (*a20)>a21* a22;sum=sum+ (*a23)*a24> a25/ (*a26)==a27>= a28
 ^ (*a29)>=a30* a31== (*a32)*a33>= a34/ (*a35);sum=sum+a36|
  a37;sum=sum+ (*a38)|a39* a40;sum=sum+ (*a41)*a42| a43/
 (*a44);sum=sum+a45> a46| (*a47)>a48* a49;sum=sum+ (*a50)*
 a51> a52/ (*a53)|a54>= a55;sum=sum+ (*a56)>=a57* a58|
 (*a59)*a60>= a61/ (*a62);sum=sum+a63== a64| (*a65)==a66*
 a67;sum=sum+ (*a68)*a69== a70/ (*a71)|a0> a1== (*a2)>a3* a4
 ;sum=sum+ (*a5)*a6> a7/ (*a8)==a9>= a10| (*a11)>=a12* a13==
  (*a14)*a15>= a16/ (*a17);sum=sum+a18^ a19| (*a20)^a21*
 a22;sum=sum+ (*a23)*a24^ a25/ (*a26)|a27> a28^ (*a29)>a30
 * a31;sum=sum+ (*a32)*a33> a34/ (*a35)^a36>= a37| (*a38)>=
 a39* a40^ (*a41)*a42>= a43/ (*a44);sum=sum+a45== a46^
 (*a47)==a48* a49| (*a50)*a51== a52/ (*a53)^a54> a55==
 (*a56)>a57* a58;sum=sum+ (*a59)*a60> a61/ (*a62)==a63>= a64
 ^ (*a65)>=a66* a67== (*a68)*a69>= a70/ (*a71)|a0;sum=sum+
 a1;sum=sum+ (*a2);sum=sum+a3* a4;sum=sum+ (*a5)*a6;sum=sum+
  a7/ (*a8);sum=sum+a9> a10;sum=sum+ (*a11)>a12* a13;
 sum=sum+ (*a14)*a15> a16/ (*a17);sum=sum+a18>= a19;sum=sum+
  (*a20)>=a21* a22;sum=sum+ (*a23)*a24>= a25/ (*a26);
 sum=sum+a27== a28;sum=sum+ (*a29)==a30* a31;sum=sum+ (*a32)
 *a33== a34/ (*a35);sum=sum+a36> a37== (*a38)>a39* a40;
 sum=sum+ (*a41)*a42> a43/ (*a44)==a45>= a46;sum=sum+ (*a47)
 >=a48* a49== (*a50)*a51>= a52/ (*a53);sum=sum+a54^ a55;
 sum=sum+ (*a56)^a57* a58;sum=sum+ (*a59)*a60^ a61/ (*a62)
 ;sum=sum+a63> a64^ (*a65)>a66* a67;sum=sum+ (*a68)*a69>
 a70/ (*a71)^a0>= a1;sum=sum+ (*a2)>=a3* a4^ (*a5)*a6>= a7
 / (*a8);sum=sum+a9== a10^ (*a11)==a12* a13;sum=sum+ (*a14)
 *a15== a16/ (*a17)^a18> a19== (*a20)>a21* a22;sum=sum+
 (*a23)*a24> a25/ (*a26)==a27>= a28^ (*a29)>=a30* a31==
 (*a32)*a33>= a34/ (*a35);sum=sum+a36| a37;sum=sum+ (*a38)|
 a39* a40;sum=sum+ (*a41)*a42| a43/ (*a44);sum=sum+a45> a46|
  (*a47)>a48* a49;sum=sum+ (*a50)*a51> a52/ (*a53)|a54>= a55
 ;sum=sum+ (*a56)>=a57* a58| (*a59)*a60>= a61/ (*a62);
 sum=sum+a63== a64| (*a65)==a66* a67;sum=sum+ (*a68)*a69==
 a70/ (*a71)|a0> a1== (*a2)>a3* a4;sum=sum+ (*a5)*a6> a7/
 (*a8)==a9>= a10| (*a11)>=a12* a13== (*a14)*a15>= a16/
 (*a17);sum=sum+a18^ a19| (*a20)^a21* a22;sum=sum+ (*a23)*
 a24^ a25/ (*a26)|a27> a28^ (*a29)>a30* a31;sum=sum+
 (*a32)*a33> a34/ (*a35)^a36>= a37| (*a38)>=a39* a40^
 (*a41)*a42>= a43/ (*a44);sum=sum+a45== a46^ (*a47)==a48*
 a49| (*a50)*a51== a52/ (*a53)^a54> a55== (*a56)>a57* a58;
 sum=sum+ (*a59)*a60> a61/ (*a62)==a63>= a64^ (*a65)>=a66*
 a67== (*a68)*a69>= a70/ (*a71)|a0;
   printf(" sum = %d \n",sum);
   printf(" sum1 = %d \n",sum1);
   printf("%s sum2 = %f \n","",sum2);
   puts("                         ");
 }
