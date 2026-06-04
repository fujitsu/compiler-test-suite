#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (unsigned short, unsigned short);
extern signed short (*v2) (unsigned short, unsigned short);
extern unsigned short v3 (signed int, unsigned short, signed short, unsigned short);
extern unsigned short (*v4) (signed int, unsigned short, signed short, unsigned short);
void v5 (void);
void (*v6) (void) = v5;
extern signed int v7 (unsigned short);
extern signed int (*v8) (unsigned short);
extern unsigned char v9 (signed char);
extern unsigned char (*v10) (signed char);
extern unsigned short v11 (unsigned short, signed char, unsigned short, signed char);
extern unsigned short (*v12) (unsigned short, signed char, unsigned short, signed char);
extern signed char v13 (signed char, unsigned short, unsigned char, signed char);
extern signed char (*v14) (signed char, unsigned short, unsigned char, signed char);
extern unsigned char v15 (signed char, unsigned short);
extern unsigned char (*v16) (signed char, unsigned short);
extern unsigned int v17 (unsigned int);
extern unsigned int (*v18) (unsigned int);
extern signed char v23 (signed short, unsigned short, signed char);
extern signed char (*v24) (signed short, unsigned short, signed char);
unsigned char v25 (unsigned char, signed char, unsigned char, unsigned short);
unsigned char (*v26) (unsigned char, signed char, unsigned char, unsigned short) = v25;
unsigned int v27 (unsigned short, unsigned short, unsigned short);
unsigned int (*v28) (unsigned short, unsigned short, unsigned short) = v27;
extern unsigned int v29 (signed char, unsigned char, signed char);
extern unsigned int (*v30) (signed char, unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 3;
unsigned short v32 = 6;
signed int v31 = 3;

unsigned int v27 (unsigned short v34, unsigned short v35, unsigned short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned short v39 = 5;
unsigned char v38 = 3;
signed char v37 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v25 (unsigned char v40, signed char v41, unsigned char v42, unsigned short v43)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
unsigned int v46 = 7U;
unsigned int v45 = 4U;
signed int v44 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (void)
{
{
for (;;) {
unsigned short v49 = 5;
signed short v48 = 1;
signed char v47 = -1;
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
unsigned short v52;
unsigned short v53;
signed short v54;
v52 = v33 + v32;
v53 = 5 + v32;
v54 = v1 (v52, v53);
history[history_index++] = (int)v54;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
