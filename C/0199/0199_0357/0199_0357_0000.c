#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (unsigned short, signed char);
extern unsigned short (*v2) (unsigned short, signed char);
unsigned char v3 (unsigned char, unsigned short);
unsigned char (*v4) (unsigned char, unsigned short) = v3;
extern unsigned char v5 (signed char, signed int);
extern unsigned char (*v6) (signed char, signed int);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern signed char v13 (signed char, unsigned short, unsigned short);
extern signed char (*v14) (signed char, unsigned short, unsigned short);
extern signed char v15 (signed char, signed char);
extern signed char (*v16) (signed char, signed char);
extern signed char v17 (signed short, unsigned char, unsigned int);
extern signed char (*v18) (signed short, unsigned char, unsigned int);
extern void v21 (void);
extern void (*v22) (void);
extern unsigned int v23 (signed short);
extern unsigned int (*v24) (signed short);
extern unsigned char v25 (unsigned char, unsigned char, unsigned int, signed short);
extern unsigned char (*v26) (unsigned char, unsigned char, unsigned int, signed short);
unsigned char v27 (signed short);
unsigned char (*v28) (signed short) = v27;
extern signed char v29 (unsigned char, unsigned short, signed short);
extern signed char (*v30) (unsigned char, unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 7;
unsigned short v32 = 7;
signed int v31 = 1;

unsigned char v27 (signed short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned char v37 = 2;
unsigned char v36 = 4;
unsigned short v35 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (unsigned char v38, unsigned short v39)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
signed short v42 = -4;
signed int v41 = 3;
signed short v40 = -2;
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
unsigned short v45;
signed char v46;
unsigned short v47;
v45 = 5 - 3;
v46 = -2 + -1;
v47 = v1 (v45, v46);
history[history_index++] = (int)v47;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
