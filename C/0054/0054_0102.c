#include <stdio.h>

#define t  (T == 1)
#define f  (F != 0)

#define ok  printf("\t***** ok %d *****\n", __LINE__)
#define ng  printf("\t----- ng %d -----\n", __LINE__)
#define x   printf("x-x")

int T = 1;
int F = 0;

#define TA (t && t)
#define FA (f && t)
#define TB (t || f)
#define FB (f || f)
#define TC (f || t)
#define FC (t && f)






int main()
{
  if (t && t) ok; else ng;
  if (t && f) ng; else ok;
  if (f && t) ng; else ok;
  if (f && f) ng; else ok;

  if (t || t) ok; else ng;
  if (t || f) ok; else ng;
  if (f || t) ok; else ng;
  if (f || f) ng; else ok;

  if ((t || t) || (x,t)) ok; else ng;
  if ((t || f) || (x,f)) ok; else ng;
  if ((f || t) || (x,t)) ok; else ng;
  if ((f || f) || (x,f)) ng; else ok;

  if ((t && t) || (x,t)) ok; else ng;
  if ((t && f) || (x,f)) ng; else ok;
  if ((f && t) || (x,t)) ok; else ng;
  if ((f && f) || (x,f)) ng; else ok;

  if ((t || t) && t) ok; else ng;
  if ((t || f) && f) ng; else ok;
  if ((f || t) && t) ok; else ng;
  if ((f || f) && f) ng; else ok;

  if (((t || t) || (x,t)) && t) ok; else ng;
  if (((t || f) || (x,f)) && f) ng; else ok;
  if (((f || t) || (x,t)) && t) ok; else ng;
  if (((f || f) || (x,f)) && f) ng; else ok;

  if (((t && t) || (x,t)) && t) ok; else ng;
  if (((t && f) || (x,f)) && f) ng; else ok;
  if (((f && t) || (x,t)) && t) ok; else ng;
  if (((f && f) || (x,t)) && t) ok; else ng;
  if (((f && f) || (x,t)) && f) ng; else ok;
  if (((f && f) || (x,f)) && f) ng; else ok;

  if (((t && t) || TA) && t) ok; else ng;
  if (((t && f) || FA) && f) ng; else ok;
  if (((f && t) || TA) && t) ok; else ng;
  if (((f && f) || TA) && t) ok; else ng;
  if (((f && f) || TA) && f) ng; else ok;
  if (((f && f) || FA) && f) ng; else ok;

  if (((t && t) || (x,TB)) && t) ok; else ng;
  if (((t && f) || (x,FB)) && f) ng; else ok;
  if (((f && t) || (x,TB)) && t) ok; else ng;
  if (((f && f) || (x,TA)) && t) ok; else ng;
  if (((f && f) || (x,TB)) && f) ng; else ok;
  if (((f && f) || (x,FB)) && f) ng; else ok;

  if (((t && TC) || TA) && t) ok; else ng;
  if (((t && FC) || FA) && f) ng; else ok;
  if (((f && TC) || TA) && t) ok; else ng;
  if (((f && FC) || TA) && t) ok; else ng;
  if (((f && FC) || TA) && f) ng; else ok;
  if (((f && FC) || FA) && f) ng; else ok;

  if (((t && TC) || TB) && t) ok; else ng;
  if (((t && FC) || FB) && f) ng; else ok;
  if (((f && TC) || TB) && t) ok; else ng;
  if (((f && FC) || TA) && t) ok; else ng;
  if (((f && FC) || TB) && f) ng; else ok;
  if (((f && FC) || FB) && f) ng; else ok;

  if (((t && t) || t) && ( t && t) ) ok; else ng;
  if (((t && f) || f) && ( f || f) ) ng; else ok;
  if (((f && t) || t) && ( t || f) ) ok; else ng;
  if (((f && f) || t) && ( f || t) ) ok; else ng;
  if (((f && f) || t) && ( f && t) ) ng; else ok;
  if (((f && f) || f) && ( t && f) ) ng; else ok;

  if (((t && t) || t) && ( t && TA) ) ok; else ng;
  if (((t && f) || f) && ( f || FA) ) ng; else ok;
  if (((f && t) || t) && ( t || FA) ) ok; else ng;
  if (((f && f) || t) && ( f || TA) ) ok; else ng;
  if (((f && f) || t) && ( f && TA) ) ng; else ok;
  if (((f && f) || f) && ( t && TA) ) ng; else ok;

  if (((t && t) || t) && ( TB && TA) ) ok; else ng;
  if (((t && f) || f) && ( FB || FA) ) ng; else ok;
  if (((f && t) || t) && ( TB || FA) ) ok; else ng;
  if (((f && f) || t) && ( FB || TA) ) ok; else ng;
  if (((f && f) || t) && ( FB && TA) ) ng; else ok;
  if (((f && f) || f) && ( TA && TA) ) ng; else ok;

}

 
