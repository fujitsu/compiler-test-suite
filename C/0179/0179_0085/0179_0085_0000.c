#include <stdlib.h>
#include <stdio.h>
extern unsigned short v1 (unsigned short, signed char, double);
extern unsigned short (*v2) (unsigned short, signed char, double);
extern signed char v3 (unsigned short, double, signed int, signed short);
extern signed char (*v4) (unsigned short, double, signed int, signed short);
extern double v5 (void);
extern double (*v6) (void);
extern double v7 (unsigned short, double);
extern double (*v8) (unsigned short, double);
extern double v9 (unsigned char, float, signed char);
extern double (*v10) (unsigned char, float, signed char);

int history[1000];
int history_index = 0;
int trace = -1;
int main() {
{
unsigned short v11;
signed char v12;
double v13;
unsigned short v14;
v11=111;
v12='a';
v13=111111.2222222;
v14 = v1 (v11, v12, v13);
history[history_index++] = (int)v14;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
