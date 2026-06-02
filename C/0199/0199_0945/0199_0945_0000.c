#include <stdio.h>
extern unsigned char v1 (signed char, signed int, signed char);
extern unsigned char (*v2) (signed char, signed int, signed char);
extern unsigned short v7 (signed char, unsigned int, unsigned int, signed short);
extern unsigned short (*v8) (signed char, unsigned int, unsigned int, signed short);
extern unsigned short v9 (unsigned int);
extern unsigned short (*v10) (unsigned int);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern void v13 (unsigned int, unsigned char, signed char);
extern void (*v14) (unsigned int, unsigned char, signed char);
extern unsigned short v15 (unsigned char);
extern unsigned short (*v16) (unsigned char);
extern signed char v17 (unsigned int);
extern signed char (*v18) (unsigned int);
extern signed char v19 (signed int, signed short, signed char);
extern signed char (*v20) (signed int, signed short, signed char);
extern signed int v21 (unsigned char);
extern signed int (*v22) (unsigned char);
extern signed int v23 (unsigned short, signed short);
extern signed int (*v24) (unsigned short, signed short);
extern unsigned short v25 (unsigned int);
extern unsigned short (*v26) (unsigned int);
extern signed char v27 (unsigned char, unsigned char);
extern signed char (*v28) (unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 4;
signed char v32 = 2;
signed char v31 = -3;

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed char v36;
signed int v37;
signed char v38;
unsigned char v39;
v36 = v31 - v31;
v37 = -4 + -4;
v38 = v32 + 0;
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
