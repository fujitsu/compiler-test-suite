#include <stdio.h>
extern void v1 (unsigned int, unsigned char, unsigned short, signed char);
extern void (*v2) (unsigned int, unsigned char, unsigned short, signed char);
extern void v3 (unsigned char, unsigned char, signed char, unsigned int);
extern void (*v4) (unsigned char, unsigned char, signed char, unsigned int);
extern unsigned char v5 (unsigned short);
extern unsigned char (*v6) (unsigned short);
extern void v7 (signed int, signed char, unsigned char);
extern void (*v8) (signed int, signed char, unsigned char);
extern signed char v9 (signed char, unsigned short);
extern signed char (*v10) (signed char, unsigned short);
extern unsigned short v11 (unsigned int, unsigned int);
extern unsigned short (*v12) (unsigned int, unsigned int);
extern signed short v13 (signed short);
extern signed short (*v14) (signed short);
extern void v15 (unsigned short);
extern void (*v16) (unsigned short);
extern unsigned int v17 (unsigned char);
extern unsigned int (*v18) (unsigned char);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern unsigned char v21 (signed char, signed char, signed short);
extern unsigned char (*v22) (signed char, signed char, signed short);
extern unsigned char v23 (unsigned char, unsigned char, signed char);
extern unsigned char (*v24) (unsigned char, unsigned char, signed char);
extern signed char v27 (signed int, unsigned int, signed int);
extern signed char (*v28) (signed int, unsigned int, signed int);
extern signed char v29 (unsigned char, unsigned char);
extern signed char (*v30) (unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 3;
signed int v32 = -1;
unsigned char v31 = 0;

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned int v36;
unsigned char v37;
unsigned short v38;
signed char v39;
v36 = 5U - 0U;
v37 = v31 + v31;
v38 = 0 - 1;
v39 = -1 + 2;
v1 (v36, v37, v38, v39);
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
