#include <stdio.h>
extern signed char v1 (signed int);
extern signed char (*v2) (signed int);
extern unsigned char v3 (signed short, unsigned short, signed char);
extern unsigned char (*v4) (signed short, unsigned short, signed char);
extern void v7 (signed int);
extern void (*v8) (signed int);
extern void v11 (signed short, unsigned int, signed char);
extern void (*v12) (signed short, unsigned int, signed char);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern unsigned short v17 (unsigned int, unsigned char, unsigned int, unsigned short);
extern unsigned short (*v18) (unsigned int, unsigned char, unsigned int, unsigned short);
extern signed char v19 (signed char, signed char, unsigned short);
extern signed char (*v20) (signed char, signed char, unsigned short);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern signed short v25 (unsigned short, signed int);
extern signed short (*v26) (unsigned short, signed int);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern void v29 (signed int, unsigned char, unsigned int);
extern void (*v30) (signed int, unsigned char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 5;
signed char v32 = 3;
signed int v31 = 2;

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed int v36;
signed char v37;
v36 = -3 - v31;
v37 = v1 (v36);
history[history_index++] = (int)v37;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
