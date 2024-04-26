#include <stdio.h>
#include <math.h>

void float_event()
{
  float d1= 0x1.p+0f;
  float d2= 0x2.p+0f;
  float d3= 0x1.0p0f;
  float d4= 0x.8p0f;
  float d5= 0x1.p0f;
  float d6= 0x1.p-1f;
  float d7= 0x1.p+2f;
  float d8= 0x1.p-2f;

  printf("float event test\n");

  if (d1 == 1.0f)
      printf("0x1.p+0 OK\n");
  else
      printf("NG: 0x1.p+0 --> %g\n",d1);

  if (d2 == 2.0f)
      printf("0x2.p+0 OK\n");
  else
      printf("NG: 0x2.p+0 --> %g\n",d1);

  if (d3 == 1.0f)
      printf("0x1.0p0 OK\n");
  else
      printf("NG: 0x1.p0 --> %g\n",d1);

  if (d4 == 0.5f)
      printf("0x.8p0 OK\n");
  else
      printf("NG: 0x.8p0 --> %g\n",d1);

  if (d5 == 1.0f)
      printf("0x1.p0 OK\n");
  else
      printf("NG: 0x1.p0 --> %g\n",d1);

  if (d6 == 0.5f)
      printf("0x1.p-1 OK\n");
  else
      printf("NG: 0x1.p-1 --> %g\n",d1);

  if (d7 == 4.0f)
      printf("0x1.p+2 OK\n");
  else
      printf("NG: 0x1.p+2 --> %g\n",d1);

  if (d8 == 0.25f)
      printf("0x1.p-2 OK\n");
  else
      printf("NG: 0x1.p-2 --> %g\n",d1);
}

void double_event()
{
  double d1= 0x1.p+0;
  double d2= 0x2.p+0;
  double d3= 0x1.0p0;
  double d4= 0x.8p0;
  double d5= 0x1.p0;
  double d6= 0x1.p-1;
  double d7= 0x1.p+2;
  double d8= 0x1.p-2;

  printf("double event test\n");

  if (d1 == 1.0)
      printf("0x1.p+0 OK\n");
  else
      printf("NG: 0x1.p+0 --> %g\n",d1);

  if (d2 == 2.0)
      printf("0x2.p+0 OK\n");
  else
      printf("NG: 0x2.p+0 --> %g\n",d1);

  if (d3 == 1.0)
      printf("0x1.0p0 OK\n");
  else
      printf("NG: 0x1.p0 --> %g\n",d1);

  if (d4 == 0.5)
      printf("0x.8p0 OK\n");
  else
      printf("NG: 0x.8p0 --> %g\n",d1);

  if (d5 == 1.0)
      printf("0x1.p0 OK\n");
  else
      printf("NG: 0x1.p0 --> %g\n",d1);

  if (d6 == 0.5)
      printf("0x1.p-1 OK\n");
  else
      printf("NG: 0x1.p-1 --> %g\n",d1);

  if (d7 == 4.0)
      printf("0x1.p+2 OK\n");
  else
      printf("NG: 0x1.p+2 --> %g\n",d1);

  if (d8 == 0.25)
      printf("0x1.p-2 OK\n");
  else
      printf("NG: 0x1.p-2 --> %g\n",d1);
}

void longdouble_event()
{
  long double d1= 0x1.p+0L;
  long double d2= 0x2.p+0L;
  long double d3= 0x1.0p0L;
  long double d4= 0x.8p0L;
  long double d5= 0x1.p0L;
  long double d6= 0x1.p-1L;
  long double d7= 0x1.p+2L;
  long double d8= 0x1.p-2L;

  printf("long double event test\n");

  if (d1 == 1.0L)
      printf("0x1.p+0 OK\n");
  else
      printf("NG: 0x1.p+0 --> %Lg\n",d1);

  if (d2 == 2.0L)
      printf("0x2.p+0 OK\n");
  else
      printf("NG: 0x2.p+0 --> %Lg\n",d1);

  if (d3 == 1.0L)
      printf("0x1.0p0 OK\n");
  else
      printf("NG: 0x1.p0 --> %Lg\n",d1);

  if (d4 == 0.5L)
      printf("0x.8p0 OK\n");
  else
      printf("NG: 0x.8p0 --> %Lg\n",d1);

  if (d5 == 1.0L)
      printf("0x1.p0 OK\n");
  else
      printf("NG: 0x1.p0 --> %Lg\n",d1);

  if (d6 == 0.5L)
      printf("0x1.p-1 OK\n");
  else
      printf("NG: 0x1.p-1 --> %Lg\n",d1);

  if (d7 == 4.0L)
      printf("0x1.p+2 OK\n");
  else
      printf("NG: 0x1.p+2 --> %Lg\n",d1);

  if (d8 == 0.25L)
      printf("0x1.p-2 OK\n");
  else
      printf("NG: 0x1.p-2 --> %Lg\n",d1);
}
int main()
{
  float_event();
  double_event();
  longdouble_event();
}
