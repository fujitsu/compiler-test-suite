#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (signed short);
extern signed int (*v2) (signed short);
extern unsigned char v3 (signed short);
extern unsigned char (*v4) (signed short);
extern signed short v7 (unsigned int, signed char, signed int);
extern signed short (*v8) (unsigned int, signed char, signed int);
extern signed char v13 (signed int, signed short);
extern signed char (*v14) (signed int, signed short);
extern unsigned int v15 (unsigned int, unsigned char);
extern unsigned int (*v16) (unsigned int, unsigned char);
extern signed char v17 (unsigned short, unsigned int, unsigned char);
extern signed char (*v18) (unsigned short, unsigned int, unsigned char);
extern signed char v19 (signed char, signed char);
extern signed char (*v20) (signed char, signed char);
void v21 (unsigned char, signed int);
void (*v22) (unsigned char, signed int) = v21;
extern unsigned char v23 (unsigned char, signed int);
extern unsigned char (*v24) (unsigned char, signed int);
extern signed char v25 (unsigned int, signed char);
extern signed char (*v26) (unsigned int, signed char);
extern void v29 (unsigned int, signed int);
extern void (*v30) (unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 0;
signed int v32 = 2;
unsigned char v31 = 5;

void v21 (unsigned char v34, signed int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed int v38 = 0;
unsigned char v37 = 4;
unsigned char v36 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed short v41;
signed int v42;
v41 = -4 + v33;
v42 = v1 (v41);
history[history_index++] = (int)v42;
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
