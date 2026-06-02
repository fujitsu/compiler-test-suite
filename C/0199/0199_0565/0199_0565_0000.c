#include <stdio.h>
extern unsigned short v1 (signed char, signed char, unsigned char);
extern unsigned short (*v2) (signed char, signed char, unsigned char);
extern unsigned int v3 (signed int);
extern unsigned int (*v4) (signed int);
extern unsigned char v5 (unsigned char, unsigned char);
extern unsigned char (*v6) (unsigned char, unsigned char);
extern unsigned char v7 (unsigned char, signed int, signed int, signed int);
extern unsigned char (*v8) (unsigned char, signed int, signed int, signed int);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern unsigned char v11 (unsigned int, signed char);
extern unsigned char (*v12) (unsigned int, signed char);
extern signed char v13 (signed short);
extern signed char (*v14) (signed short);
extern signed int v15 (signed short, signed char, unsigned int, signed char);
extern signed int (*v16) (signed short, signed char, unsigned int, signed char);
extern void v19 (signed int, signed int, unsigned char, signed char);
extern void (*v20) (signed int, signed int, unsigned char, signed char);
extern signed short v21 (signed short, unsigned int, unsigned int);
extern signed short (*v22) (signed short, unsigned int, unsigned int);
extern signed int v23 (signed int);
extern signed int (*v24) (signed int);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed short v27 (unsigned short, unsigned int);
extern signed short (*v28) (unsigned short, unsigned int);
extern signed short v29 (unsigned short, unsigned int, signed int, unsigned char);
extern signed short (*v30) (unsigned short, unsigned int, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -4;
unsigned int v32 = 1U;
unsigned char v31 = 1;

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed char v36;
signed char v37;
unsigned char v38;
unsigned short v39;
v36 = 1 + v33;
v37 = v33 - 1;
v38 = 3 + v31;
v39 = v1 (v36, v37, v38);
history[history_index++] = (int)v39;
}
} while (trace < 15);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
