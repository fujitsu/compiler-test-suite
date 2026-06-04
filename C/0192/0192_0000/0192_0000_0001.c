#include <stdio.h>
#include <complex.h>

float _Complex calc11(float _Complex b, float _Complex c, float _Complex d)
{
  return b+c+d;
}

float _Complex calc12(float _Complex b, float _Complex c, float _Complex d)
{
  return b+(c+d);
}

float _Complex calc13(float _Complex b, float _Complex c, float _Complex d)
{
  return b-(c+d);
}

float _Complex calc14(float _Complex b, float _Complex c, float _Complex d)
{
  return b*(c+d);
}

float _Complex calc15(float _Complex b, float _Complex c, float _Complex d)
{
  return b/(c+d);
}

float _Complex calc16(float _Complex b, float _Complex c, float _Complex d)
{
  return b+(c-d);
}

float _Complex calc17(float _Complex b, float _Complex c, float _Complex d)
{
  return b-(c-d);
}

float _Complex calc18(float _Complex b, float _Complex c, float _Complex d)
{
  return b*(c-d);
}

float _Complex calc19(float _Complex b, float _Complex c, float _Complex d)
{
  return b/(c-d);
}

float _Complex calc20(float _Complex b, float _Complex c, float _Complex d)
{
  return b+c*d;
}
float _Complex calc21(float _Complex b, float _Complex c, float _Complex d)
{
  return b-c*d;
}

float _Complex calc22(float _Complex b, float _Complex c, float _Complex d)
{
  return b*(c*d);
}

float _Complex calc23(float _Complex b, float _Complex c, float _Complex d)
{
  return b/(c*d);
}

float _Complex calc24(float _Complex b, float _Complex c, float _Complex d)
{
  return b+c/d;
}

float _Complex calc25(float _Complex b, float _Complex c, float _Complex d)
{
  return b-c/d;
}

float _Complex calc26(float _Complex b, float _Complex c, float _Complex d)
{
  return b*(c/d);
}

float _Complex calc27(float _Complex b, float _Complex c, float _Complex d)
{
  return b/(c/d);
}

double _Complex calc28(double _Complex b, double _Complex c, double _Complex d)
{
  return b+c+d;
}

double _Complex calc29(double _Complex b, double _Complex c, double _Complex d)
{
  return b+(c+d);
}

double _Complex calc30(double _Complex b, double _Complex c, double _Complex d)
{
  return b-(c+d);
}

double _Complex calc31(double _Complex b, double _Complex c, double _Complex d)
{
  return b*(c+d);
}

double _Complex calc32(double _Complex b, double _Complex c, double _Complex d)
{
  return b/(c+d);
}

double _Complex calc33(double _Complex b, double _Complex c, double _Complex d)
{
  return b+(c-d);
}

double _Complex calc34(double _Complex b, double _Complex c, double _Complex d)
{
  return b-(c-d);
}

double _Complex calc35(double _Complex b, double _Complex c, double _Complex d)
{
  return b*(c-d);
}

double _Complex calc36(double _Complex b, double _Complex c, double _Complex d)
{
  return b/(c-d);
}

double _Complex calc37(double _Complex b, double _Complex c, double _Complex d)
{
  return b+c*d;
}

double _Complex calc38(double _Complex b, double _Complex c, double _Complex d)
{
  return b-c*d;
}

double _Complex calc39(double _Complex b, double _Complex c, double _Complex d)
{
  return b*(c*d);
}

double _Complex calc40(double _Complex b, double _Complex c, double _Complex d)
{
  return b/(c*d);
}

double _Complex calc41(double _Complex b, double _Complex c, double _Complex d)
{
  return b+c/d;
}

double _Complex calc42(double _Complex b, double _Complex c, double _Complex d)
{
  return b-c/d;
}

double _Complex calc43(double _Complex b, double _Complex c, double _Complex d)
{
  return b*(c/d);
}

double _Complex calc44(double _Complex b, double _Complex c, double _Complex d)
{
  return b/(c/d);
}

float _Complex calc1(float _Complex b, float _Complex c, float _Complex d,
		     float _Complex e, float _Complex f, float _Complex g, 
		     float _Complex h)
{
  return ((b+c)+(c+d)+(e+f)+(g+h));
}

float _Complex calc2(float _Complex b, float _Complex c, float _Complex d,
		     float _Complex e)
{
  return ((b+c)-(c+d))*e;
}

float _Complex calc3(float _Complex b, float _Complex c, float _Complex d,
		     float _Complex e, float _Complex f, float _Complex g, 
		     float _Complex h)
{
  return e*((b/c)/(c*d))/((f+g)*h);
}

float _Complex calc4(float _Complex b, float _Complex c, float _Complex d,
		     float _Complex e, float _Complex f, float _Complex g, 
		     float _Complex h)
{
  return e*((b/c)/(c*d))/((f+g)*h);
}

