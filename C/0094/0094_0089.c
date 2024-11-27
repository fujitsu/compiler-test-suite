#include  <stdio.h>
void sub();
int main()
{
int i;
unsigned u;
float f;
double d;
#ifdef __STDC__
long
#endif
 double ld;
i = 0x7fffffff;
sub(&i);
f = i;
sub(&i);
d = i;
sub(&i);
ld = i;
sub(&f);
sub(&d);
sub(&ld);

if (f == (float)2147483647.0) printf("OK 1-1-1\n");
else printf("NG 1-1-1%s f = %g\n","",f);
if (d == 2147483647.0) printf("OK 1-1-2\n");
else printf("NG 1-1-2%s d = %g\n","",d);

#ifdef __STDC__
if (ld == 2147483647.0) printf("OK 1-1-3\n");
else printf("NG 1-1-3%s ld = %g\n","",(double)ld);
#endif
 
i = 0x80000000;
sub(&i);
f = i;
sub(&i);
d = i;
sub(&i);
ld = i;
sub(&f);
sub(&d);
sub(&ld);

#if INT64
if (f == (float)+2147483648.0) printf("OK 1-2-1\n");
#else
if (f == (float)-2147483648.0) printf("OK 1-2-1\n");
#endif
else printf("NG 1-2-1%s f = %g\n","",f);

#if INT64
if (d == +2147483648.0) printf("OK 1-2-2\n");
#else
if (d == -2147483648.0) printf("OK 1-2-2\n");
#endif
else printf("NG 1-2-2%s d = %g\n","",d);

#ifdef __STDC__
#if INT64
if (ld == +2147483648.0) printf("OK 1-2-3\n");
#else
if (ld == -2147483648.0) printf("OK 1-2-3\n");
#endif
else printf("NG 1-2-3%s ld = %g\n","",(double)ld);
#endif

u = 0x7fffffff;
sub(&u);
f = u;
sub(&u);
d = u;
sub(&u);
ld = u;
sub(&f);
sub(&d);
sub(&ld);

if (f == (float)2147483647.0) printf("OK 2-1-1\n");
else printf("NG 2-1-1%s f = %g\n","",f);
if (d == 2147483647.0) printf("OK 2-1-2\n");
else printf("NG 2-1-2%s d = %g\n","",d);

#ifdef __STDC__
if (ld == 2147483647.0) printf("OK 2-1-3\n");
else printf("NG 2-1-3%s ld = %g\n","",(double)ld);
#endif
 
u = 0xFFFFFFFF;
sub(&u);
f = u;
sub(&u);
d = u;
sub(&u);
ld = u;
sub(&f);
sub(&d);
sub(&ld);

if (f == (float)4294967295.0) printf("OK 2-2-1\n");
else printf("NG 2-2-1%s f = %g\n","",f);
if (d == 4294967295.0) printf("OK 2-2-2\n");
else printf("NG 2-2-2%s d = %g\n","",d);

#ifdef __STDC__
if (ld == 4294967295.0) printf("OK 2-2-3\n");
else printf("NG 2-2-3%s ld = %g\n","",(double)ld);
#endif
}

void sub(p)
void *p;
{ }
