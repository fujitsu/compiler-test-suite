#include <stdio.h>
extern unsigned int v1 (unsigned char);
extern unsigned int (*v2) (unsigned char);
extern unsigned int v3 (signed short, signed char);
extern unsigned int (*v4) (signed short, signed char);
extern unsigned short v5 (signed char, unsigned short, unsigned char);
extern unsigned short (*v6) (signed char, unsigned short, unsigned char);
extern unsigned short v7 (unsigned char, unsigned char, signed char);
extern unsigned short (*v8) (unsigned char, unsigned char, signed char);
extern signed char v9 (unsigned char, unsigned char, unsigned short, signed char);
extern signed char (*v10) (unsigned char, unsigned char, unsigned short, signed char);
extern unsigned char v11 (signed int);
extern unsigned char (*v12) (signed int);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern unsigned short v17 (signed char, unsigned short);
extern unsigned short (*v18) (signed char, unsigned short);
extern unsigned char v19 (signed int, unsigned short);
extern unsigned char (*v20) (signed int, unsigned short);
extern void v21 (unsigned short, signed char);
extern void (*v22) (unsigned short, signed char);
extern unsigned short v23 (unsigned char);
extern unsigned short (*v24) (unsigned char);
extern signed int v29 (unsigned short, unsigned int);
extern signed int (*v30) (unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 1U;
unsigned short v32 = 3;
signed short v31 = -2;

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned char v36;
unsigned int v37;
v36 = 3 + 0;
v37 = v1 (v36);
history[history_index++] = (int)v37;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
