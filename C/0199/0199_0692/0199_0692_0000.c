#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (signed short, unsigned int, unsigned short, unsigned char);
extern unsigned short (*v2) (signed short, unsigned int, unsigned short, unsigned char);
extern signed short v3 (unsigned int, unsigned int, signed short, signed char);
extern signed short (*v4) (unsigned int, unsigned int, signed short, signed char);
unsigned char v5 (unsigned char, signed int, signed short, signed short);
unsigned char (*v6) (unsigned char, signed int, signed short, signed short) = v5;
extern void v7 (unsigned short);
extern void (*v8) (unsigned short);
extern void v9 (signed char, signed char, signed int);
extern void (*v10) (signed char, signed char, signed int);
extern void v11 (signed char, unsigned int, unsigned char);
extern void (*v12) (signed char, unsigned int, unsigned char);
extern signed int v15 (unsigned int, unsigned char, signed short);
extern signed int (*v16) (unsigned int, unsigned char, signed short);
extern signed char v17 (unsigned short, signed int, signed short, unsigned char);
extern signed char (*v18) (unsigned short, signed int, signed short, unsigned char);
extern signed char v19 (unsigned short, signed short);
extern signed char (*v20) (unsigned short, signed short);
extern unsigned char v21 (unsigned short, unsigned int);
extern unsigned char (*v22) (unsigned short, unsigned int);
extern signed char v23 (unsigned char, unsigned int, signed int);
extern signed char (*v24) (unsigned char, unsigned int, signed int);
signed char v25 (unsigned int, unsigned char, signed short);
signed char (*v26) (unsigned int, unsigned char, signed short) = v25;
void v29 (void);
void (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 2;
unsigned char v32 = 2;
signed char v31 = -3;

void v29 (void)
{
{
for (;;) {
signed char v36 = 0;
unsigned int v35 = 5U;
unsigned int v34 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v25 (unsigned int v37, unsigned char v38, signed short v39)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
signed int v42 = 1;
unsigned int v41 = 4U;
unsigned short v40 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned char v43, signed int v44, signed short v45, signed short v46)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
signed short v49 = -3;
signed int v48 = 0;
unsigned int v47 = 0U;
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
signed short v52;
unsigned int v53;
unsigned short v54;
unsigned char v55;
unsigned short v56;
v52 = 0 - 0;
v53 = 5U + 0U;
v54 = 4 - 6;
v55 = 1 + 4;
v56 = v1 (v52, v53, v54, v55);
history[history_index++] = (int)v56;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
