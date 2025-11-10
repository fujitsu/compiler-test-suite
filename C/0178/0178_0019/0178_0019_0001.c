#include <stdio.h>
#include <string.h>
#include <stdlib.h>

long longvar __attribute__((mode(HI), weak));
unsigned char  __attribute__((mode(DI), weak)) char_var;
unsigned long  ulVar __attribute__((mode(QI), weak));
double __attribute__((mode(SF), weak)) DVAR;
char charvar __attribute__((mode(byte), weak));
unsigned long long int __attribute__((mode(word))) llivar027;
int INTVAR __attribute__((mode(__pointer__), weak));
long long int __attribute__((mode(__byte__), weak)) lli030 ;

