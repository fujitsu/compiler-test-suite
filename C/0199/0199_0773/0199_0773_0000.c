#include <stdio.h>
extern unsigned char v1 (unsigned char);
extern unsigned char (*v2) (unsigned char);
extern void v3 (unsigned int, signed char, signed int, signed short);
extern void (*v4) (unsigned int, signed char, signed int, signed short);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern unsigned char v7 (unsigned char, signed char);
extern unsigned char (*v8) (unsigned char, signed char);
extern void v9 (signed char, signed short, signed int);
extern void (*v10) (signed char, signed short, signed int);
extern signed short v11 (signed char, signed int, signed short, unsigned short);
extern signed short (*v12) (signed char, signed int, signed short, unsigned short);
extern void v13 (unsigned short, unsigned char);
extern void (*v14) (unsigned short, unsigned char);
extern unsigned int v15 (unsigned char, unsigned char, unsigned int);
extern unsigned int (*v16) (unsigned char, unsigned char, unsigned int);
extern signed short v17 (signed char, unsigned short, unsigned short, unsigned short);
extern signed short (*v18) (signed char, unsigned short, unsigned short, unsigned short);
extern unsigned int v19 (unsigned char);
extern unsigned int (*v20) (unsigned char);
extern unsigned int v21 (unsigned char, unsigned short, unsigned char);
extern unsigned int (*v22) (unsigned char, unsigned short, unsigned char);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern signed short v25 (unsigned char);
extern signed short (*v26) (unsigned char);
extern void v27 (signed int, signed short, unsigned short, signed char);
extern void (*v28) (signed int, signed short, unsigned short, signed char);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 5;
unsigned char v32 = 0;
signed short v31 = 3;

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned char v36;
unsigned char v37;
v36 = 5 - 6;
v37 = v1 (v36);
history[history_index++] = (int)v37;
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
