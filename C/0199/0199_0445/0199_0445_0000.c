#include <stdio.h>
extern signed short v1 (signed int, unsigned short);
extern signed short (*v2) (signed int, unsigned short);
extern unsigned char v3 (signed short, signed short);
extern unsigned char (*v4) (signed short, signed short);
extern unsigned char v5 (signed int, unsigned char, unsigned int, signed char);
extern unsigned char (*v6) (signed int, unsigned char, unsigned int, signed char);
extern unsigned short v7 (signed short);
extern unsigned short (*v8) (signed short);
extern signed int v9 (unsigned short);
extern signed int (*v10) (unsigned short);
extern unsigned char v11 (unsigned short, unsigned int, unsigned char);
extern unsigned char (*v12) (unsigned short, unsigned int, unsigned char);
extern void v13 (unsigned short, unsigned short, unsigned char, unsigned char);
extern void (*v14) (unsigned short, unsigned short, unsigned char, unsigned char);
extern void v15 (void);
extern void (*v16) (void);
extern signed char v17 (unsigned int, unsigned char, signed short, signed char);
extern signed char (*v18) (unsigned int, unsigned char, signed short, signed char);
extern signed short v19 (signed char, signed short);
extern signed short (*v20) (signed char, signed short);
extern signed short v21 (unsigned int, signed char, unsigned short, signed char);
extern signed short (*v22) (unsigned int, signed char, unsigned short, signed char);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern void v27 (void);
extern void (*v28) (void);
extern signed int v29 (unsigned int, unsigned int, unsigned short);
extern signed int (*v30) (unsigned int, unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 7;
signed char v32 = 2;
unsigned short v31 = 2;

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed int v36;
unsigned short v37;
signed short v38;
v36 = -2 - -3;
v37 = 0 + 7;
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
