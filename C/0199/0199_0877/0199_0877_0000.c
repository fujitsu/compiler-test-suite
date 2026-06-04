#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned short, signed char, signed short, unsigned short);
extern unsigned int (*v2) (unsigned short, signed char, signed short, unsigned short);
extern void v3 (signed int);
extern void (*v4) (signed int);
extern signed short v5 (unsigned char, unsigned char, unsigned int);
extern signed short (*v6) (unsigned char, unsigned char, unsigned int);
extern unsigned char v7 (unsigned int);
extern unsigned char (*v8) (unsigned int);
extern unsigned short v9 (signed int, unsigned char, signed short);
extern unsigned short (*v10) (signed int, unsigned char, signed short);
unsigned short v11 (unsigned int, unsigned short, unsigned short);
unsigned short (*v12) (unsigned int, unsigned short, unsigned short) = v11;
extern unsigned short v13 (unsigned char);
extern unsigned short (*v14) (unsigned char);
extern unsigned int v17 (unsigned short, unsigned int);
extern unsigned int (*v18) (unsigned short, unsigned int);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern void v21 (void);
extern void (*v22) (void);
extern signed char v23 (signed char, unsigned short, unsigned int, unsigned int);
extern signed char (*v24) (signed char, unsigned short, unsigned int, unsigned int);
extern void v25 (void);
extern void (*v26) (void);
extern unsigned short v27 (unsigned int, signed short, unsigned char, signed short);
extern unsigned short (*v28) (unsigned int, signed short, unsigned char, signed short);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 1U;
unsigned char v32 = 0;
unsigned int v31 = 3U;

unsigned short v11 (unsigned int v34, unsigned short v35, unsigned short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed short v39 = -1;
unsigned int v38 = 1U;
unsigned short v37 = 3;
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
signed char v43;
signed short v44;
unsigned short v45;
unsigned int v46;
v42 = 1 + 4;
v43 = 2 + -3;
v44 = 3 + 1;
v45 = 3 - 4;
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
