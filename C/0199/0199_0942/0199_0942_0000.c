#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned char, signed short, unsigned int);
extern void (*v2) (unsigned char, signed short, unsigned int);
extern signed char v3 (void);
extern signed char (*v4) (void);
void v5 (unsigned int, unsigned char, unsigned int);
void (*v6) (unsigned int, unsigned char, unsigned int) = v5;
extern signed short v7 (signed short, unsigned char, signed int, signed short);
extern signed short (*v8) (signed short, unsigned char, signed int, signed short);
extern signed char v9 (signed short, signed int, unsigned short);
extern signed char (*v10) (signed short, signed int, unsigned short);
extern signed int v11 (signed int, signed char, signed int);
extern signed int (*v12) (signed int, signed char, signed int);
extern unsigned short v13 (signed short, unsigned int);
extern unsigned short (*v14) (signed short, unsigned int);
extern unsigned int v15 (signed char, signed char);
extern unsigned int (*v16) (signed char, signed char);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern void v19 (signed int, signed short);
extern void (*v20) (signed int, signed short);
extern unsigned int v21 (signed short, signed char, signed int, unsigned int);
extern unsigned int (*v22) (signed short, signed char, signed int, unsigned int);
void v23 (unsigned int, signed int, unsigned char, signed int);
void (*v24) (unsigned int, signed int, unsigned char, signed int) = v23;
signed short v25 (signed int);
signed short (*v26) (signed int) = v25;
extern signed short v29 (unsigned int);
extern signed short (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -1;
signed short v32 = 0;
signed char v31 = 1;

signed short v25 (signed int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed int v37 = 3;
signed char v36 = -1;
signed short v35 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v23 (unsigned int v38, signed int v39, unsigned char v40, signed int v41)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned int v44 = 5U;
signed short v43 = 3;
unsigned int v42 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (unsigned int v45, unsigned char v46, unsigned int v47)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed int v50 = -1;
unsigned short v49 = 6;
unsigned short v48 = 4;
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
unsigned char v53;
signed short v54;
unsigned int v55;
v53 = 7 - 4;
v54 = v32 - v32;
v55 = 6U + 2U;
v1 (v53, v54, v55);
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
