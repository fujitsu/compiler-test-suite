#include <stdio.h>
extern signed short v1 (unsigned short, signed short, signed short, unsigned int);
extern signed short (*v2) (unsigned short, signed short, signed short, unsigned int);
extern unsigned short v3 (unsigned int, signed char, unsigned char);
extern unsigned short (*v4) (unsigned int, signed char, unsigned char);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern unsigned short v9 (signed char);
extern unsigned short (*v10) (signed char);
extern void v11 (unsigned short, unsigned int, unsigned short);
extern void (*v12) (unsigned short, unsigned int, unsigned short);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern unsigned char v19 (signed char, unsigned short, unsigned short, signed char);
extern unsigned char (*v20) (signed char, unsigned short, unsigned short, signed char);
extern signed int v21 (signed short, signed char);
extern signed int (*v22) (signed short, signed char);
extern void v23 (unsigned char);
extern void (*v24) (unsigned char);
extern unsigned int v25 (unsigned char, signed char, signed int, unsigned int);
extern unsigned int (*v26) (unsigned char, signed char, signed int, unsigned int);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 1;
unsigned int v32 = 6U;
signed int v31 = -2;

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned short v36;
signed short v37;
signed short v38;
unsigned int v39;
signed short v40;
v36 = v33 + v33;
v37 = 2 - 0;
v38 = -2 - 3;
v39 = v32 - v32;
v40 = v1 (v36, v37, v38, v39);
history[history_index++] = (int)v40;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
