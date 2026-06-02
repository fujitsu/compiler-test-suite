#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (unsigned char, unsigned int, unsigned short, unsigned short);
extern signed char (*v2) (unsigned char, unsigned int, unsigned short, unsigned short);
extern signed short v3 (unsigned short);
extern signed short (*v4) (unsigned short);
extern signed int v5 (unsigned short);
extern signed int (*v6) (unsigned short);
extern signed int v7 (signed char, unsigned char, unsigned char, signed char);
extern signed int (*v8) (signed char, unsigned char, unsigned char, signed char);
extern void v9 (unsigned char);
extern void (*v10) (unsigned char);
extern unsigned short v11 (signed int, unsigned short);
extern unsigned short (*v12) (signed int, unsigned short);
extern unsigned int v13 (unsigned int, unsigned int);
extern unsigned int (*v14) (unsigned int, unsigned int);
extern void v15 (unsigned short);
extern void (*v16) (unsigned short);
extern signed int v17 (signed char, unsigned char, signed int, signed short);
extern signed int (*v18) (signed char, unsigned char, signed int, signed short);
signed short v19 (void);
signed short (*v20) (void) = v19;
unsigned char v21 (void);
unsigned char (*v22) (void) = v21;
extern signed int v23 (void);
extern signed int (*v24) (void);
extern unsigned char v25 (unsigned char, signed short);
extern unsigned char (*v26) (unsigned char, signed short);
extern unsigned int v27 (signed short, signed int, unsigned int, signed int);
extern unsigned int (*v28) (signed short, signed int, unsigned int, signed int);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 6U;
unsigned char v32 = 0;
unsigned char v31 = 3;

unsigned char v21 (void)
{
{
for (;;) {
signed short v36 = -3;
unsigned char v35 = 7;
signed int v34 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (void)
{
{
for (;;) {
signed char v39 = 0;
unsigned short v38 = 1;
signed int v37 = -1;
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
unsigned char v42;
unsigned int v43;
unsigned short v44;
unsigned short v45;
signed char v46;
v42 = v31 - 3;
v43 = v33 + v33;
v44 = 6 - 4;
v45 = 0 - 1;
v46 = v1 (v42, v43, v44, v45);
history[history_index++] = (int)v46;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
