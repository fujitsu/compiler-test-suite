#include <stdio.h>
extern signed char v1 (unsigned short);
extern signed char (*v2) (unsigned short);
extern unsigned int v3 (signed short);
extern unsigned int (*v4) (signed short);
extern unsigned char v5 (unsigned char, unsigned char, signed int);
extern unsigned char (*v6) (unsigned char, unsigned char, signed int);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern signed short v9 (unsigned short, unsigned char);
extern signed short (*v10) (unsigned short, unsigned char);
extern void v11 (signed short, signed int, signed short, unsigned int);
extern void (*v12) (signed short, signed int, signed short, unsigned int);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern unsigned int v15 (unsigned char, signed char, signed int, unsigned short);
extern unsigned int (*v16) (unsigned char, signed char, signed int, unsigned short);
extern void v17 (void);
extern void (*v18) (void);
extern void v21 (signed char);
extern void (*v22) (signed char);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern signed char v27 (signed short);
extern signed char (*v28) (signed short);
extern signed int v29 (signed short);
extern signed int (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 0U;
signed int v32 = 3;
unsigned short v31 = 4;

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned short v36;
signed char v37;
v36 = 5 + v31;
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
