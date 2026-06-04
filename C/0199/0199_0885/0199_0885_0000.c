#include <stdio.h>
extern void v1 (unsigned int, signed int, signed char);
extern void (*v2) (unsigned int, signed int, signed char);
extern signed short v3 (signed short, unsigned char, signed char, unsigned short);
extern signed short (*v4) (signed short, unsigned char, signed char, unsigned short);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern signed short v7 (signed int, signed int);
extern signed short (*v8) (signed int, signed int);
extern signed char v9 (unsigned char, signed short, unsigned short);
extern signed char (*v10) (unsigned char, signed short, unsigned short);
extern unsigned char v11 (signed int);
extern unsigned char (*v12) (signed int);
extern unsigned short v13 (unsigned short, signed char, signed char, signed int);
extern unsigned short (*v14) (unsigned short, signed char, signed char, signed int);
extern unsigned char v15 (signed char, unsigned char, signed char);
extern unsigned char (*v16) (signed char, unsigned char, signed char);
extern unsigned char v17 (unsigned int, signed int);
extern unsigned char (*v18) (unsigned int, signed int);
extern void v19 (signed int, signed int, signed short);
extern void (*v20) (signed int, signed int, signed short);
extern unsigned int v21 (signed short, unsigned short);
extern unsigned int (*v22) (signed short, unsigned short);
extern signed char v23 (unsigned short, signed short);
extern signed char (*v24) (unsigned short, signed short);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern signed int v29 (unsigned short, unsigned int, unsigned char, unsigned short);
extern signed int (*v30) (unsigned short, unsigned int, unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 3;
unsigned short v32 = 3;
signed char v31 = -4;

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned int v36;
signed int v37;
signed char v38;
v36 = 2U + 2U;
v37 = 3 + 3;
v38 = 2 - v31;
v1 (v36, v37, v38);
}
} while (trace < 11);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
