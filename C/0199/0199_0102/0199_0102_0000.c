#include <stdio.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern unsigned char v3 (signed short);
extern unsigned char (*v4) (signed short);
extern void v5 (signed short, unsigned short, unsigned short);
extern void (*v6) (signed short, unsigned short, unsigned short);
extern void v7 (signed char, signed int, unsigned int);
extern void (*v8) (signed char, signed int, unsigned int);
extern signed short v9 (unsigned char, unsigned int, signed char, signed char);
extern signed short (*v10) (unsigned char, unsigned int, signed char, signed char);
extern signed int v11 (signed char);
extern signed int (*v12) (signed char);
extern unsigned char v13 (unsigned char, unsigned char, unsigned short);
extern unsigned char (*v14) (unsigned char, unsigned char, unsigned short);
extern unsigned short v15 (signed short, signed char, unsigned short, signed short);
extern unsigned short (*v16) (signed short, signed char, unsigned short, signed short);
extern signed char v17 (unsigned short, signed char, unsigned char);
extern signed char (*v18) (unsigned short, signed char, unsigned char);
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
extern signed short v21 (signed char, unsigned short, signed char, unsigned int);
extern signed short (*v22) (signed char, unsigned short, signed char, unsigned int);
extern unsigned short v23 (signed short, signed int, unsigned short, signed char);
extern unsigned short (*v24) (signed short, signed int, unsigned short, signed char);
extern unsigned short v25 (unsigned char);
extern unsigned short (*v26) (unsigned char);
extern signed char v27 (signed short, signed int);
extern signed char (*v28) (signed short, signed int);
extern signed int v29 (unsigned char, unsigned int, unsigned int);
extern signed int (*v30) (unsigned char, unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -1;
unsigned short v32 = 0;
unsigned char v31 = 0;

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned char v36;
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
