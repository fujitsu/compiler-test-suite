#include <stdio.h>
extern unsigned char v1 (unsigned char, signed int, unsigned short);
extern unsigned char (*v2) (unsigned char, signed int, unsigned short);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern void v5 (signed short, signed short);
extern void (*v6) (signed short, signed short);
extern void v7 (signed int, unsigned char, signed char);
extern void (*v8) (signed int, unsigned char, signed char);
extern unsigned short v11 (unsigned short);
extern unsigned short (*v12) (unsigned short);
extern unsigned char v13 (unsigned short, signed char);
extern unsigned char (*v14) (unsigned short, signed char);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern signed char v19 (signed short, unsigned char, signed int);
extern signed char (*v20) (signed short, unsigned char, signed int);
extern void v23 (signed short, unsigned char, unsigned int);
extern void (*v24) (signed short, unsigned char, unsigned int);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern signed int v27 (signed short, signed char, signed char, signed int);
extern signed int (*v28) (signed short, signed char, signed char, signed int);
extern unsigned short v29 (signed int, signed short);
extern unsigned short (*v30) (signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -3;
unsigned short v32 = 0;
unsigned int v31 = 0U;

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned char v36;
signed int v37;
unsigned short v38;
unsigned char v39;
v36 = 6 + 0;
v37 = -3 - -2;
v38 = v32 - v32;
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
