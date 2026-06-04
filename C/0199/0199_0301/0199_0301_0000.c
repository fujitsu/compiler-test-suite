#include <stdio.h>
extern signed short v1 (signed short);
extern signed short (*v2) (signed short);
extern unsigned int v3 (signed short);
extern unsigned int (*v4) (signed short);
extern void v5 (signed char);
extern void (*v6) (signed char);
extern unsigned int v7 (unsigned char);
extern unsigned int (*v8) (unsigned char);
extern signed int v9 (unsigned char);
extern signed int (*v10) (unsigned char);
extern unsigned char v11 (unsigned int, signed char);
extern unsigned char (*v12) (unsigned int, signed char);
extern unsigned char v13 (unsigned int);
extern unsigned char (*v14) (unsigned int);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern void v17 (signed int, unsigned char);
extern void (*v18) (signed int, unsigned char);
extern signed int v19 (unsigned short, signed char, unsigned short);
extern signed int (*v20) (unsigned short, signed char, unsigned short);
extern void v23 (unsigned char, signed short, unsigned int);
extern void (*v24) (unsigned char, signed short, unsigned int);
extern signed int v25 (signed short, unsigned char, unsigned short);
extern signed int (*v26) (signed short, unsigned char, unsigned short);
extern unsigned short v27 (signed short, signed int, signed int, signed int);
extern unsigned short (*v28) (signed short, signed int, signed int, signed int);
extern void v29 (unsigned int, signed char, unsigned int);
extern void (*v30) (unsigned int, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 0;
unsigned short v32 = 7;
signed char v31 = 3;

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed short v36;
signed short v37;
v36 = 2 + 2;
v37 = v1 (v36);
history[history_index++] = (int)v37;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
