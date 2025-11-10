#include <stdlib.h>
#include <stdio.h>
extern signed int v1 (unsigned short, signed int);
extern signed int (*v2) (unsigned short, signed int);
extern signed short v3 (signed int, unsigned int, unsigned short, signed int);
extern signed short (*v4) (signed int, unsigned int, unsigned short, signed int);
extern unsigned int v5 (unsigned short, signed short, signed char);
extern unsigned int (*v6) (unsigned short, signed short, signed char);
extern signed int v7 (signed short);
extern signed int (*v8) (signed short);
extern signed char v9 (void);
extern signed char (*v10) (void);

int history[1000];
int history_index = 0;
int trace = -1;
int main() {
{
unsigned short v11;
signed int v12;
signed int v13;
v11=111;
v12=-199999;
v13 = v1 (v11, v12);
history[history_index++] = (int)v13;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
