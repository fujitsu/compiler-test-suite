#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (unsigned short, signed int, signed int, signed short);
extern signed char (*v2) (unsigned short, signed int, signed int, signed short);
extern void v3 (void);
extern void (*v4) (void);
extern signed int v5 (unsigned int, unsigned char, unsigned short);
extern signed int (*v6) (unsigned int, unsigned char, unsigned short);
extern signed char v7 (unsigned short, signed short);
extern signed char (*v8) (unsigned short, signed short);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern signed short v11 (signed char, signed short, unsigned char);
extern signed short (*v12) (signed char, signed short, unsigned char);
extern unsigned char v13 (signed char, unsigned char, signed char);
extern unsigned char (*v14) (signed char, unsigned char, signed char);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed short v17 (void);
extern signed short (*v18) (void);
unsigned char v19 (signed short, unsigned short, unsigned char);
unsigned char (*v20) (signed short, unsigned short, unsigned char) = v19;
extern unsigned short v21 (unsigned char);
extern unsigned short (*v22) (unsigned char);
extern unsigned char v25 (signed char, unsigned int);
extern unsigned char (*v26) (signed char, unsigned int);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern signed char v29 (signed char, signed char, signed int, signed char);
extern signed char (*v30) (signed char, signed char, signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -1;
signed short v32 = 2;
unsigned char v31 = 7;

unsigned char v19 (signed short v34, unsigned short v35, unsigned char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned char v39 = 5;
unsigned int v38 = 7U;
signed int v37 = -3;
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
unsigned short v42;
signed int v43;
signed int v44;
signed short v45;
signed char v46;
v42 = 4 + 3;
v43 = 0 - -1;
v44 = 0 - -4;
v45 = 2 - v32;
v46 = v1 (v42, v43, v44, v45);
history[history_index++] = (int)v46;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
