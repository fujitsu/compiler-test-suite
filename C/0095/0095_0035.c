#include <stdio.h>
void sub();
int main()
{
long long int i;
unsigned long long u;
float f;
double d;
long double ld;


i = 0x7fffffffffffffffLL;
sub(&i);
f = i;
sub(&i);
d = i;
sub(&i);
ld = i;
sub(&f);
sub(&d);
sub(&ld);

if (f == (float)9223372036854775807.0) printf("OK 1-1-1\n");
else                                   printf("NG 1-1-1%s f = %g\n","",f);
if (d == 9223372036854775807.0) printf("OK 1-1-2\n");
else                            printf("NG 1-1-2%s d = %g\n","",d);
if (ld == 9223372036854775807.0L) printf("OK 1-1-3\n");
else                             printf("NG 1-1-3%s ld = %g\n","",(double)ld);
 

i = 0x8000000000000000LL;
sub(&i);
f = i;
sub(&i);
d = i;
sub(&i);
ld = i;
sub(&f);
sub(&d);
sub(&ld);
if (f == (float)-9223372036854775808.0) printf("OK 1-2-1\n");
else                                    printf("NG 1-2-1%s f = %g\n","",f);
if (d == -9223372036854775808.0) printf("OK 1-2-2\n");
else                             printf("NG 1-2-2%s d = %g\n","",d);
if (ld == -9223372036854775808.0L) printf("OK 1-2-3\n");
else                              printf("NG 1-2-3%s ld = %g\n","",(double)ld);

u = 0x7fffffffffffffffULL;
sub(&u);
f = u;
sub(&u);
d = u;
sub(&u);
ld = u;
sub(&f);
sub(&d);
sub(&ld);

if (f == (float)9223372036854775807.0) printf("OK 1-3-1\n");
else                                   printf("NG 1-3-1%s f = %g\n","",f);
if (d == 9223372036854775807.0) printf("OK 1-3-2\n");
else                            printf("NG 1-3-2%s d = %g\n","",d);
if (ld == 9223372036854775807.0L) printf("OK 1-3-3\n");
else                             printf("NG 1-3-3%s ld = %g\n","",(double)ld);
 

u = 0xFFFFFFFFFFFFFFFFULL;
sub(&u);
f = u;
sub(&u);
d = u;
sub(&u);
ld = u;
sub(&f);
sub(&d);
sub(&ld);


if (f == (float)18446744073709551615.0) printf("OK 1-4-1\n");
else                                    printf("NG 1-4-1%s f = %g\n","",f);
if (d == 18446744073709551615.0) printf("OK 1-4-2\n");
else                             printf("NG 1-4-2%s d = %g\n","",d);
if (ld == 18446744073709551615.0L) printf("OK 1-4-3\n");
else                              printf("NG 1-4-3%s ld = %g\n","",(double)ld);
}

void sub(p)
void *p;
{ }
