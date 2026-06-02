#include <stdio.h>
extern unsigned char v1 (signed char, signed char, signed int);
extern unsigned char (*v2) (signed char, signed char, signed int);
extern signed short v3 (unsigned int, unsigned short, signed int);
extern signed short (*v4) (unsigned int, unsigned short, signed int);
extern unsigned int v5 (signed char, unsigned short, unsigned int, unsigned int);
extern unsigned int (*v6) (signed char, unsigned short, unsigned int, unsigned int);
extern void v7 (unsigned char, signed short);
extern void (*v8) (unsigned char, signed short);
extern unsigned int v9 (unsigned char, signed int, signed int, signed short);
extern unsigned int (*v10) (unsigned char, signed int, signed int, signed short);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern signed int v13 (signed char);
extern signed int (*v14) (signed char);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern signed short v17 (signed int);
extern signed short (*v18) (signed int);
extern unsigned int v19 (signed short, unsigned char, signed short);
extern unsigned int (*v20) (signed short, unsigned char, signed short);
extern void v21 (unsigned int);
extern void (*v22) (unsigned int);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern void v27 (unsigned char);
extern void (*v28) (unsigned char);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 0;
signed short v32 = 1;
signed short v31 = 1;

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed char v36;
signed char v37;
signed int v38;
unsigned char v39;
v36 = 3 + -4;
v37 = -4 + -4;
v38 = v33 - v33;
v39 = v1 (v36, v37, v38);
history[history_index++] = (int)v39;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
