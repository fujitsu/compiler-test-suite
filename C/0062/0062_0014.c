#include <stdio.h>
#define N 100
void i8_to_c16(double _Complex * restrict a, long long int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    u[i] = i;
    a[i] = (double _Complex)(u[i]);
  }
}

void i4_to_c16(double _Complex * restrict a, int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    u[i] = i;
    a[i] = (double _Complex)(u[i]);
  }
}

void i2_to_c16(double _Complex * restrict a, short int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    u[i] = i;
    a[i] = (double _Complex)(u[i]);
  }
}

void i1_to_c16(double _Complex * restrict a, char * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    u[i] = i;
    a[i] = (double _Complex)(u[i]);
  }
}

void c16_to_i8(double _Complex * restrict a, long long int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    a[i] = (double _Complex)i;
    u[i] = (long long int)a[i];
  }
}

void c16_to_i4(double _Complex * restrict a, int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    a[i] = (double _Complex)i;
    u[i] = (int)a[i];
  }
}

void c16_to_i2(double _Complex * restrict a, short int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    a[i] = (double _Complex)i;
    u[i] = (short int)a[i];
  }
}

void c16_to_i1(double _Complex * restrict a, char * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    a[i] = (double _Complex)i;
    u[i] = (char)a[i];
  }
}
void u8_to_c16(double _Complex * restrict a, unsigned long long int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    u[i] = i;
    a[i] = (double _Complex)(u[i]);
  }
}

void u4_to_c16(double _Complex * restrict a, unsigned int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    u[i] = i;
    a[i] = (double _Complex)(u[i]);
  }
}

void u2_to_c16(double _Complex * restrict a, unsigned short int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    u[i] = i;
    a[i] = (double _Complex)(u[i]);
  }
}

void u1_to_c16(double _Complex * restrict a, unsigned char * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    u[i] = i;
    a[i] = (double _Complex)(u[i]);
  }
}

void c16_to_u8(double _Complex * restrict a, unsigned long long int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    a[i] = (double _Complex)i;
    u[i] = (unsigned long long int)a[i];
  }
}

void c16_to_u4(double _Complex * restrict a, unsigned int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    a[i] = (double _Complex)i;
    u[i] = (unsigned int)a[i];
  }
}

void c16_to_u2(double _Complex * restrict a, unsigned short int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    a[i] = (double _Complex)i;
    u[i] = (unsigned short int)a[i];
  }
}

void c16_to_u1(double _Complex * restrict a, unsigned char * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    a[i] = (double _Complex)i;
    u[i] = (unsigned char)a[i];
  }
}
void i8_to_c8(float _Complex * restrict a, long long int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    u[i] = i;
    a[i] = (float _Complex)(u[i]);
  }
}

void i4_to_c8(float _Complex * restrict a, int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    u[i] = i;
    a[i] = (float _Complex)(u[i]);
  }
}

void i2_to_c8(float _Complex * restrict a, short int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    u[i] = i;
    a[i] = (float _Complex)(u[i]);
  }
}

void i1_to_c8(float _Complex * restrict a, char * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    u[i] = i;
    a[i] = (float _Complex)(u[i]);
  }
}

void c8_to_i8(float _Complex * restrict a, long long int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    a[i] = (float _Complex)i;
    u[i] = (long long int)a[i];
  }
}

void c8_to_i4(float _Complex * restrict a, int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    a[i] = (float _Complex)i;
    u[i] = (int)a[i];
  }
}

void c8_to_i2(float _Complex * restrict a, short int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    a[i] = (float _Complex)i;
    u[i] = (short int)a[i];
  }
}

void c8_to_i1(float _Complex * restrict a, char * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    a[i] = (float _Complex)i;
    u[i] = (char)a[i];
  }
}
void u8_to_c8(float _Complex * restrict a, unsigned long long int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    u[i] = i;
    a[i] = (float _Complex)(u[i]);
  }
}

void u4_to_c8(float _Complex * restrict a, unsigned int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    u[i] = i;
    a[i] = (float _Complex)(u[i]);
  }
}

void u2_to_c8(float _Complex * restrict a, unsigned short int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    u[i] = i;
    a[i] = (float _Complex)(u[i]);
  }
}

void u1_to_c8(float _Complex * restrict a, unsigned char * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    u[i] = i;
    a[i] = (float _Complex)(u[i]);
  }
}

void c8_to_u8(float _Complex * restrict a, unsigned long long int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    a[i] = (float _Complex)i;
    u[i] = (unsigned long long int)a[i];
  }
}

void c8_to_u4(float _Complex * restrict a, unsigned int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    a[i] = (float _Complex)i;
    u[i] = (unsigned int)a[i];
  }
}

void c8_to_u2(float _Complex * restrict a, unsigned short int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    a[i] = (float _Complex)i;
    u[i] = (unsigned short int)a[i];
  }
}

void c8_to_u1(float _Complex * restrict a, unsigned char * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    a[i] = (float _Complex)i;
    u[i] = (unsigned char)a[i];
  }
}
static void init_c16_array(double _Complex * restrict a, double _Complex data){
  int i;
  for (i=0; i<N; ++i) {
    a[i] = data;
  }
}

