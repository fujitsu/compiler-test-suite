#include <stdio.h>
extern unsigned int v1 (unsigned char, unsigned char, signed short);
extern unsigned int (*v2) (unsigned char, unsigned char, signed short);
extern unsigned char v5 (unsigned int, unsigned short, unsigned int, unsigned int);
extern unsigned char (*v6) (unsigned int, unsigned short, unsigned int, unsigned int);
extern void v7 (void);
extern void (*v8) (void);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern void v11 (signed char, signed short, signed int, signed short);
extern void (*v12) (signed char, signed short, signed int, signed short);
extern unsigned char v13 (signed char);
extern unsigned char (*v14) (signed char);
extern unsigned int v15 (signed int, signed int, signed char, unsigned char);
extern unsigned int (*v16) (signed int, signed int, signed char, unsigned char);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern unsigned char v19 (unsigned short, signed char, signed short);
extern unsigned char (*v20) (unsigned short, signed char, signed short);
extern unsigned int v21 (unsigned int, signed int);
extern unsigned int (*v22) (unsigned int, signed int);
extern unsigned short v23 (unsigned short, signed char, signed short);
extern unsigned short (*v24) (unsigned short, signed char, signed short);
extern unsigned char v25 (unsigned int, unsigned short, signed short, signed short);
extern unsigned char (*v26) (unsigned int, unsigned short, signed short, signed short);
extern unsigned int v27 (unsigned short, unsigned short, signed short);
extern unsigned int (*v28) (unsigned short, unsigned short, signed short);
extern unsigned char v29 (signed char, unsigned char);
extern unsigned char (*v30) (signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -1;
signed short v32 = -4;
unsigned char v31 = 2;

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned char v36;
unsigned char v37;
signed short v38;
unsigned int v39;
v36 = 5 - 2;
v37 = v31 - v31;
v38 = v32 - v33;
v39 = v1 (v36, v37, v38);
history[history_index++] = (int)v39;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
