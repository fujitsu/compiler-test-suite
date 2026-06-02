#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed short, unsigned int);
extern signed short (*v2) (signed short, unsigned int);
extern void v3 (unsigned int, signed short, unsigned char, unsigned short);
extern void (*v4) (unsigned int, signed short, unsigned char, unsigned short);
extern unsigned int v5 (signed short, signed char, signed int);
extern unsigned int (*v6) (signed short, signed char, signed int);
extern unsigned short v7 (signed int, unsigned short);
extern unsigned short (*v8) (signed int, unsigned short);
unsigned short v9 (signed char, unsigned short, unsigned int, signed int);
unsigned short (*v10) (signed char, unsigned short, unsigned int, signed int) = v9;
extern signed char v11 (signed short, signed short, unsigned short, unsigned short);
extern signed char (*v12) (signed short, signed short, unsigned short, unsigned short);
extern signed int v13 (unsigned char, signed int, unsigned int, signed int);
extern signed int (*v14) (unsigned char, signed int, unsigned int, signed int);
unsigned short v15 (void);
unsigned short (*v16) (void) = v15;
signed short v17 (unsigned int);
signed short (*v18) (unsigned int) = v17;
extern unsigned short v19 (unsigned char, unsigned char);
extern unsigned short (*v20) (unsigned char, unsigned char);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern signed char v25 (unsigned char);
extern signed char (*v26) (unsigned char);
extern signed int v27 (unsigned char);
extern signed int (*v28) (unsigned char);
extern void v29 (signed int, unsigned short);
extern void (*v30) (signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -2;
signed char v32 = -3;
unsigned char v31 = 3;

signed short v17 (unsigned int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed char v37 = 0;
signed int v36 = 0;
signed int v35 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (void)
{
{
for (;;) {
signed char v40 = -2;
signed short v39 = -2;
signed char v38 = 0;
trace++;
switch (trace)
{
case 11: 
return 2;
default: abort ();
}
}
}
}

unsigned short v9 (signed char v41, unsigned short v42, unsigned int v43, signed int v44)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
signed char v47 = 1;
unsigned int v46 = 2U;
unsigned int v45 = 5U;
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
signed short v50;
unsigned int v51;
signed short v52;
v50 = 2 - 3;
v51 = 4U + 1U;
v52 = v1 (v50, v51);
history[history_index++] = (int)v52;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
