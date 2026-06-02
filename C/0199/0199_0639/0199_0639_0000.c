#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed int);
extern void (*v2) (signed int);
extern unsigned short v3 (signed short, unsigned char, signed int);
extern unsigned short (*v4) (signed short, unsigned char, signed int);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern signed short v7 (unsigned int);
extern signed short (*v8) (unsigned int);
signed short v9 (signed char, unsigned char);
signed short (*v10) (signed char, unsigned char) = v9;
extern unsigned char v11 (unsigned short, signed short, signed char);
extern unsigned char (*v12) (unsigned short, signed short, signed char);
extern signed char v13 (unsigned short);
extern signed char (*v14) (unsigned short);
extern unsigned char v15 (signed char);
extern unsigned char (*v16) (signed char);
extern void v17 (void);
extern void (*v18) (void);
extern unsigned short v21 (signed short, unsigned int);
extern unsigned short (*v22) (signed short, unsigned int);
unsigned short v25 (void);
unsigned short (*v26) (void) = v25;
extern signed short v27 (unsigned short, signed short, signed short);
extern signed short (*v28) (unsigned short, signed short, signed short);
extern unsigned char v29 (unsigned short);
extern unsigned char (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 0;
signed char v32 = 3;
unsigned int v31 = 2U;

unsigned short v25 (void)
{
{
for (;;) {
unsigned int v36 = 2U;
signed char v35 = -4;
unsigned char v34 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (signed char v37, unsigned char v38)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
{
for (;;) {
signed char v41 = -1;
signed int v40 = -1;
signed short v39 = 2;
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
signed int v44;
v44 = 3 - v33;
v1 (v44);
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