static void init_c8_array(float _Complex * restrict a, float _Complex data){
  int i;
  for (i=0; i<N; ++i) {
    a[i] = data;
  }
}

static void init_i8_array(long long int * restrict a, long long int data){
  int i;
  for (i=0; i<N; ++i) {
    a[i] = data;
  }
}

static void init_i4_array(int * restrict a, int data){
  int i;
  for (i=0; i<N; ++i) {
    a[i] = data;
  }
}

static void init_i2_array(short int * restrict a, short int data){
  int i;
  for (i=0; i<N; ++i) {
    a[i] = data;
  }
}

static void init_i1_array(char * restrict a, char data){
  int i;
  for (i=0; i<N; ++i) {
    a[i] = data;
  }
}

static void init_u8_array(unsigned long long int * restrict a, unsigned long long int data){
  int i;
  for (i=0; i<N; ++i) {
    a[i] = data;
  }
}

static void init_u4_array(unsigned int * restrict a, unsigned int data){
  int i;
  for (i=0; i<N; ++i) {
    a[i] = data;
  }
}

static void init_u2_array(unsigned short int * restrict a, unsigned short int data){
  int i;
  for (i=0; i<N; ++i) {
    a[i] = data;
  }
}

static void init_u1_array(unsigned char * restrict a, unsigned char data){
  int i;
  for (i=0; i<N; ++i) {
    a[i] = data;
  }
}
static double _Complex c16sum(double _Complex * restrict a) {
  int i;
  double _Complex ans;
  ans = 0.0;
  for (i=0; i<N; ++i) {
    ans += a[i];
  }
  return ans;
}

static float _Complex c8sum(float _Complex * restrict a) {
  int i;
  float _Complex ans;
  ans = 0.0;
  for (i=0; i<N; ++i) {
    ans += a[i];
  }
  return ans;
}

static long long int i8sum(long long int * restrict a) {
  int i;
  long long int ans;
  ans = 0;
  for (i=0; i<N; ++i) {
    ans += a[i];
  }
  return ans;
}

static int i4sum(int * restrict a) {
  int i;
  int ans;
  ans = 0;
  for (i=0; i<N; ++i) {
    ans += a[i];
  }
  return ans;
}

static short int i2sum(short int * restrict a) {
  int i;
  short int ans;
  ans = 0;
  for (i=0; i<N; ++i) {
    ans += a[i];
  }
  return ans;
}

static char i1sum(char * restrict a) {
  int i;
  char ans;
  ans = 0;
  for (i=0; i<N; ++i) {
    ans += a[i];
  }
  return ans;
}

static unsigned long long int u8sum(unsigned long long int * restrict a) {
  int i;
  unsigned long long int ans;
  ans = 0;
  for (i=0; i<N; ++i) {
    ans += a[i];
  }
  return ans;
}

static unsigned int u4sum(unsigned int * restrict a) {
  int i;
  unsigned int ans;
  ans = 0;
  for (i=0; i<N; ++i) {
    ans += a[i];
  }
  return ans;
}

static unsigned short int u2sum(unsigned short int * restrict a) {
  int i;
  unsigned short int ans;
  ans = 0;
  for (i=0; i<N; ++i) {
    ans += a[i];
  }
  return ans;
}

