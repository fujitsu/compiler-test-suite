#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed int, signed char, signed int, unsigned char);
extern unsigned char (*v2) (signed int, signed char, signed int, unsigned char);
signed char v3 (void);
signed char (*v4) (void) = v3;
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern void v7 (signed int, signed short, signed char);
extern void (*v8) (signed int, signed short, signed char);
extern void v9 (signed int, signed int, unsigned char);
extern void (*v10) (signed int, signed int, unsigned char);
extern unsigned int v11 (unsigned int, unsigned char, signed char);
extern unsigned int (*v12) (unsigned int, unsigned char, signed char);
extern signed char v13 (signed int);
extern signed char (*v14) (signed int);
extern signed char v15 (unsigned short, unsigned short, unsigned int);
extern signed char (*v16) (unsigned short, unsigned short, unsigned int);
extern signed short v17 (void);
extern signed short (*v18) (void);
unsigned char v19 (signed char, unsigned int, signed short, unsigned char);
unsigned char (*v20) (signed char, unsigned int, signed short, unsigned char) = v19;
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
unsigned short v27 (signed short, unsigned int, signed short);
unsigned short (*v28) (signed short, unsigned int, signed short) = v27;
extern unsigned char v29 (signed short, signed int);
extern unsigned char (*v30) (signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 2;
signed short v32 = 1;
unsigned char v31 = 3;

unsigned short v27 (signed short v34, unsigned int v35, signed short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned char v39 = 2;
signed char v38 = -4;
unsigned int v37 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (signed char v40, unsigned int v41, signed short v42, unsigned char v43)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
unsigned int v46 = 4U;
unsigned int v45 = 4U;
unsigned int v44 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (void)
{
{
for (;;) {
unsigned short v49 = 0;
signed short v48 = -3;
unsigned char v47 = 1;
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
signed int v52;
signed char v53;
signed int v54;
unsigned char v55;
unsigned char v56;
v52 = 3 + -3;
v53 = 0 + -3;
v54 = -4 - -3;
v55 = 1 - v33;
v56 = v1 (v52, v53, v54, v55);
history[history_index++] = (int)v56;
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
