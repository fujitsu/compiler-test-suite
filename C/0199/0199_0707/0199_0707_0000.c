#include <stdio.h>
extern unsigned char v1 (unsigned char, signed int);
extern unsigned char (*v2) (unsigned char, signed int);
extern signed int v3 (unsigned char, unsigned int);
extern signed int (*v4) (unsigned char, unsigned int);
extern signed int v5 (signed int, unsigned short, unsigned char);
extern signed int (*v6) (signed int, unsigned short, unsigned char);
extern signed int v7 (signed char, signed char, unsigned short, unsigned short);
extern signed int (*v8) (signed char, signed char, unsigned short, unsigned short);
extern void v9 (unsigned int);
extern void (*v10) (unsigned int);
extern void v11 (unsigned short);
extern void (*v12) (unsigned short);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern unsigned int v17 (unsigned short, signed int);
extern unsigned int (*v18) (unsigned short, signed int);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern unsigned int v23 (signed int, unsigned char, unsigned char);
extern unsigned int (*v24) (signed int, unsigned char, unsigned char);
extern signed int v25 (signed short, signed short);
extern signed int (*v26) (signed short, signed short);
extern unsigned char v27 (signed short, unsigned char);
extern unsigned char (*v28) (signed short, unsigned char);
extern signed short v29 (signed short, signed char, signed int);
extern signed short (*v30) (signed short, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 5;
signed short v32 = 1;
unsigned int v31 = 3U;

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned char v36;
signed int v37;
unsigned char v38;
v36 = 7 + 4;
v37 = -1 - 1;
v38 = v1 (v36, v37);
history[history_index++] = (int)v38;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
