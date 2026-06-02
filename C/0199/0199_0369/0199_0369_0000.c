#include <stdio.h>
extern unsigned short v1 (signed int, unsigned char);
extern unsigned short (*v2) (signed int, unsigned char);
extern signed int v3 (unsigned char, unsigned int, signed char);
extern signed int (*v4) (unsigned char, unsigned int, signed char);
extern unsigned int v5 (signed short);
extern unsigned int (*v6) (signed short);
extern unsigned char v7 (signed int, unsigned short, signed char);
extern unsigned char (*v8) (signed int, unsigned short, signed char);
extern unsigned int v9 (unsigned int);
extern unsigned int (*v10) (unsigned int);
extern unsigned char v11 (unsigned int, signed char);
extern unsigned char (*v12) (unsigned int, signed char);
extern signed int v13 (signed int, unsigned char, signed short);
extern signed int (*v14) (signed int, unsigned char, signed short);
extern unsigned short v15 (unsigned short, signed int, signed short);
extern unsigned short (*v16) (unsigned short, signed int, signed short);
extern signed short v17 (unsigned char, signed short, unsigned int);
extern signed short (*v18) (unsigned char, signed short, unsigned int);
extern signed char v19 (unsigned int, signed short, unsigned int, unsigned int);
extern signed char (*v20) (unsigned int, signed short, unsigned int, unsigned int);
extern signed int v23 (unsigned short);
extern signed int (*v24) (unsigned short);
extern signed char v25 (unsigned char, signed int, signed char, signed int);
extern signed char (*v26) (unsigned char, signed int, signed char, signed int);
extern void v27 (signed int, unsigned char, signed char);
extern void (*v28) (signed int, unsigned char, signed char);
extern void v29 (signed char);
extern void (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 1U;
signed char v32 = -4;
signed int v31 = -1;

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed int v36;
unsigned char v37;
unsigned short v38;
v36 = v31 + v31;
v37 = 0 - 1;
v38 = v1 (v36, v37);
history[history_index++] = (int)v38;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
