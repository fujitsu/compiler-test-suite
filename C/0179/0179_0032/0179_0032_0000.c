#include <stdlib.h>
#include <stdio.h>
extern double v1 (unsigned short, unsigned short);
extern double (*v2) (unsigned short, unsigned short);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern unsigned char v5 (signed short);
extern unsigned char (*v6) (signed short);
extern double v7 (void);
extern double (*v8) (void);
extern double v9 (unsigned char, double, unsigned char);
extern double (*v10) (unsigned char, double, unsigned char);

int history[1000];
int history_index = 0;
int trace = -1;
int main() {
{
unsigned short v11;
unsigned short v12;
double v13;
v11=111;
v12=111;
v13 = (*v2) (v11, v12);
history[history_index++] = (int)v13;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
