#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned int);
extern void (*v2) (unsigned int);
signed short v3 (unsigned char, unsigned int, unsigned short, signed char);
signed short (*v4) (unsigned char, unsigned int, unsigned short, signed char) = v3;
extern unsigned short v5 (signed char);
extern unsigned short (*v6) (signed char);
extern unsigned int v7 (signed short, unsigned int, signed char);
extern unsigned int (*v8) (signed short, unsigned int, signed char);
void v9 (unsigned short, signed int, unsigned short);
void (*v10) (unsigned short, signed int, unsigned short) = v9;
extern unsigned int v11 (unsigned short, unsigned int, signed char);
extern unsigned int (*v12) (unsigned short, unsigned int, signed char);
extern signed char v13 (signed char, signed char, signed int);
extern signed char (*v14) (signed char, signed char, signed int);
unsigned short v15 (signed char, signed char, unsigned char);
unsigned short (*v16) (signed char, signed char, unsigned char) = v15;
extern void v17 (unsigned int, unsigned short);
extern void (*v18) (unsigned int, unsigned short);
extern unsigned int v19 (unsigned int, unsigned char, signed short);
extern unsigned int (*v20) (unsigned int, unsigned char, signed short);
extern unsigned short v21 (unsigned char, unsigned int, unsigned int);
extern unsigned short (*v22) (unsigned char, unsigned int, unsigned int);
extern unsigned int v23 (unsigned char, unsigned short);
extern unsigned int (*v24) (unsigned char, unsigned short);
extern unsigned short v27 (signed char, unsigned short);
extern unsigned short (*v28) (signed char, unsigned short);
extern unsigned short v29 (signed int);
extern unsigned short (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 2;
signed char v32 = 0;
unsigned int v31 = 5U;

unsigned short v15 (signed char v34, signed char v35, unsigned char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned char v39 = 0;
unsigned int v38 = 0U;
unsigned short v37 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (unsigned short v40, signed int v41, unsigned short v42)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned char v45 = 6;
signed char v44 = 0;
signed int v43 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (unsigned char v46, unsigned int v47, unsigned short v48, signed char v49)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned short v52 = 2;
signed short v51 = 3;
unsigned char v50 = 0;
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
unsigned int v55;
v55 = v31 + 7U;
v1 (v55);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
