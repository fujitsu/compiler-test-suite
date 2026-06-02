#include <stdio.h>
extern signed char v1 (signed char, signed short);
extern signed char (*v2) (signed char, signed short);
extern void v3 (signed char, unsigned char, signed short, signed char);
extern void (*v4) (signed char, unsigned char, signed short, signed char);
extern void v5 (signed short, unsigned char, unsigned int);
extern void (*v6) (signed short, unsigned char, unsigned int);
extern void v7 (void);
extern void (*v8) (void);
extern unsigned int v9 (signed int, unsigned short, unsigned int);
extern unsigned int (*v10) (signed int, unsigned short, unsigned int);
extern unsigned char v13 (unsigned short, signed int);
extern unsigned char (*v14) (unsigned short, signed int);
extern signed short v15 (unsigned int, signed int, signed short);
extern signed short (*v16) (unsigned int, signed int, signed short);
extern signed short v17 (signed short, signed int);
extern signed short (*v18) (signed short, signed int);
extern unsigned char v19 (unsigned short, unsigned short);
extern unsigned char (*v20) (unsigned short, unsigned short);
extern void v21 (signed int, signed int, unsigned int);
extern void (*v22) (signed int, signed int, unsigned int);
extern void v25 (signed short, signed short, unsigned char);
extern void (*v26) (signed short, signed short, unsigned char);
extern signed short v27 (signed int, unsigned char, unsigned short);
extern signed short (*v28) (signed int, unsigned char, unsigned short);
extern unsigned short v29 (unsigned char, signed char);
extern unsigned short (*v30) (unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 1;
signed char v32 = 2;
signed int v31 = 3;

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed char v36;
signed short v37;
signed char v38;
v36 = 3 - v32;
v37 = -1 + -4;
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
