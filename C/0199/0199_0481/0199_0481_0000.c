#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (signed char, signed int, signed char);
extern unsigned short (*v2) (signed char, signed int, signed char);
extern signed char v3 (unsigned int);
extern signed char (*v4) (unsigned int);
extern unsigned short v5 (unsigned char);
extern unsigned short (*v6) (unsigned char);
signed int v9 (signed char, signed char);
signed int (*v10) (signed char, signed char) = v9;
extern void v11 (signed char);
extern void (*v12) (signed char);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern unsigned char v15 (signed short, signed int, signed short);
extern unsigned char (*v16) (signed short, signed int, signed short);
extern unsigned char v17 (signed short, signed char, signed short, unsigned int);
extern unsigned char (*v18) (signed short, signed char, signed short, unsigned int);
extern unsigned char v19 (signed int);
extern unsigned char (*v20) (signed int);
extern signed short v21 (signed short, unsigned short);
extern signed short (*v22) (signed short, unsigned short);
extern void v23 (unsigned short, unsigned short, signed char, signed short);
extern void (*v24) (unsigned short, unsigned short, signed char, signed short);
unsigned char v25 (unsigned short, unsigned short, signed int, unsigned short);
unsigned char (*v26) (unsigned short, unsigned short, signed int, unsigned short) = v25;
signed char v27 (unsigned int, unsigned short);
signed char (*v28) (unsigned int, unsigned short) = v27;
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 1;
unsigned int v32 = 0U;
signed char v31 = 1;

signed char v27 (unsigned int v34, unsigned short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned char v38 = 5;
signed char v37 = -1;
unsigned short v36 = 4;
trace++;
switch (trace)
{
case 1: 
return -2;
default: abort ();
}
}
}
}

unsigned char v25 (unsigned short v39, unsigned short v40, signed int v41, unsigned short v42)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned char v45 = 2;
signed short v44 = 3;
signed short v43 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (signed char v46, signed char v47)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed int v50 = 2;
signed char v49 = 2;
unsigned int v48 = 7U;
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
signed char v53;
signed int v54;
signed char v55;
unsigned short v56;
v53 = v33 - v33;
v54 = -3 + 0;
v55 = v33 + 1;
v56 = v1 (v53, v54, v55);
history[history_index++] = (int)v56;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
