#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (unsigned int, unsigned short);
extern unsigned short (*v2) (unsigned int, unsigned short);
void v3 (signed short);
void (*v4) (signed short) = v3;
extern unsigned int v5 (signed int);
extern unsigned int (*v6) (signed int);
extern unsigned short v7 (signed int, signed short);
extern unsigned short (*v8) (signed int, signed short);
unsigned char v9 (signed char, signed int, unsigned char, signed char);
unsigned char (*v10) (signed char, signed int, unsigned char, signed char) = v9;
extern signed char v11 (signed short);
extern signed char (*v12) (signed short);
extern void v13 (signed char);
extern void (*v14) (signed char);
extern void v15 (unsigned char, signed short);
extern void (*v16) (unsigned char, signed short);
extern unsigned int v17 (unsigned short, signed char, signed char);
extern unsigned int (*v18) (unsigned short, signed char, signed char);
extern unsigned short v19 (unsigned short, signed short, signed int, unsigned char);
extern unsigned short (*v20) (unsigned short, signed short, signed int, unsigned char);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern signed short v23 (signed char, signed char);
extern signed short (*v24) (signed char, signed char);
unsigned int v25 (signed short, signed char);
unsigned int (*v26) (signed short, signed char) = v25;
extern unsigned int v27 (signed short, unsigned short, unsigned int);
extern unsigned int (*v28) (signed short, unsigned short, unsigned int);
extern signed int v29 (signed int, unsigned short);
extern signed int (*v30) (signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 5U;
unsigned char v32 = 7;
signed int v31 = 1;

unsigned int v25 (signed short v34, signed char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed short v38 = 3;
signed char v37 = 3;
unsigned char v36 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (signed char v39, signed int v40, unsigned char v41, signed char v42)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed int v45 = 0;
unsigned int v44 = 1U;
unsigned char v43 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (signed short v46)
{
history[history_index++] = (int)v46;
{
for (;;) {
unsigned int v49 = 1U;
signed short v48 = -1;
signed int v47 = 2;
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
unsigned int v52;
unsigned short v53;
unsigned short v54;
v52 = v33 - 7U;
v53 = 4 + 4;
v54 = v1 (v52, v53);
history[history_index++] = (int)v54;
}
} while (trace < 11);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