static unsigned char u1sum(unsigned char * restrict a) {
  int i;
  unsigned char ans;
  ans = 0;
  for (i=0; i<N; ++i) {
    ans += a[i];
  }
  return ans;
}
int main(void) {
  double _Complex a8[N];
  float _Complex a4[N];
  long long int i8[N];
  int i4[N];
  short int i2[N];
  char i1[N];
  unsigned long long int u8[N];
  unsigned int u4[N];
  unsigned short int u2[N];
  unsigned char u1[N];

  
  init_i8_array(i8, 0);
  init_c16_array(a8, 0.0);
  i8_to_c16(a8,i8);
  if ((int)c16sum(a8) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)c16sum(a8));
  }

  init_i4_array(i4, 0);
  init_c16_array(a8, 0.0);
  i4_to_c16(a8,i4);
  if ((int)c16sum(a8) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)c16sum(a8));
  }

  init_i2_array(i2, 0);
  init_c16_array(a8, 0.0);
  i2_to_c16(a8,i2);
  if ((int)c16sum(a8) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)c16sum(a8));
  }

  init_i1_array(i1, 0);
  init_c16_array(a8, 0.0);
  i1_to_c16(a8,i1);
  if ((int)c16sum(a8) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)c16sum(a8));
  }

  

  init_u8_array(u8, 0);
  init_c16_array(a8, 0.0);
  u8_to_c16(a8,u8);
  if ((int)c16sum(a8) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)c16sum(a8));
  }

  init_u4_array(u4, 0);
  init_c16_array(a8, 0.0);
  u4_to_c16(a8,u4);
  if ((int)c16sum(a8) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)c16sum(a8));
  }

  init_u2_array(u2, 0);
  init_c16_array(a8, 0.0);
  u2_to_c16(a8,u2);
  if ((int)c16sum(a8) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)c16sum(a8));
  }

  init_u1_array(u1, 0);
  init_c16_array(a8, 0.0);
  u1_to_c16(a8,u1);
  if ((int)c16sum(a8) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)c16sum(a8));
  }

  

  init_c16_array(a8, 0.0);
  init_i8_array(i8, 0);
  c16_to_i8(a8,i8);
  if ((int)i8sum(i8) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)i8sum(i8));
  }

  init_c16_array(a8, 0.0);
  init_i4_array(i4, 0);
  c16_to_i4(a8,i4);
  if ((int)i4sum(i4) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)i4sum(i4));
  }

  init_c16_array(a8, 0.0);
  init_i2_array(i2, 0);
  c16_to_i2(a8,i2);
  if ((int)i2sum(i2) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)i2sum(i2));
  }

  init_c16_array(a8, 0.0);
  init_i1_array(i1, 0);
  c16_to_i1(a8,i1);
  if ((int)i1sum(i1) == 86) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)i1sum(i1));
  }

  

  init_c16_array(a8, 0.0);
  init_u8_array(u8, 0);
  c16_to_u8(a8,u8);
  if ((int)u8sum(u8) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)u8sum(u8));
  }

  init_c16_array(a8, 0.0);
  init_u4_array(u4, 0);
  c16_to_u4(a8,u4);
  if ((int)u4sum(u4) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)u4sum(u4));
  }

  init_c16_array(a8, 0.0);
  init_u2_array(u2, 0);
  c16_to_u2(a8,u2);
  if ((int)u2sum(u2) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)u2sum(u2));
  }

  init_c16_array(a8, 0.0);
  init_u1_array(u1, 0);
  c16_to_u1(a8,u1);
  if ((int)u1sum(u1) == 86) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)u1sum(u1));
  }

  

  
  init_i8_array(i8, 0);
  init_c8_array(a4, 0.0);
  i8_to_c8(a4,i8);
  if ((int)c8sum(a4) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)c8sum(a4));
  }

  init_i4_array(i4, 0);
  init_c8_array(a4, 0.0);
  i4_to_c8(a4,i4);
  if ((int)c8sum(a4) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)c8sum(a4));
  }

  init_i2_array(i2, 0);
  init_c8_array(a4, 0.0);
  i2_to_c8(a4,i2);
  if ((int)c8sum(a4) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)c8sum(a4));
  }

  init_i1_array(i1, 0);
  init_c8_array(a4, 0.0);
  i1_to_c8(a4,i1);
  if ((int)c8sum(a4) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)c8sum(a4));
  }

  

  init_u8_array(u8, 0);
  init_c8_array(a4, 0.0);
  u8_to_c8(a4,u8);
  if ((int)c8sum(a4) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)c8sum(a4));
  }

  init_u4_array(u4, 0);
  init_c8_array(a4, 0.0);
  u4_to_c8(a4,u4);
  if ((int)c8sum(a4) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)c8sum(a4));
  }

  init_u2_array(u2, 0);
  init_c8_array(a4, 0.0);
  u2_to_c8(a4,u2);
  if ((int)c8sum(a4) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)c8sum(a4));
  }

  init_u1_array(u1, 0);
  init_c8_array(a4, 0.0);
  u1_to_c8(a4,u1);
  if ((int)c8sum(a4) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)c8sum(a4));
  }

  

  init_c8_array(a4, 0.0);
  init_i8_array(i8, 0);
  c8_to_i8(a4,i8);
  if ((int)i8sum(i8) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)i8sum(i8));
  }

  init_c8_array(a4, 0.0);
  init_i4_array(i4, 0);
  c8_to_i4(a4,i4);
  if ((int)i4sum(i4) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)i4sum(i4));
  }

  init_c8_array(a4, 0.0);
  init_i2_array(i2, 0);
  c8_to_i2(a4,i2);
  if ((int)i2sum(i2) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)i2sum(i2));
  }

  init_c8_array(a4, 0.0);
  init_i1_array(i1, 0);
  c8_to_i1(a4,i1);
  if ((int)i1sum(i1) == 86) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)i1sum(i1));
  }

  

  init_c8_array(a4, 0.0);
  init_u8_array(u8, 0);
  c8_to_u8(a4,u8);
  if ((int)u8sum(u8) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)u8sum(u8));
  }

  init_c8_array(a4, 0.0);
  init_u4_array(u4, 0);
  c8_to_u4(a4,u4);
  if ((int)u4sum(u4) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)u4sum(u4));
  }

  init_c8_array(a4, 0.0);
  init_u2_array(u2, 0);
  c8_to_u2(a4,u2);
  if ((int)u2sum(u2) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)u2sum(u2));
  }

  init_c8_array(a4, 0.0);
  init_u1_array(u1, 0);
  c8_to_u1(a4,u1);
  if ((int)u1sum(u1) == 86) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)u1sum(u1));
  }
}
