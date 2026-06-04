#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed short);
extern void (*v2) (signed short);
extern unsigned short v3 (unsigned short, unsigned char, signed char);
extern unsigned short (*v4) (unsigned short, unsigned char, signed char);
extern signed char v5 (unsigned short, unsigned char);
extern signed char (*v6) (unsigned short, unsigned char);
extern void v7 (void);
extern void (*v8) (void);
extern signed short v9 (signed short, signed int, signed int, unsigned char);
extern signed short (*v10) (signed short, signed int, signed int, unsigned char);
extern void v11 (unsigned char, unsigned char, signed char);
extern void (*v12) (unsigned char, unsigned char, signed char);
extern unsigned short v15 (unsigned int, unsigned int, signed char, signed int);
extern unsigned short (*v16) (unsigned int, unsigned int, signed char, signed int);
extern unsigned int v17 (signed short, unsigned short, unsigned short);
extern unsigned int (*v18) (signed short, unsigned short, unsigned short);
unsigned int v19 (void);
unsigned int (*v20) (void) = v19;
extern signed char v21 (unsigned short, unsigned short);
extern signed char (*v22) (unsigned short, unsigned short);
unsigned char v23 (signed char);
unsigned char (*v24) (signed char) = v23;
signed short v25 (void);
signed short (*v26) (void) = v25;
extern unsigned char v27 (unsigned int, signed short);
extern unsigned char (*v28) (unsigned int, signed short);
extern void v29 (signed char, signed short);
extern void (*v30) (signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 1;
unsigned short v32 = 6;
unsigned char v31 = 2;

signed short v25 (void)
{
{
for (;;) {
unsigned short v36 = 1;
signed int v35 = 0;
unsigned char v34 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (signed char v37)
{
history[history_index++] = (int)v37;
{
for (;;) {
signed short v40 = -4;
signed char v39 = -3;
unsigned char v38 = 0;
trace++;
switch (trace)
{
case 1: 
return v38;
default: abort ();
}
}
}
}

unsigned int v19 (void)
{
{
for (;;) {
unsigned short v43 = 4;
signed int v42 = -2;
unsigned char v41 = 2;
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
signed short v46;
v46 = 1 + -1;
v1 (v46);
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
