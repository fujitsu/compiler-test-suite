#include <stdio.h>


#include <math.h>
#define ANS 28
int main()
{
  float f1, f2, f3;
  float t1, t2;
  volatile float v1, v2, v3;
  int ok = 0;

  f1 = (float)sin(0.0);
  f2 = 0.0F;
  f3 = (float)tan(0.0);
  t1 = 1.1F;
  t2 = 1.1F;
  v1 = 0.0F;
  v2 = (float)sin(0.0);
  v3 = 1.1F;

  
  if (f1 == 0.0 && f2 == 0.0)
    ok += 1;
  else
    printf("NG : %d\n",ok);

  
  if (f1 == 0.0 && f2 == 0.0 && f3 == 0.0)
    ok += 1;
  else
    printf("NG : %d\n",ok);

  
  if (f1 == 0.0 || f2 == 0.0)
    ok += 1;
  else
    printf("NG : %d\n",ok);

  
  if (f1 == 0.0 || f2 == 0.0 || f3 == 0.0)
    ok += 1;
  else
    printf("NG : %d\n",ok);

  
  if (f1 == 0.0 && f2 == 0.0 || f3 == 0.0)
    ok += 1;
  else
    printf("NG : %d\n",ok);

  
  if (f1 == 0.0 || f2 == 0.0 && f3 == 0.0)
    ok += 1;
  else
    printf("NG : %d\n",ok);

  
  if (t1 == 1.1 && f1 == 0.0)
    printf("NG : %d\n",ok);
  else
    ok += 1;

  
  if (f1 == 0.0 && t1 == 1.1)
    printf("NG : %d\n",ok);
  else
    ok += 1;

  
  if (t1 == 1.1 || f1 == 0.0)
    ok += 1;
  else
    printf("NG : %d\n",ok);

  
  if (f1 == 0.0 || t1 == 1.1)
    ok += 1;
  else
    printf("NG : %d\n",ok);

  
  if (t1 == 1.1 && f1 == 0.0 && f2 == 0.0)
    printf("NG : %d\n",ok);
  else
    ok += 1;

  
  if (t1 == 1.1 || f1 == 0.0 || f2 == 0.0)
    ok += 1;
  else
    printf("NG : %d\n",ok);

  
  if (t1 == 1.1 || f1 == 0.0 || t2 == 1.1)
    ok += 1;
  else
    printf("NG : %d\n",ok);

  
  if (t1 == 1.1 || f1 == 0.0 && f2 == 0.0)
    ok += 1;
  else
    printf("NG : %d\n",ok);

  
  if (t1 == 1.1 && (f1 == 0.0 || f2 == 0.0))
    printf("NG : %d\n",ok);
  else
    ok += 1;

  
  if (t1 == 1.1 || t2 == 1.1 && f2 == 0.0)
    printf("NG : %d\n",ok);
  else
    ok += 1;

  
  if (v1 == 0.0)
    ok += 1;
  else
    printf("NG : %d\n",ok);

  
  if (v3 == 1.1)
    printf("NG : %d\n",ok);
  else
    ok += 1;

  
  if (v1 == 0.0 && v2 == 0.0)
    ok += 1;
  else
    printf("NG : %d\n",ok);

  
  if (v1 == 0.0 || v2 == 0.0)
    ok += 1;
  else
    printf("NG : %d\n",ok);

  
  if (f1 == 0.0 && v2 == 0.0)
    ok += 1;
  else
    printf("NG : %d\n",ok);

  
  if (v2 == 0.0 && f1 == 0.0)
    ok += 1;
  else
    printf("NG : %d\n",ok);

  
  if (f1 == 0.0 || v2 == 0.0)
    ok += 1;
  else
    printf("NG : %d\n",ok);

  
  if (v2 == 0.0 || f1 == 0.0)
    ok += 1;
  else
    printf("NG : %d\n",ok);

  
  if (v3 == 1.1 && f1 == 0.0)
    printf("NG : %d\n",ok);
  else
    ok += 1;

  
  if (v3 == 1.1 || f1 == 0.0)
    ok += 1;
  else
    printf("NG : %d\n",ok);

  
  if (v3 == 1.1 && t1 == 1.1)
    printf("NG : %d\n",ok);
  else
    ok += 1;

  
  if (v3 == 1.1 || f1 == 1.1)
    printf("NG : %d\n",ok);
  else
    ok += 1;

  if (ok == ANS) 
    printf("OK\n");
}
