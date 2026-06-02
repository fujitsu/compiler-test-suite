#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (unsigned short, signed char, unsigned char);
extern unsigned short (*v2) (unsigned short, signed char, unsigned char);
signed short v3 (unsigned char);
signed short (*v4) (unsigned char) = v3;
unsigned int v5 (signed char, unsigned short);
unsigned int (*v6) (signed char, unsigned short) = v5;
unsigned char v7 (unsigned short, unsigned char, unsigned short);
unsigned char (*v8) (unsigned short, unsigned char, unsigned short) = v7;
extern unsigned int v9 (signed short);
extern unsigned int (*v10) (signed short);
extern unsigned char v11 (unsigned char);
extern unsigned char (*v12) (unsigned char);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern unsigned int v19 (unsigned short, unsigned char, signed int);
extern unsigned int (*v20) (unsigned short, unsigned char, signed int);
extern signed int v21 (unsigned char);
extern signed int (*v22) (unsigned char);
extern signed char v23 (void);
extern signed char (*v24) (void);
extern unsigned char v25 (signed char, unsigned int);
extern unsigned char (*v26) (signed char, unsigned int);
extern unsigned char v27 (signed int, signed int, unsigned int, signed char);
extern unsigned char (*v28) (signed int, signed int, unsigned int, signed char);
extern unsigned int v29 (unsigned int, signed int, unsigned int);
extern unsigned int (*v30) (unsigned int, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 1U;
unsigned int v32 = 6U;
signed int v31 = 2;

unsigned char v7 (unsigned short v34, unsigned char v35, unsigned short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed char v39 = -3;
unsigned int v38 = 7U;
unsigned short v37 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (signed char v40, unsigned short v41)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed char v44 = 1;
unsigned char v43 = 1;
unsigned short v42 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (unsigned char v45)
{
history[history_index++] = (int)v45;
{
for (;;) {
signed char v48 = 1;
unsigned int v47 = 2U;
unsigned int v46 = 5U;
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
unsigned short v51;
signed char v52;
unsigned char v53;
unsigned short v54;
v51 = 6 + 1;
v52 = -1 + -3;
v53 = 7 + 1;
v54 = v1 (v51, v52, v53);
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
