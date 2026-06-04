#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (signed int, signed short, signed char, unsigned int);
extern signed int (*v2) (signed int, signed short, signed char, unsigned int);
extern signed int v3 (unsigned short, signed short, signed char);
extern signed int (*v4) (unsigned short, signed short, signed char);
signed short v5 (unsigned int, unsigned short);
signed short (*v6) (unsigned int, unsigned short) = v5;
extern void v7 (unsigned short);
extern void (*v8) (unsigned short);
extern unsigned short v9 (unsigned short);
extern unsigned short (*v10) (unsigned short);
extern unsigned char v11 (unsigned char, unsigned short, signed int, unsigned char);
extern unsigned char (*v12) (unsigned char, unsigned short, signed int, unsigned char);
signed char v15 (void);
signed char (*v16) (void) = v15;
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern signed int v21 (unsigned int, unsigned int, unsigned char, signed int);
extern signed int (*v22) (unsigned int, unsigned int, unsigned char, signed int);
extern unsigned int v23 (signed char, signed short, unsigned char);
extern unsigned int (*v24) (signed char, signed short, unsigned char);
signed int v25 (signed short, unsigned short);
signed int (*v26) (signed short, unsigned short) = v25;
extern signed char v27 (signed short, unsigned short);
extern signed char (*v28) (signed short, unsigned short);
extern void v29 (unsigned char, signed int, signed short, unsigned int);
extern void (*v30) (unsigned char, signed int, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 2;
signed short v32 = -3;
unsigned short v31 = 7;

signed int v25 (signed short v34, unsigned short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed char v38 = 0;
signed char v37 = -4;
signed short v36 = -3;
trace++;
switch (trace)
{
case 1: 
return -1;
case 3: 
return 2;
default: abort ();
}
}
}
}

signed char v15 (void)
{
{
for (;;) {
signed int v41 = 2;
unsigned short v40 = 5;
signed short v39 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (unsigned int v42, unsigned short v43)
{
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
unsigned char v46 = 7;
unsigned short v45 = 2;
signed int v44 = -3;
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
signed int v49;
signed short v50;
signed char v51;
unsigned int v52;
signed int v53;
v49 = v33 + v33;
v50 = -2 - 2;
v51 = -2 + -1;
v52 = 5U + 1U;
v53 = v1 (v49, v50, v51, v52);
history[history_index++] = (int)v53;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
