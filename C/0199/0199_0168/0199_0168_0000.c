#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (signed short, signed char, signed int);
extern signed char (*v2) (signed short, signed char, signed int);
signed short v3 (unsigned char, signed char, signed short);
signed short (*v4) (unsigned char, signed char, signed short) = v3;
extern unsigned short v5 (unsigned int, signed char, signed short, unsigned short);
extern unsigned short (*v6) (unsigned int, signed char, signed short, unsigned short);
extern unsigned int v7 (unsigned short, signed char);
extern unsigned int (*v8) (unsigned short, signed char);
unsigned int v9 (signed char, unsigned char);
unsigned int (*v10) (signed char, unsigned char) = v9;
extern signed int v11 (unsigned int, unsigned char, unsigned int);
extern signed int (*v12) (unsigned int, unsigned char, unsigned int);
extern signed int v13 (unsigned char);
extern signed int (*v14) (unsigned char);
signed char v15 (signed short, signed char, signed short, unsigned int);
signed char (*v16) (signed short, signed char, signed short, unsigned int) = v15;
void v17 (unsigned char, signed char);
void (*v18) (unsigned char, signed char) = v17;
unsigned short v19 (unsigned char, signed short, unsigned short);
unsigned short (*v20) (unsigned char, signed short, unsigned short) = v19;
extern signed short v21 (signed int, unsigned int, signed char);
extern signed short (*v22) (signed int, unsigned int, signed char);
extern unsigned int v25 (signed short, unsigned short);
extern unsigned int (*v26) (signed short, unsigned short);
extern void v27 (signed int, unsigned int, signed char, signed char);
extern void (*v28) (signed int, unsigned int, signed char, signed char);
void v29 (signed int, unsigned char, unsigned char, unsigned char);
void (*v30) (signed int, unsigned char, unsigned char, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 3;
signed char v32 = 1;
unsigned int v31 = 4U;

void v29 (signed int v34, unsigned char v35, unsigned char v36, unsigned char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed short v40 = 0;
signed short v39 = 3;
signed short v38 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (unsigned char v41, signed short v42, unsigned short v43)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed char v46 = -2;
unsigned int v45 = 0U;
unsigned int v44 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (unsigned char v47, signed char v48)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
signed short v51 = 3;
unsigned int v50 = 5U;
signed char v49 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (signed short v52, signed char v53, signed short v54, unsigned int v55)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned short v58 = 4;
signed int v57 = -1;
signed char v56 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (signed char v59, unsigned char v60)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
signed char v63 = 1;
unsigned int v62 = 4U;
signed char v61 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (unsigned char v64, signed char v65, signed short v66)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
signed char v69 = -3;
unsigned short v68 = 0;
signed int v67 = -3;
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
signed short v72;
signed char v73;
signed int v74;
signed char v75;
v72 = -3 - -2;
v73 = 1 + 2;
v74 = -4 - -4;
v75 = v1 (v72, v73, v74);
history[history_index++] = (int)v75;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
