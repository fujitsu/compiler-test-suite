#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (signed short, signed short);
extern unsigned short (*v2) (signed short, signed short);
extern signed char v3 (unsigned int, signed short);
extern signed char (*v4) (unsigned int, signed short);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
unsigned char v7 (unsigned int, signed int, unsigned char, signed short);
unsigned char (*v8) (unsigned int, signed int, unsigned char, signed short) = v7;
extern signed char v9 (unsigned int, unsigned char, unsigned short, unsigned int);
extern signed char (*v10) (unsigned int, unsigned char, unsigned short, unsigned int);
extern unsigned int v11 (unsigned char, unsigned char, signed char, signed char);
extern unsigned int (*v12) (unsigned char, unsigned char, signed char, signed char);
extern unsigned short v13 (unsigned short, unsigned char);
extern unsigned short (*v14) (unsigned short, unsigned char);
extern void v15 (void);
extern void (*v16) (void);
extern void v17 (void);
extern void (*v18) (void);
extern signed short v19 (signed int, signed int, unsigned char, unsigned int);
extern signed short (*v20) (signed int, signed int, unsigned char, unsigned int);
unsigned char v21 (signed short);
unsigned char (*v22) (signed short) = v21;
extern unsigned short v23 (unsigned char, signed char, unsigned int, unsigned char);
extern unsigned short (*v24) (unsigned char, signed char, unsigned int, unsigned char);
unsigned char v25 (unsigned char);
unsigned char (*v26) (unsigned char) = v25;
extern void v27 (signed char, signed short, unsigned char, signed short);
extern void (*v28) (signed char, signed short, unsigned char, signed short);
signed char v29 (signed int, unsigned int, signed int, signed char);
signed char (*v30) (signed int, unsigned int, signed int, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 1;
unsigned char v32 = 7;
unsigned short v31 = 6;

signed char v29 (signed int v34, unsigned int v35, signed int v36, signed char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed short v40 = -2;
unsigned short v39 = 1;
signed int v38 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v25 (unsigned char v41)
{
history[history_index++] = (int)v41;
{
for (;;) {
signed short v44 = 1;
signed int v43 = 3;
unsigned int v42 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v21 (signed short v45)
{
history[history_index++] = (int)v45;
{
for (;;) {
unsigned short v48 = 0;
unsigned int v47 = 1U;
signed short v46 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned int v49, signed int v50, unsigned char v51, signed short v52)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
signed int v55 = 1;
unsigned char v54 = 1;
signed int v53 = -1;
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
signed short v58;
signed short v59;
unsigned short v60;
v58 = 2 - 1;
v59 = 2 + -3;
v60 = v1 (v58, v59);
history[history_index++] = (int)v60;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
