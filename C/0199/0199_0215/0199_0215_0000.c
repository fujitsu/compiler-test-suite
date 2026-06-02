#include <stdio.h>
extern unsigned char v1 (unsigned char, signed short);
extern unsigned char (*v2) (unsigned char, signed short);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern unsigned int v5 (signed char, unsigned short, signed char, unsigned char);
extern unsigned int (*v6) (signed char, unsigned short, signed char, unsigned char);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed short v11 (signed char, unsigned short, unsigned char);
extern signed short (*v12) (signed char, unsigned short, unsigned char);
extern signed int v13 (unsigned short, signed int, signed char, signed short);
extern signed int (*v14) (unsigned short, signed int, signed char, signed short);
extern signed int v15 (unsigned int, unsigned int, signed short, unsigned short);
extern signed int (*v16) (unsigned int, unsigned int, signed short, unsigned short);
extern signed short v19 (unsigned int, unsigned int, unsigned short, signed int);
extern signed short (*v20) (unsigned int, unsigned int, unsigned short, signed int);
extern signed int v21 (unsigned int, signed int, signed short, signed int);
extern signed int (*v22) (unsigned int, signed int, signed short, signed int);
extern void v23 (signed char);
extern void (*v24) (signed char);
extern unsigned int v27 (unsigned char, unsigned int, unsigned short, unsigned int);
extern unsigned int (*v28) (unsigned char, unsigned int, unsigned short, unsigned int);
extern signed int v29 (unsigned int, unsigned char, unsigned char);
extern signed int (*v30) (unsigned int, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 2;
unsigned short v32 = 4;
signed short v31 = -2;

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned char v36;
signed short v37;
unsigned char v38;
v36 = 4 + 5;
v37 = 2 + 3;
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
