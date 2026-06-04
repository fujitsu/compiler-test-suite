#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed char, unsigned short, signed char, signed int);
extern unsigned char (*v2) (signed char, unsigned short, signed char, signed int);
extern unsigned short v5 (signed short, signed char, signed char);
extern unsigned short (*v6) (signed short, signed char, signed char);
unsigned int v7 (void);
unsigned int (*v8) (void) = v7;
void v9 (signed short, unsigned char);
void (*v10) (signed short, unsigned char) = v9;
extern unsigned char v11 (unsigned short, unsigned int);
extern unsigned char (*v12) (unsigned short, unsigned int);
extern signed char v13 (signed short, unsigned int);
extern signed char (*v14) (signed short, unsigned int);
extern unsigned int v15 (signed char, unsigned char, signed short);
extern unsigned int (*v16) (signed char, unsigned char, signed short);
extern void v17 (unsigned int);
extern void (*v18) (unsigned int);
extern signed int v19 (unsigned char, signed short);
extern signed int (*v20) (unsigned char, signed short);
void v21 (unsigned char, signed short, unsigned char, unsigned short);
void (*v22) (unsigned char, signed short, unsigned char, unsigned short) = v21;
extern unsigned int v23 (unsigned int, signed int, signed int);
extern unsigned int (*v24) (unsigned int, signed int, signed int);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
unsigned short v27 (unsigned int, signed int, signed char);
unsigned short (*v28) (unsigned int, signed int, signed char) = v27;
void v29 (signed int, unsigned short);
void (*v30) (signed int, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 3;
unsigned char v32 = 2;
signed short v31 = 0;

void v29 (signed int v34, unsigned short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned int v38 = 2U;
unsigned short v37 = 1;
signed int v36 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v27 (unsigned int v39, signed int v40, signed char v41)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed int v44 = -3;
unsigned short v43 = 1;
signed short v42 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v21 (unsigned char v45, signed short v46, unsigned char v47, unsigned short v48)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
unsigned char v51 = 6;
signed char v50 = -1;
unsigned short v49 = 4;
trace++;
switch (trace)
{
case 5: 
return;
default: abort ();
}
}
}
}

void v9 (signed short v52, unsigned char v53)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
unsigned char v56 = 7;
signed int v55 = 3;
signed char v54 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (void)
{
{
for (;;) {
unsigned int v59 = 0U;
signed short v58 = 0;
signed char v57 = -4;
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
signed char v62;
unsigned short v63;
signed char v64;
signed int v65;
unsigned char v66;
v62 = 0 - -4;
v63 = 7 + 5;
v64 = 1 + 1;
v65 = -1 - 0;
v66 = v1 (v62, v63, v64, v65);
history[history_index++] = (int)v66;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
