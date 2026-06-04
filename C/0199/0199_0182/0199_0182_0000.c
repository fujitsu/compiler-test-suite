#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (unsigned short, unsigned short);
extern signed short (*v2) (unsigned short, unsigned short);
signed int v3 (signed char, signed char, unsigned int);
signed int (*v4) (signed char, signed char, unsigned int) = v3;
unsigned short v5 (unsigned int, signed short, signed int, unsigned int);
unsigned short (*v6) (unsigned int, signed short, signed int, unsigned int) = v5;
extern unsigned char v7 (signed int, signed int, signed int, signed char);
extern unsigned char (*v8) (signed int, signed int, signed int, signed char);
extern unsigned short v9 (unsigned short, signed short);
extern unsigned short (*v10) (unsigned short, signed short);
extern unsigned char v13 (signed short, unsigned char, unsigned char);
extern unsigned char (*v14) (signed short, unsigned char, unsigned char);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern unsigned int v17 (signed int, signed char, signed int, unsigned char);
extern unsigned int (*v18) (signed int, signed char, signed int, unsigned char);
extern unsigned int v19 (signed short);
extern unsigned int (*v20) (signed short);
extern signed char v21 (unsigned int);
extern signed char (*v22) (unsigned int);
extern unsigned char v23 (unsigned int, unsigned int, signed char, unsigned short);
extern unsigned char (*v24) (unsigned int, unsigned int, signed char, unsigned short);
void v25 (unsigned short, unsigned short);
void (*v26) (unsigned short, unsigned short) = v25;
extern signed int v27 (void);
extern signed int (*v28) (void);
extern signed int v29 (unsigned short, unsigned char, unsigned char);
extern signed int (*v30) (unsigned short, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 7;
unsigned int v32 = 6U;
signed int v31 = 1;

void v25 (unsigned short v34, unsigned short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned char v38 = 4;
signed char v37 = -2;
signed short v36 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (unsigned int v39, signed short v40, signed int v41, unsigned int v42)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed short v45 = 1;
unsigned short v44 = 5;
unsigned short v43 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed char v46, signed char v47, unsigned int v48)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
unsigned short v51 = 4;
unsigned short v50 = 3;
unsigned int v49 = 6U;
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
unsigned short v54;
unsigned short v55;
signed short v56;
v54 = 6 - v33;
v55 = v33 + 2;
v56 = v1 (v54, v55);
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
