#include <stdio.h>
extern unsigned short v1 (unsigned short, signed int);
extern unsigned short (*v2) (unsigned short, signed int);
extern signed int v3 (unsigned short, unsigned short, signed int, unsigned char);
extern signed int (*v4) (unsigned short, unsigned short, signed int, unsigned char);
extern signed int v5 (unsigned short, unsigned char, unsigned char, signed char);
extern signed int (*v6) (unsigned short, unsigned char, unsigned char, signed char);
extern signed short v7 (unsigned char, unsigned short, signed int, signed char);
extern signed short (*v8) (unsigned char, unsigned short, signed int, signed char);
extern unsigned char v9 (signed short, unsigned int, signed char, signed char);
extern unsigned char (*v10) (signed short, unsigned int, signed char, signed char);
extern void v11 (unsigned char, signed short, unsigned short, signed int);
extern void (*v12) (unsigned char, signed short, unsigned short, signed int);
extern signed int v13 (unsigned short, signed short, signed short, unsigned char);
extern signed int (*v14) (unsigned short, signed short, signed short, unsigned char);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern unsigned short v19 (signed short, signed short);
extern unsigned short (*v20) (signed short, signed short);
extern signed int v21 (unsigned char, unsigned short, signed int, signed char);
extern signed int (*v22) (unsigned char, unsigned short, signed int, signed char);
extern unsigned int v23 (unsigned char);
extern unsigned int (*v24) (unsigned char);
extern signed short v25 (signed short);
extern signed short (*v26) (signed short);
extern void v27 (signed int, unsigned short);
extern void (*v28) (signed int, unsigned short);
extern signed int v29 (unsigned int, unsigned int);
extern signed int (*v30) (unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 6U;
signed char v32 = 1;
signed short v31 = -3;

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned short v36;
signed int v37;
unsigned short v38;
v36 = 6 + 0;
v37 = -2 - -3;
v38 = v1 (v36, v37);
history[history_index++] = (int)v38;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
