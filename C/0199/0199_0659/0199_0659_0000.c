#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (unsigned short);
extern signed short (*v2) (unsigned short);
extern unsigned char v3 (unsigned short, signed short, unsigned int, unsigned short);
extern unsigned char (*v4) (unsigned short, signed short, unsigned int, unsigned short);
signed short v7 (signed short, signed int);
signed short (*v8) (signed short, signed int) = v7;
extern signed short v9 (unsigned int);
extern signed short (*v10) (unsigned int);
extern unsigned char v11 (unsigned int, unsigned short, signed short);
extern unsigned char (*v12) (unsigned int, unsigned short, signed short);
extern unsigned short v13 (unsigned short, unsigned int);
extern unsigned short (*v14) (unsigned short, unsigned int);
extern signed char v15 (unsigned int, unsigned char, signed short);
extern signed char (*v16) (unsigned int, unsigned char, signed short);
unsigned short v17 (signed char, unsigned int, signed short);
unsigned short (*v18) (signed char, unsigned int, signed short) = v17;
signed int v19 (unsigned int, signed short);
signed int (*v20) (unsigned int, signed short) = v19;
extern unsigned char v23 (unsigned short);
extern unsigned char (*v24) (unsigned short);
signed int v25 (unsigned int, signed int, unsigned char, signed int);
signed int (*v26) (unsigned int, signed int, unsigned char, signed int) = v25;
void v29 (unsigned int, signed int);
void (*v30) (unsigned int, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 4;
unsigned short v32 = 2;
signed int v31 = -4;

void v29 (unsigned int v34, signed int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed short v38 = 0;
unsigned char v37 = 4;
signed int v36 = 0;
trace++;
switch (trace)
{
case 4: 
return;
case 6: 
return;
default: abort ();
}
}
}
}

signed int v25 (unsigned int v39, signed int v40, unsigned char v41, signed int v42)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned char v45 = 3;
signed int v44 = 1;
unsigned short v43 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (unsigned int v46, signed short v47)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed short v50 = 2;
unsigned char v49 = 2;
unsigned int v48 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (signed char v51, unsigned int v52, signed short v53)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
unsigned int v56 = 3U;
signed int v55 = -2;
signed short v54 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (signed short v57, signed int v58)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
unsigned short v61 = 5;
unsigned short v60 = 0;
unsigned short v59 = 1;
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
signed short v65;
v64 = 1 - v32;
v65 = v1 (v64);
history[history_index++] = (int)v65;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
