#include <stdlib.h>
#include <stdio.h>
extern signed int v1 (unsigned char, signed char, float);
extern signed int (*v2) (unsigned char, signed char, float);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern float v5 (unsigned int, unsigned short);
extern float (*v6) (unsigned int, unsigned short);
extern void v7 (unsigned int, unsigned char, float, unsigned int);
extern void (*v8) (unsigned int, unsigned char, float, unsigned int);
extern float v9 (unsigned short, unsigned int, unsigned int, float);
extern float (*v10) (unsigned short, unsigned int, unsigned int, float);

int history[1000];
int history_index = 0;
int trace = -1;
int main() {
{
unsigned char v11;
signed char v12;
float v13;
signed int v14;
v11='A';
v12='a';
v13=1.234;
v14 = (*v2) (v11, v12, v13);
history[history_index++] = (int)v14;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
