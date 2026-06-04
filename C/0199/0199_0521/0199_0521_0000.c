#include <stdio.h>
extern unsigned char v1 (signed char, unsigned int, signed char);
extern unsigned char (*v2) (signed char, unsigned int, signed char);
extern void v3 (signed int);
extern void (*v4) (signed int);
extern signed short v5 (signed int, signed int, unsigned char, signed char);
extern signed short (*v6) (signed int, signed int, unsigned char, signed char);
extern unsigned short v7 (unsigned char, unsigned int);
extern unsigned short (*v8) (unsigned char, unsigned int);
extern signed char v9 (unsigned int, signed char);
extern signed char (*v10) (unsigned int, signed char);
extern signed int v11 (unsigned int, unsigned int, unsigned char);
extern signed int (*v12) (unsigned int, unsigned int, unsigned char);
extern signed short v13 (signed int, unsigned char, signed short);
extern signed short (*v14) (signed int, unsigned char, signed short);
extern unsigned int v15 (unsigned short, signed char, signed char);
extern unsigned int (*v16) (unsigned short, signed char, signed char);
extern signed int v17 (unsigned char, unsigned short, unsigned short);
extern signed int (*v18) (unsigned char, unsigned short, unsigned short);
extern signed int v19 (signed char);
extern signed int (*v20) (signed char);
extern signed char v21 (unsigned int, unsigned int, signed int);
extern signed char (*v22) (unsigned int, unsigned int, signed int);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern unsigned short v25 (unsigned char, signed char);
extern unsigned short (*v26) (unsigned char, signed char);
extern signed short v27 (unsigned char, unsigned short, signed char);
extern signed short (*v28) (unsigned char, unsigned short, signed char);
extern unsigned int v29 (signed char, unsigned char, unsigned int);
extern unsigned int (*v30) (signed char, unsigned char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 2U;
unsigned short v32 = 3;
unsigned short v31 = 7;

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed char v36;
unsigned int v37;
signed char v38;
unsigned char v39;
v36 = 3 + 0;
v37 = v33 - 6U;
v38 = 3 + 3;
v39 = v1 (v36, v37, v38);
history[history_index++] = (int)v39;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
