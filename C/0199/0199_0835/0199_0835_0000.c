#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (unsigned short, unsigned short);
extern unsigned short (*v2) (unsigned short, unsigned short);
extern void v3 (void);
extern void (*v4) (void);
extern signed char v5 (signed char, signed short, unsigned int, unsigned int);
extern signed char (*v6) (signed char, signed short, unsigned int, unsigned int);
extern unsigned short v7 (unsigned int, unsigned short);
extern unsigned short (*v8) (unsigned int, unsigned short);
extern void v9 (void);
extern void (*v10) (void);
extern void v11 (signed int, signed short, signed char, unsigned char);
extern void (*v12) (signed int, signed short, signed char, unsigned char);
extern unsigned char v13 (signed char);
extern unsigned char (*v14) (signed char);
extern void v17 (signed int, unsigned char);
extern void (*v18) (signed int, unsigned char);
signed char v19 (signed char, unsigned int, signed int, unsigned short);
signed char (*v20) (signed char, unsigned int, signed int, unsigned short) = v19;
extern void v21 (unsigned char, unsigned int, unsigned int, signed short);
extern void (*v22) (unsigned char, unsigned int, unsigned int, signed short);
extern signed char v23 (void);
extern signed char (*v24) (void);
extern void v25 (unsigned short);
extern void (*v26) (unsigned short);
extern unsigned int v27 (signed char, unsigned short, unsigned int, unsigned char);
extern unsigned int (*v28) (signed char, unsigned short, unsigned int, unsigned char);
extern void v29 (unsigned int, unsigned char, unsigned char);
extern void (*v30) (unsigned int, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 0U;
signed short v32 = 2;
signed int v31 = 3;

signed char v19 (signed char v34, unsigned int v35, signed int v36, unsigned short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned short v40 = 7;
signed char v39 = 1;
unsigned char v38 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned short v43;
unsigned short v44;
unsigned short v45;
v43 = 4 - 7;
v44 = 1 - 6;
v45 = v1 (v43, v44);
history[history_index++] = (int)v45;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
