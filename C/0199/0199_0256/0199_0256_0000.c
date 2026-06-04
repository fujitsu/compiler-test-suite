#include <stdio.h>
extern unsigned char v1 (unsigned char);
extern unsigned char (*v2) (unsigned char);
extern signed int v3 (unsigned short, signed short);
extern signed int (*v4) (unsigned short, signed short);
extern unsigned int v5 (signed char, signed short, signed char, unsigned int);
extern unsigned int (*v6) (signed char, signed short, signed char, unsigned int);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern void v9 (signed char, unsigned char);
extern void (*v10) (signed char, unsigned char);
extern unsigned int v11 (signed int, unsigned short);
extern unsigned int (*v12) (signed int, unsigned short);
extern void v13 (void);
extern void (*v14) (void);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern unsigned short v19 (signed short);
extern unsigned short (*v20) (signed short);
extern unsigned short v21 (unsigned char, signed short);
extern unsigned short (*v22) (unsigned char, signed short);
extern signed short v23 (unsigned int);
extern signed short (*v24) (unsigned int);
extern signed char v25 (unsigned short);
extern signed char (*v26) (unsigned short);
extern signed char v27 (unsigned short);
extern signed char (*v28) (unsigned short);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 0;
signed int v32 = -2;
signed short v31 = 3;

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned char v36;
unsigned char v37;
v36 = 6 + 2;
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
