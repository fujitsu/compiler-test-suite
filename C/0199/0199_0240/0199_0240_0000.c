#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned short, unsigned int, unsigned char, signed int);
extern unsigned int (*v2) (unsigned short, unsigned int, unsigned char, signed int);
extern signed char v5 (signed int, unsigned short, unsigned short, unsigned int);
extern signed char (*v6) (signed int, unsigned short, unsigned short, unsigned int);
unsigned char v7 (signed short, unsigned int, signed char);
unsigned char (*v8) (signed short, unsigned int, signed char) = v7;
void v9 (unsigned short, signed short, unsigned char);
void (*v10) (unsigned short, signed short, unsigned char) = v9;
signed short v11 (unsigned short, signed short);
signed short (*v12) (unsigned short, signed short) = v11;
extern void v13 (unsigned char, signed short, signed char);
extern void (*v14) (unsigned char, signed short, signed char);
extern void v15 (signed short, unsigned int, unsigned int, unsigned char);
extern void (*v16) (signed short, unsigned int, unsigned int, unsigned char);
extern signed int v17 (unsigned int, signed int);
extern signed int (*v18) (unsigned int, signed int);
extern unsigned char v19 (signed int, signed int);
extern unsigned char (*v20) (signed int, signed int);
extern signed short v21 (signed char, unsigned char);
extern signed short (*v22) (signed char, unsigned char);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
unsigned char v25 (unsigned char);
unsigned char (*v26) (unsigned char) = v25;
extern unsigned int v27 (signed char, signed int, unsigned char, signed short);
extern unsigned int (*v28) (signed char, signed int, unsigned char, signed short);
signed short v29 (signed char, signed char, signed short, unsigned short);
signed short (*v30) (signed char, signed char, signed short, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -1;
signed int v32 = -2;
unsigned int v31 = 3U;

signed short v29 (signed char v34, signed char v35, signed short v36, unsigned short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned short v40 = 6;
signed int v39 = -2;
signed int v38 = 1;
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
unsigned char v44 = 7;
unsigned char v43 = 6;
signed int v42 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (unsigned short v45, signed short v46)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
signed char v49 = 2;
unsigned short v48 = 3;
unsigned short v47 = 4;
trace++;
switch (trace)
{
case 1: 
return v46;
default: abort ();
}
}
}
}

void v9 (unsigned short v50, signed short v51, unsigned char v52)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
unsigned int v55 = 2U;
unsigned char v54 = 6;
unsigned int v53 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (signed short v56, unsigned int v57, signed char v58)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
unsigned int v61 = 6U;
unsigned short v60 = 4;
unsigned short v59 = 0;
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
unsigned short v64;
unsigned int v65;
unsigned char v66;
signed int v67;
unsigned int v68;
v64 = 1 - 2;
v65 = v31 + v31;
v66 = 1 + 4;
v67 = v32 + v32;
v68 = v1 (v64, v65, v66, v67);
history[history_index++] = (int)v68;
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
