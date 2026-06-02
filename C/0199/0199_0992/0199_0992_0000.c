#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (signed int);
extern signed char (*v2) (signed int);
extern signed char v3 (void);
extern signed char (*v4) (void);
unsigned short v5 (unsigned char, signed int, signed short);
unsigned short (*v6) (unsigned char, signed int, signed short) = v5;
extern void v7 (void);
extern void (*v8) (void);
extern signed char v9 (signed short, unsigned short, signed char, signed int);
extern signed char (*v10) (signed short, unsigned short, signed char, signed int);
extern void v11 (void);
extern void (*v12) (void);
extern unsigned int v13 (signed int, signed short, unsigned short);
extern unsigned int (*v14) (signed int, signed short, unsigned short);
unsigned int v15 (unsigned short, signed short);
unsigned int (*v16) (unsigned short, signed short) = v15;
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern unsigned char v19 (unsigned int, unsigned short);
extern unsigned char (*v20) (unsigned int, unsigned short);
extern signed short v21 (unsigned char);
extern signed short (*v22) (unsigned char);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned char v27 (signed short);
extern unsigned char (*v28) (signed short);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 7;
unsigned short v32 = 1;
signed short v31 = 1;

unsigned int v15 (unsigned short v34, signed short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed int v38 = 2;
signed char v37 = 1;
signed short v36 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (unsigned char v39, signed int v40, signed short v41)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed char v44 = 3;
unsigned int v43 = 6U;
unsigned int v42 = 4U;
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
signed int v47;
signed char v48;
v47 = -4 + 3;
v48 = v1 (v47);
history[history_index++] = (int)v48;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
