#include <stdio.h>
extern signed int v1 (signed char, unsigned char, unsigned char, unsigned int);
extern signed int (*v2) (signed char, unsigned char, unsigned char, unsigned int);
extern signed int v3 (signed int, signed int, unsigned char);
extern signed int (*v4) (signed int, signed int, unsigned char);
extern void v5 (unsigned short, signed short, signed char);
extern void (*v6) (unsigned short, signed short, signed char);
extern signed int v7 (unsigned short, signed short, signed char);
extern signed int (*v8) (unsigned short, signed short, signed char);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern unsigned int v11 (signed char);
extern unsigned int (*v12) (signed char);
extern signed char v13 (unsigned int, unsigned char);
extern signed char (*v14) (unsigned int, unsigned char);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern unsigned int v19 (unsigned char, unsigned short, signed int, signed char);
extern unsigned int (*v20) (unsigned char, unsigned short, signed int, signed char);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern signed short v23 (signed char, signed int, signed short);
extern signed short (*v24) (signed char, signed int, signed short);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern unsigned int v29 (signed short, unsigned char, signed int, signed short);
extern unsigned int (*v30) (signed short, unsigned char, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -4;
unsigned char v32 = 4;
unsigned short v31 = 6;

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed char v36;
unsigned char v37;
unsigned char v38;
unsigned int v39;
signed int v40;
v36 = v33 - v33;
v37 = 0 + v32;
v38 = v32 - 1;
v39 = 6U - 3U;
v40 = v1 (v36, v37, v38, v39);
history[history_index++] = (int)v40;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
