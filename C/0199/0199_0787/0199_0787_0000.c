#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned int);
extern unsigned char (*v2) (unsigned int);
extern unsigned short v3 (unsigned char, unsigned char);
extern unsigned short (*v4) (unsigned char, unsigned char);
extern unsigned int v5 (unsigned char, unsigned short, signed short);
extern unsigned int (*v6) (unsigned char, unsigned short, signed short);
extern unsigned char v7 (unsigned int, unsigned short, signed char);
extern unsigned char (*v8) (unsigned int, unsigned short, signed char);
extern signed char v9 (signed short, signed int, signed char);
extern signed char (*v10) (signed short, signed int, signed char);
extern unsigned int v11 (signed short);
extern unsigned int (*v12) (signed short);
extern void v13 (unsigned short, unsigned int, signed char, signed char);
extern void (*v14) (unsigned short, unsigned int, signed char, signed char);
extern signed char v15 (unsigned char);
extern signed char (*v16) (unsigned char);
extern void v17 (unsigned int, unsigned short, signed char);
extern void (*v18) (unsigned int, unsigned short, signed char);
extern unsigned char v19 (signed int, unsigned short, unsigned char);
extern unsigned char (*v20) (signed int, unsigned short, unsigned char);
extern unsigned short v21 (signed int, unsigned char);
extern unsigned short (*v22) (signed int, unsigned char);
unsigned char v23 (void);
unsigned char (*v24) (void) = v23;
extern signed int v25 (signed short, unsigned char);
extern signed int (*v26) (signed short, unsigned char);
signed char v27 (unsigned char);
signed char (*v28) (unsigned char) = v27;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -3;
unsigned short v32 = 3;
unsigned short v31 = 0;

signed char v27 (unsigned char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed int v37 = -4;
signed char v36 = 2;
signed short v35 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (void)
{
{
for (;;) {
unsigned int v40 = 2U;
signed char v39 = -2;
unsigned short v38 = 5;
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
unsigned int v43;
unsigned char v44;
v43 = 6U - 4U;
v44 = v1 (v43);
history[history_index++] = (int)v44;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
