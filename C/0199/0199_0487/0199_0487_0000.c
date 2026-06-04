#include <stdio.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern signed char v5 (signed int, unsigned int, unsigned short);
extern signed char (*v6) (signed int, unsigned int, unsigned short);
extern signed short v7 (signed int, signed char);
extern signed short (*v8) (signed int, signed char);
extern void v9 (unsigned int);
extern void (*v10) (unsigned int);
extern signed short v11 (signed char, signed short, unsigned int, unsigned short);
extern signed short (*v12) (signed char, signed short, unsigned int, unsigned short);
extern void v13 (unsigned int, unsigned short, signed int);
extern void (*v14) (unsigned int, unsigned short, signed int);
extern signed char v15 (unsigned int);
extern signed char (*v16) (unsigned int);
extern unsigned char v17 (unsigned char, unsigned short, signed char, unsigned short);
extern unsigned char (*v18) (unsigned char, unsigned short, signed char, unsigned short);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern signed char v21 (unsigned char, unsigned short);
extern signed char (*v22) (unsigned char, unsigned short);
extern unsigned char v23 (signed short, signed int, unsigned short, unsigned char);
extern unsigned char (*v24) (signed short, signed int, unsigned short, unsigned char);
extern signed int v25 (signed char, unsigned short);
extern signed int (*v26) (signed char, unsigned short);
extern unsigned int v27 (signed int);
extern unsigned int (*v28) (signed int);
extern signed short v29 (unsigned short, signed short, unsigned short);
extern signed short (*v30) (unsigned short, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 0;
signed char v32 = -2;
unsigned int v31 = 7U;

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed short v36;
v36 = v1 ();
history[history_index++] = (int)v36;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
