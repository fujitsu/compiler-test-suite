#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned int, unsigned char, signed char);
extern unsigned int (*v2) (unsigned int, unsigned char, signed char);
extern signed int v3 (unsigned short, signed int, signed short, unsigned short);
extern signed int (*v4) (unsigned short, signed int, signed short, unsigned short);
unsigned int v5 (unsigned int);
unsigned int (*v6) (unsigned int) = v5;
signed int v7 (unsigned short, signed int, unsigned char, unsigned short);
signed int (*v8) (unsigned short, signed int, unsigned char, unsigned short) = v7;
extern unsigned char v9 (signed char, unsigned short);
extern unsigned char (*v10) (signed char, unsigned short);
extern signed int v11 (unsigned short);
extern signed int (*v12) (unsigned short);
signed int v13 (signed short, signed int);
signed int (*v14) (signed short, signed int) = v13;
extern signed int v15 (unsigned char, signed char, signed short);
extern signed int (*v16) (unsigned char, signed char, signed short);
extern signed char v17 (signed short, unsigned int, signed char);
extern signed char (*v18) (signed short, unsigned int, signed char);
extern void v19 (signed int, unsigned int, signed short);
extern void (*v20) (signed int, unsigned int, signed short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern void v25 (signed int, signed int);
extern void (*v26) (signed int, signed int);
extern signed short v27 (unsigned int, unsigned short, signed int, unsigned short);
extern signed short (*v28) (unsigned int, unsigned short, signed int, unsigned short);
extern unsigned short v29 (unsigned short, signed char, unsigned short);
extern unsigned short (*v30) (unsigned short, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 3;
unsigned int v32 = 2U;
unsigned int v31 = 0U;

signed int v13 (signed short v34, signed int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned char v38 = 5;
unsigned short v37 = 0;
signed int v36 = 3;
trace++;
switch (trace)
{
case 1: 
return 0;
case 11: 
return v35;
default: abort ();
}
}
}
}

signed int v7 (unsigned short v39, signed int v40, unsigned char v41, unsigned short v42)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned char v45 = 4;
unsigned int v44 = 0U;
unsigned int v43 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (unsigned int v46)
{
history[history_index++] = (int)v46;
{
for (;;) {
unsigned char v49 = 0;
signed int v48 = -4;
signed char v47 = 2;
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
unsigned int v52;
unsigned char v53;
signed char v54;
unsigned int v55;
v52 = 3U + v31;
v53 = 4 + 4;
v54 = v33 - v33;
v55 = v1 (v52, v53, v54);
history[history_index++] = (int)v55;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
