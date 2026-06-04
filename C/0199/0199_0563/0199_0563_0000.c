#include <stdio.h>
extern unsigned short v1 (signed int, unsigned int, signed short, signed char);
extern unsigned short (*v2) (signed int, unsigned int, signed short, signed char);
extern signed char v3 (unsigned int, unsigned short);
extern signed char (*v4) (unsigned int, unsigned short);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern signed short v7 (signed short, unsigned char, signed short, signed short);
extern signed short (*v8) (signed short, unsigned char, signed short, signed short);
extern signed int v9 (signed char, signed char, unsigned int);
extern signed int (*v10) (signed char, signed char, unsigned int);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern void v13 (signed short);
extern void (*v14) (signed short);
extern signed char v15 (signed short, signed char);
extern signed char (*v16) (signed short, signed char);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern void v19 (unsigned int, signed int, unsigned char);
extern void (*v20) (unsigned int, signed int, unsigned char);
extern unsigned short v21 (unsigned char);
extern unsigned short (*v22) (unsigned char);
extern signed char v23 (signed char, unsigned char, signed char);
extern signed char (*v24) (signed char, unsigned char, signed char);
extern signed int v25 (unsigned char);
extern signed int (*v26) (unsigned char);
extern unsigned char v27 (unsigned int);
extern unsigned char (*v28) (unsigned int);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 5;
unsigned int v32 = 3U;
unsigned short v31 = 4;

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed int v36;
unsigned int v37;
signed short v38;
signed char v39;
unsigned short v40;
v36 = -1 + -1;
v37 = v32 + 5U;
v38 = 2 + 3;
v39 = -3 - -2;
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
