#include <stdio.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern signed int v3 (unsigned char, signed short);
extern signed int (*v4) (unsigned char, signed short);
extern void v5 (unsigned short);
extern void (*v6) (unsigned short);
extern unsigned char v7 (unsigned int, unsigned short, unsigned short);
extern unsigned char (*v8) (unsigned int, unsigned short, unsigned short);
extern void v9 (signed short);
extern void (*v10) (signed short);
extern signed char v11 (signed short, unsigned char, signed short, unsigned char);
extern signed char (*v12) (signed short, unsigned char, signed short, unsigned char);
extern void v13 (void);
extern void (*v14) (void);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern signed int v17 (signed char, signed char);
extern signed int (*v18) (signed char, signed char);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed int v21 (signed char);
extern signed int (*v22) (signed char);
extern unsigned short v23 (signed char);
extern unsigned short (*v24) (signed char);
extern unsigned int v25 (unsigned char, unsigned int);
extern unsigned int (*v26) (unsigned char, unsigned int);
extern signed char v27 (signed int, unsigned char, unsigned short, unsigned short);
extern signed char (*v28) (signed int, unsigned char, unsigned short, unsigned short);
extern unsigned short v29 (signed int, unsigned int);
extern unsigned short (*v30) (signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 6U;
signed int v32 = -4;
signed char v31 = -2;

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned short v36;
v36 = v1 ();
history[history_index++] = (int)v36;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
