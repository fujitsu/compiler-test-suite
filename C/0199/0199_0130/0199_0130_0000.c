#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (signed int, signed char);
extern unsigned int (*v2) (signed int, signed char);
extern signed short v3 (signed short, unsigned char);
extern signed short (*v4) (signed short, unsigned char);
unsigned char v5 (unsigned short, unsigned char);
unsigned char (*v6) (unsigned short, unsigned char) = v5;
void v7 (unsigned short, unsigned short, signed char, unsigned char);
void (*v8) (unsigned short, unsigned short, signed char, unsigned char) = v7;
extern void v9 (signed char, signed short, unsigned char);
extern void (*v10) (signed char, signed short, unsigned char);
extern void v11 (signed short, signed char);
extern void (*v12) (signed short, signed char);
extern unsigned char v13 (signed char, signed int);
extern unsigned char (*v14) (signed char, signed int);
extern signed int v15 (unsigned int, signed int, signed char, signed int);
extern signed int (*v16) (unsigned int, signed int, signed char, signed int);
extern unsigned short v17 (unsigned int, signed short, signed char, signed char);
extern unsigned short (*v18) (unsigned int, signed short, signed char, signed char);
extern signed short v19 (signed int, unsigned short, unsigned char, signed int);
extern signed short (*v20) (signed int, unsigned short, unsigned char, signed int);
extern signed int v21 (unsigned char);
extern signed int (*v22) (unsigned char);
extern unsigned char v23 (signed short, unsigned int, signed short, signed char);
extern unsigned char (*v24) (signed short, unsigned int, signed short, signed char);
extern unsigned int v25 (unsigned int, unsigned char, signed short, unsigned short);
extern unsigned int (*v26) (unsigned int, unsigned char, signed short, unsigned short);
unsigned int v29 (unsigned int, unsigned char, unsigned int, unsigned short);
unsigned int (*v30) (unsigned int, unsigned char, unsigned int, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -2;
unsigned int v32 = 7U;
signed char v31 = 0;

unsigned int v29 (unsigned int v34, unsigned char v35, unsigned int v36, unsigned short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned short v40 = 2;
unsigned short v39 = 6;
unsigned char v38 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (unsigned short v41, unsigned short v42, signed char v43, unsigned char v44)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
unsigned int v47 = 7U;
signed char v46 = 3;
signed short v45 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned short v48, unsigned char v49)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
signed int v52 = -2;
unsigned int v51 = 4U;
unsigned int v50 = 3U;
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
signed int v55;
signed char v56;
unsigned int v57;
v55 = 0 + -4;
v56 = v31 + v31;
v57 = v1 (v55, v56);
history[history_index++] = (int)v57;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
