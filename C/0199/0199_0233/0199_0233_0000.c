#include <stdio.h>
extern signed char v1 (unsigned short, unsigned char, signed int, unsigned short);
extern signed char (*v2) (unsigned short, unsigned char, signed int, unsigned short);
extern signed char v3 (signed int);
extern signed char (*v4) (signed int);
extern signed char v5 (signed int, unsigned char);
extern signed char (*v6) (signed int, unsigned char);
extern signed short v7 (unsigned short, signed char, unsigned short);
extern signed short (*v8) (unsigned short, signed char, unsigned short);
extern unsigned char v9 (unsigned char, signed short, signed int);
extern unsigned char (*v10) (unsigned char, signed short, signed int);
extern signed short v11 (signed short);
extern signed short (*v12) (signed short);
extern signed int v13 (unsigned int, signed short, unsigned short, unsigned int);
extern signed int (*v14) (unsigned int, signed short, unsigned short, unsigned int);
extern signed char v15 (unsigned char, unsigned int);
extern signed char (*v16) (unsigned char, unsigned int);
extern unsigned short v17 (unsigned int, unsigned int, unsigned char);
extern unsigned short (*v18) (unsigned int, unsigned int, unsigned char);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern unsigned char v21 (signed int);
extern unsigned char (*v22) (signed int);
extern signed char v23 (void);
extern signed char (*v24) (void);
extern unsigned char v25 (signed int, signed int, signed short);
extern unsigned char (*v26) (signed int, signed int, signed short);
extern signed int v27 (signed char);
extern signed int (*v28) (signed char);
extern signed int v29 (signed char, signed int, signed short);
extern signed int (*v30) (signed char, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 1;
unsigned char v32 = 2;
unsigned char v31 = 7;

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned short v36;
unsigned char v37;
signed int v38;
unsigned short v39;
signed char v40;
v36 = 0 + 3;
v37 = 1 - v31;
v38 = -4 - -2;
v39 = 5 + 6;
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
