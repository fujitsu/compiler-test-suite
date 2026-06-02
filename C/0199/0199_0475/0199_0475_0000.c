#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned char, unsigned int, unsigned char, signed char);
extern unsigned char (*v2) (unsigned char, unsigned int, unsigned char, signed char);
extern unsigned int v3 (unsigned short, signed short, signed int);
extern unsigned int (*v4) (unsigned short, signed short, signed int);
extern signed char v5 (signed char, unsigned char, signed char);
extern signed char (*v6) (signed char, unsigned char, signed char);
extern unsigned char v7 (signed int);
extern unsigned char (*v8) (signed int);
extern signed char v9 (signed short, signed char, unsigned int, signed short);
extern signed char (*v10) (signed short, signed char, unsigned int, signed short);
extern unsigned char v11 (unsigned int, unsigned int);
extern unsigned char (*v12) (unsigned int, unsigned int);
extern signed int v13 (signed short);
extern signed int (*v14) (signed short);
extern unsigned int v15 (unsigned short, unsigned short, signed int, signed int);
extern unsigned int (*v16) (unsigned short, unsigned short, signed int, signed int);
extern signed char v17 (unsigned short, signed int, unsigned short);
extern signed char (*v18) (unsigned short, signed int, unsigned short);
unsigned short v19 (unsigned char, unsigned short);
unsigned short (*v20) (unsigned char, unsigned short) = v19;
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern void v23 (signed char, unsigned short);
extern void (*v24) (signed char, unsigned short);
extern unsigned short v25 (signed int, signed int, unsigned short);
extern unsigned short (*v26) (signed int, signed int, unsigned short);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 0;
signed short v32 = -1;
unsigned short v31 = 4;

unsigned short v19 (unsigned char v34, unsigned short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned char v38 = 0;
signed short v37 = -2;
signed short v36 = 0;
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
unsigned char v41;
unsigned int v42;
unsigned char v43;
signed char v44;
unsigned char v45;
v41 = v33 - 7;
v42 = 6U - 3U;
v43 = v33 + v33;
v44 = 1 - 1;
v45 = v1 (v41, v42, v43, v44);
history[history_index++] = (int)v45;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
