#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (signed char);
extern unsigned short (*v2) (signed char);
unsigned int v3 (unsigned int);
unsigned int (*v4) (unsigned int) = v3;
signed char v5 (signed int, unsigned int, signed int);
signed char (*v6) (signed int, unsigned int, signed int) = v5;
unsigned int v7 (unsigned char, signed char);
unsigned int (*v8) (unsigned char, signed char) = v7;
extern signed int v9 (unsigned int, signed short, unsigned int);
extern signed int (*v10) (unsigned int, signed short, unsigned int);
signed int v11 (void);
signed int (*v12) (void) = v11;
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern unsigned short v15 (unsigned short, signed char);
extern unsigned short (*v16) (unsigned short, signed char);
extern unsigned char v17 (unsigned char, unsigned int);
extern unsigned char (*v18) (unsigned char, unsigned int);
extern signed short v19 (unsigned int, signed char, unsigned int);
extern signed short (*v20) (unsigned int, signed char, unsigned int);
extern unsigned char v21 (unsigned char, signed char, unsigned char);
extern unsigned char (*v22) (unsigned char, signed char, unsigned char);
extern signed char v23 (signed char);
extern signed char (*v24) (signed char);
extern void v25 (signed char, signed char, signed short);
extern void (*v26) (signed char, signed char, signed short);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 5U;
unsigned short v32 = 0;
unsigned char v31 = 5;

signed int v11 (void)
{
{
for (;;) {
signed int v36 = -1;
unsigned int v35 = 0U;
unsigned short v34 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (unsigned char v37, signed char v38)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
{
for (;;) {
signed int v41 = 3;
signed short v40 = 3;
unsigned int v39 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (signed int v42, unsigned int v43, signed int v44)
{
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
unsigned char v47 = 0;
signed short v46 = -1;
unsigned char v45 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (unsigned int v48)
{
history[history_index++] = (int)v48;
{
for (;;) {
unsigned short v51 = 5;
unsigned char v50 = 0;
unsigned char v49 = 1;
trace++;
switch (trace)
{
case 1: 
return 6U;
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
signed char v54;
unsigned short v55;
v54 = 3 - 0;
v55 = v1 (v54);
history[history_index++] = (int)v55;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
