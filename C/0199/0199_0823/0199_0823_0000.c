#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (signed int, signed char, unsigned short);
extern signed char (*v2) (signed int, signed char, unsigned short);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern signed short v5 (signed short, unsigned char, unsigned short);
extern signed short (*v6) (signed short, unsigned char, unsigned short);
signed char v7 (void);
signed char (*v8) (void) = v7;
extern unsigned int v9 (signed char, unsigned short, unsigned char);
extern unsigned int (*v10) (signed char, unsigned short, unsigned char);
extern signed char v11 (void);
extern signed char (*v12) (void);
signed short v13 (unsigned char, signed char, signed char);
signed short (*v14) (unsigned char, signed char, signed char) = v13;
extern signed int v15 (void);
extern signed int (*v16) (void);
extern void v17 (unsigned short);
extern void (*v18) (unsigned short);
extern signed int v19 (signed char);
extern signed int (*v20) (signed char);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern unsigned char v23 (signed int, signed int, unsigned int, unsigned char);
extern unsigned char (*v24) (signed int, signed int, unsigned int, unsigned char);
signed char v25 (signed int);
signed char (*v26) (signed int) = v25;
extern signed int v27 (signed char);
extern signed int (*v28) (signed char);
unsigned int v29 (void);
unsigned int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 1;
signed short v32 = -4;
signed int v31 = -1;

unsigned int v29 (void)
{
{
for (;;) {
signed int v36 = -4;
unsigned char v35 = 4;
signed char v34 = -4;
trace++;
switch (trace)
{
case 7: 
return 0U;
default: abort ();
}
}
}
}

signed char v25 (signed int v37)
{
history[history_index++] = (int)v37;
{
for (;;) {
signed char v40 = 1;
unsigned char v39 = 3;
signed char v38 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (unsigned char v41, signed char v42, signed char v43)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
unsigned char v46 = 7;
unsigned int v45 = 5U;
unsigned char v44 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (void)
{
{
for (;;) {
unsigned short v49 = 7;
unsigned short v48 = 2;
signed int v47 = -4;
trace++;
switch (trace)
{
case 10: 
return -3;
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
signed int v52;
signed char v53;
unsigned short v54;
signed char v55;
v52 = -4 - v31;
v53 = 3 + -1;
v54 = 3 - 6;
v55 = v1 (v52, v53, v54);
history[history_index++] = (int)v55;
}
} while (trace < 11);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
