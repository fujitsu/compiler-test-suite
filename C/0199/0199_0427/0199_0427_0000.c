#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (signed char);
extern unsigned short (*v2) (signed char);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern void v5 (unsigned int, unsigned short);
extern void (*v6) (unsigned int, unsigned short);
extern void v7 (signed short, signed short);
extern void (*v8) (signed short, signed short);
extern unsigned int v9 (unsigned int, unsigned short);
extern unsigned int (*v10) (unsigned int, unsigned short);
extern void v11 (unsigned int, unsigned short, signed int);
extern void (*v12) (unsigned int, unsigned short, signed int);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern void v17 (void);
extern void (*v18) (void);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern unsigned short v21 (unsigned char);
extern unsigned short (*v22) (unsigned char);
unsigned short v23 (unsigned short, signed char, unsigned char);
unsigned short (*v24) (unsigned short, signed char, unsigned char) = v23;
extern unsigned int v25 (signed char, signed short);
extern unsigned int (*v26) (signed char, signed short);
extern signed char v29 (signed short, unsigned short, signed char, unsigned char);
extern signed char (*v30) (signed short, unsigned short, signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 7U;
signed char v32 = -1;
signed int v31 = -2;

unsigned short v23 (unsigned short v34, signed char v35, unsigned char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed int v39 = -2;
signed char v38 = -2;
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
signed char v42;
unsigned short v43;
v42 = v32 - v32;
v43 = v1 (v42);
history[history_index++] = (int)v43;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
