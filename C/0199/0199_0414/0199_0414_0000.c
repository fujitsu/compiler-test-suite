#include <stdio.h>
#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern signed int v3 (unsigned short, signed int, signed char, unsigned char);
extern signed int (*v4) (unsigned short, signed int, signed char, unsigned char);
extern unsigned short v5 (unsigned short, signed int);
extern unsigned short (*v6) (unsigned short, signed int);
extern signed int v7 (unsigned char, signed int, signed int, unsigned int);
extern signed int (*v8) (unsigned char, signed int, signed int, unsigned int);
extern signed char v9 (unsigned int);
extern signed char (*v10) (unsigned int);
extern unsigned int v11 (unsigned int, signed short, signed short);
extern unsigned int (*v12) (unsigned int, signed short, signed short);
unsigned char v13 (signed char);
unsigned char (*v14) (signed char) = v13;
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed short v17 (unsigned int, signed short, signed short, signed short);
extern signed short (*v18) (unsigned int, signed short, signed short, signed short);
extern unsigned int v19 (unsigned short, unsigned short, signed short, unsigned int);
extern unsigned int (*v20) (unsigned short, unsigned short, signed short, unsigned int);
extern unsigned char v21 (signed char, unsigned int, unsigned int, signed char);
extern unsigned char (*v22) (signed char, unsigned int, unsigned int, signed char);
extern signed int v23 (signed int);
extern signed int (*v24) (signed int);
extern unsigned short v25 (unsigned int);
extern unsigned short (*v26) (unsigned int);
unsigned int v27 (void);
unsigned int (*v28) (void) = v27;
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 2;
unsigned char v32 = 4;
signed char v31 = -3;

unsigned int v27 (void)
{
{
for (;;) {
signed char v36 = -2;
signed int v35 = -4;
signed char v34 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (signed char v37)
{
history[history_index++] = (int)v37;
{
for (;;) {
unsigned short v40 = 4;
unsigned int v39 = 2U;
signed char v38 = -1;
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
v1 ();
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
