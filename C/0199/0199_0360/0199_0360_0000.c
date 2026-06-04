#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (unsigned int);
extern signed short (*v2) (unsigned int);
extern void v3 (void);
extern void (*v4) (void);
unsigned short v5 (void);
unsigned short (*v6) (void) = v5;
extern signed short v7 (unsigned char, unsigned int, signed int);
extern signed short (*v8) (unsigned char, unsigned int, signed int);
extern void v9 (signed short, signed short, unsigned char, unsigned short);
extern void (*v10) (signed short, signed short, unsigned char, unsigned short);
extern signed char v11 (signed short, unsigned char, signed int);
extern signed char (*v12) (signed short, unsigned char, signed int);
extern unsigned char v15 (unsigned int, signed char);
extern unsigned char (*v16) (unsigned int, signed char);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern unsigned short v19 (signed int, signed int, signed int);
extern unsigned short (*v20) (signed int, signed int, signed int);
extern unsigned int v21 (unsigned int);
extern unsigned int (*v22) (unsigned int);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern signed int v25 (signed short, signed char, signed short, unsigned short);
extern signed int (*v26) (signed short, signed char, signed short, unsigned short);
unsigned char v27 (signed char, unsigned int);
unsigned char (*v28) (signed char, unsigned int) = v27;
extern void v29 (unsigned int);
extern void (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 4;
unsigned short v32 = 3;
signed char v31 = -4;

unsigned char v27 (signed char v34, unsigned int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned int v38 = 0U;
unsigned char v37 = 6;
signed char v36 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (void)
{
{
for (;;) {
unsigned char v41 = 4;
unsigned int v40 = 6U;
unsigned short v39 = 2;
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
unsigned int v44;
signed short v45;
v44 = 0U + 6U;
v45 = v1 (v44);
history[history_index++] = (int)v45;
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
