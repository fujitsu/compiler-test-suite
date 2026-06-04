#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned char, signed char);
extern void (*v2) (unsigned char, signed char);
extern unsigned short v3 (signed char, unsigned short, unsigned short);
extern unsigned short (*v4) (signed char, unsigned short, unsigned short);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern signed short v7 (unsigned int);
extern signed short (*v8) (unsigned int);
extern signed int v9 (signed int);
extern signed int (*v10) (signed int);
unsigned short v11 (signed short, signed char, signed short, unsigned char);
unsigned short (*v12) (signed short, signed char, signed short, unsigned char) = v11;
unsigned short v13 (void);
unsigned short (*v14) (void) = v13;
extern unsigned int v15 (signed int);
extern unsigned int (*v16) (signed int);
extern void v17 (signed int, unsigned short, signed int, signed short);
extern void (*v18) (signed int, unsigned short, signed int, signed short);
extern signed int v19 (unsigned char, signed short);
extern signed int (*v20) (unsigned char, signed short);
unsigned char v21 (unsigned char, unsigned int);
unsigned char (*v22) (unsigned char, unsigned int) = v21;
extern unsigned int v25 (unsigned short, unsigned char);
extern unsigned int (*v26) (unsigned short, unsigned char);
extern unsigned int v27 (signed int, unsigned short, signed short, signed short);
extern unsigned int (*v28) (signed int, unsigned short, signed short, signed short);
extern signed int v29 (signed int, unsigned char, unsigned char, signed short);
extern signed int (*v30) (signed int, unsigned char, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 6;
signed int v32 = -2;
signed int v31 = -2;

unsigned char v21 (unsigned char v34, unsigned int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed int v38 = -1;
signed char v37 = -3;
unsigned int v36 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (void)
{
{
for (;;) {
signed char v41 = 2;
signed char v40 = 0;
unsigned int v39 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (signed short v42, signed char v43, signed short v44, unsigned char v45)
{
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
unsigned int v48 = 1U;
unsigned int v47 = 6U;
signed int v46 = 1;
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
unsigned char v51;
signed char v52;
v51 = 6 - v33;
v52 = -2 + 0;
v1 (v51, v52);
}
} while (trace < 11);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
