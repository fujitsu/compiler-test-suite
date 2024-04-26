#include  <stdio.h>

void sub(signed char i11, signed char i12, unsigned char u11, unsigned char u12,
signed short int i21, signed short int i22, unsigned short int u21, unsigned short int u22,
signed long int i41, signed long int i42, unsigned long int u41, unsigned long int u42,
signed long long int i81, signed long long int i82, unsigned long long int u81, unsigned long long int u82);

void sub(signed char i11, signed char i12, unsigned char u11, unsigned char u12,
signed short int i21, signed short int i22, unsigned short int u21, unsigned short int u22,
signed long int i41, signed long int i42, unsigned long int u41, unsigned long int u42,
signed long long int i81, signed long long int i82, unsigned long long int u81, unsigned long long int u82)
{
    if( i11 != 2 || i21 != 2 ||
        i41 != 2 || i81 != 2    )
       puts(" NG ");
    if( i12 != 32 || i22 != 32 ||
        i42 != 32 || i82 != 32    )
       puts(" NG ");
    if( u11 != 2 || u21 != 2 ||
        u41 != 2 || u81 != 2    )
       puts(" NG ");
    if( u12 != 32 || u22 != 32 ||
        u42 != 32 || u82 != 32    )
       puts(" NG ");

}
    signed   char gi1=8;
    unsigned char gu1=8;
    signed   short int gi2=8;
    unsigned short int gu2=8;
    signed   long  int gi4=8;
    unsigned long  int gu4=8;
    signed long long int gi8=8;
    unsigned long long int gu8=8;
int main()
{
    signed   char i11,i12;
    unsigned char u11,u12;
    signed   short int i21,i22;
    unsigned short int u21,u22;
    signed   long  int i41,i42;
    unsigned long  int u41,u42;
    signed long long int i81,i82;
    unsigned long long int u81,u82;

    i11=gi1>>2; i12=gi1<<2;
    u11=gu1>>2; u12=gu1<<2;
    i21=gi2>>2; i22=gi2<<2;
    u21=gu2>>2; u22=gu2<<2;
    i41=gi4>>2; i42=gi4<<2;
    u41=gu4>>2; u42=gu4<<2;
    i81=gi8>>2; i82=gi8<<2;
    u81=gu8>>2; u82=gu8<<2;

    gi1=gu1=gi2=gu2=gi4=gu4=gi8=gu8=2;
  sub(i11,i12,u11,u12,i21,i22,u21,u22,i41,i42,u41,u42,i81,i82,u81,u82);

    i11=8>>gi1; i12=8<<gi1;
    u11=8>>gu1; u12=8<<gu1;
    i21=8>>gi2; i22=8<<gi2;
    u21=8>>gu2; u22=8<<gu2;
    i41=8>>gi4; i42=8<<gi4;
    u41=8>>gu4; u42=8<<gu4;
    i81=8>>gi8; i82=8<<gi8;
    u81=8>>gu8; u82=8<<gu8;

  sub(i11,i12,u11,u12,i21,i22,u21,u22,i41,i42,u41,u42,i81,i82,u81,u82);
  puts(" OK ");
}
