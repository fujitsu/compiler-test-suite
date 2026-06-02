#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned short);
extern void (*v2) (unsigned short);
unsigned short v3 (unsigned short, unsigned short, unsigned char);
unsigned short (*v4) (unsigned short, unsigned short, unsigned char) = v3;
unsigned char v5 (unsigned char, unsigned int, unsigned char);
unsigned char (*v6) (unsigned char, unsigned int, unsigned char) = v5;
extern unsigned int v7 (unsigned char, unsigned char, signed short, signed int);
extern unsigned int (*v8) (unsigned char, unsigned char, signed short, signed int);
extern signed int v9 (unsigned char, signed short);
extern signed int (*v10) (unsigned char, signed short);
unsigned char v13 (unsigned char, signed short, signed short, signed int);
unsigned char (*v14) (unsigned char, signed short, signed short, signed int) = v13;
signed short v15 (signed int, signed char, signed int, signed short);
signed short (*v16) (signed int, signed char, signed int, signed short) = v15;
extern signed int v17 (unsigned int, signed char);
extern signed int (*v18) (unsigned int, signed char);
extern void v19 (signed int, signed int);
extern void (*v20) (signed int, signed int);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
unsigned char v25 (signed int, unsigned int, unsigned short);
unsigned char (*v26) (signed int, unsigned int, unsigned short) = v25;
extern unsigned short v27 (signed short);
extern unsigned short (*v28) (signed short);
extern unsigned int v29 (signed int);
extern unsigned int (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -2;
unsigned int v32 = 7U;
signed short v31 = -2;

unsigned char v25 (signed int v34, unsigned int v35, unsigned short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed int v39 = 3;
unsigned char v38 = 5;
unsigned char v37 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (signed int v40, signed char v41, signed int v42, signed short v43)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed int v46 = 1;
signed char v45 = 0;
signed int v44 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (unsigned char v47, signed short v48, signed short v49, signed int v50)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
unsigned short v53 = 3;
signed short v52 = -4;
signed char v51 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned char v54, unsigned int v55, unsigned char v56)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
unsigned char v59 = 1;
signed short v58 = 0;
unsigned char v57 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (unsigned short v60, unsigned short v61, unsigned char v62)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned char v65 = 0;
unsigned int v64 = 7U;
signed short v63 = 0;
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
unsigned short v68;
v68 = 5 - 4;
v1 (v68);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
