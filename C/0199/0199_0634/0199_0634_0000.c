#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (signed short);
extern unsigned short (*v2) (signed short);
extern signed short v3 (signed char, signed char, unsigned char);
extern signed short (*v4) (signed char, signed char, unsigned char);
extern signed int v5 (unsigned char, unsigned int, unsigned char, unsigned short);
extern signed int (*v6) (unsigned char, unsigned int, unsigned char, unsigned short);
extern unsigned short v7 (unsigned short);
extern unsigned short (*v8) (unsigned short);
signed int v9 (void);
signed int (*v10) (void) = v9;
void v11 (void);
void (*v12) (void) = v11;
extern unsigned char v13 (unsigned short, unsigned short, signed char);
extern unsigned char (*v14) (unsigned short, unsigned short, signed char);
extern signed char v15 (unsigned short);
extern signed char (*v16) (unsigned short);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern unsigned char v19 (signed short, signed short, unsigned int, unsigned char);
extern unsigned char (*v20) (signed short, signed short, unsigned int, unsigned char);
extern signed char v21 (signed short, unsigned char, unsigned short);
extern signed char (*v22) (signed short, unsigned char, unsigned short);
extern void v23 (signed char, signed int);
extern void (*v24) (signed char, signed int);
extern unsigned short v25 (signed char, signed int, signed short, unsigned int);
extern unsigned short (*v26) (signed char, signed int, signed short, unsigned int);
unsigned char v27 (void);
unsigned char (*v28) (void) = v27;
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 2;
unsigned char v32 = 3;
unsigned char v31 = 1;

unsigned char v27 (void)
{
{
for (;;) {
signed int v36 = 0;
signed short v35 = 2;
unsigned int v34 = 1U;
trace++;
switch (trace)
{
case 10: 
return 5;
default: abort ();
}
}
}
}

void v11 (void)
{
{
for (;;) {
unsigned int v39 = 7U;
signed char v38 = -3;
signed char v37 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (void)
{
{
for (;;) {
signed char v42 = 3;
signed int v41 = 1;
signed char v40 = -4;
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
signed short v45;
unsigned short v46;
v45 = 1 + 1;
v46 = v1 (v45);
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
