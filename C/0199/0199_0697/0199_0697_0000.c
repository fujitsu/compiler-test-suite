#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed short, unsigned char, unsigned char);
extern signed short (*v2) (signed short, unsigned char, unsigned char);
extern signed char v3 (unsigned char, signed short, unsigned char);
extern signed char (*v4) (unsigned char, signed short, unsigned char);
extern unsigned short v5 (unsigned char, unsigned short, unsigned char);
extern unsigned short (*v6) (unsigned char, unsigned short, unsigned char);
signed short v7 (void);
signed short (*v8) (void) = v7;
extern signed int v9 (unsigned int, signed int, signed char, unsigned int);
extern signed int (*v10) (unsigned int, signed int, signed char, unsigned int);
extern unsigned char v11 (signed short, signed int, unsigned short);
extern unsigned char (*v12) (signed short, signed int, unsigned short);
extern signed int v13 (unsigned char);
extern signed int (*v14) (unsigned char);
void v15 (signed short, unsigned int, unsigned char, unsigned char);
void (*v16) (signed short, unsigned int, unsigned char, unsigned char) = v15;
extern signed int v17 (unsigned int, signed short, unsigned char, unsigned char);
extern signed int (*v18) (unsigned int, signed short, unsigned char, unsigned char);
extern unsigned short v19 (unsigned int, unsigned short, signed char, signed short);
extern unsigned short (*v20) (unsigned int, unsigned short, signed char, signed short);
extern signed short v21 (unsigned short, signed char, unsigned int, signed char);
extern signed short (*v22) (unsigned short, signed char, unsigned int, signed char);
extern unsigned int v23 (signed int, unsigned short, unsigned char);
extern unsigned int (*v24) (signed int, unsigned short, unsigned char);
extern unsigned int v25 (signed char);
extern unsigned int (*v26) (signed char);
extern signed int v27 (unsigned short, unsigned char, signed short, unsigned short);
extern signed int (*v28) (unsigned short, unsigned char, signed short, unsigned short);
unsigned int v29 (signed char, signed char);
unsigned int (*v30) (signed char, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 4;
signed short v32 = 0;
unsigned int v31 = 5U;

unsigned int v29 (signed char v34, signed char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned short v38 = 6;
signed int v37 = -3;
signed int v36 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (signed short v39, unsigned int v40, unsigned char v41, unsigned char v42)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed short v45 = -4;
unsigned short v44 = 5;
signed char v43 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (void)
{
{
for (;;) {
unsigned char v48 = 1;
signed char v47 = -4;
unsigned short v46 = 6;
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
signed short v51;
unsigned char v52;
unsigned char v53;
signed short v54;
v51 = 1 - v32;
v52 = v33 - v33;
v53 = 0 + 4;
v54 = v1 (v51, v52, v53);
history[history_index++] = (int)v54;
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
