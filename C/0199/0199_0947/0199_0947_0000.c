#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned short, signed char);
extern void (*v2) (unsigned short, signed char);
unsigned char v3 (unsigned int, signed char, unsigned int);
unsigned char (*v4) (unsigned int, signed char, unsigned int) = v3;
extern signed int v5 (signed char, signed int);
extern signed int (*v6) (signed char, signed int);
signed short v7 (signed int, unsigned char, signed short, signed char);
signed short (*v8) (signed int, unsigned char, signed short, signed char) = v7;
extern unsigned char v9 (unsigned short, unsigned int);
extern unsigned char (*v10) (unsigned short, unsigned int);
signed int v11 (signed int);
signed int (*v12) (signed int) = v11;
extern unsigned int v13 (unsigned char, signed short);
extern unsigned int (*v14) (unsigned char, signed short);
extern unsigned char v15 (unsigned int, signed short, unsigned int);
extern unsigned char (*v16) (unsigned int, signed short, unsigned int);
extern signed int v17 (unsigned int, unsigned char, signed short);
extern signed int (*v18) (unsigned int, unsigned char, signed short);
extern signed char v21 (unsigned short, unsigned char, unsigned char, unsigned char);
extern signed char (*v22) (unsigned short, unsigned char, unsigned char, unsigned char);
extern signed short v23 (void);
extern signed short (*v24) (void);
void v29 (signed char, signed int, signed int, unsigned int);
void (*v30) (signed char, signed int, signed int, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -1;
unsigned char v32 = 2;
signed char v31 = -4;

void v29 (signed char v34, signed int v35, signed int v36, unsigned int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 6;
unsigned int v39 = 6U;
signed int v38 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (signed int v41)
{
history[history_index++] = (int)v41;
{
for (;;) {
unsigned char v44 = 1;
unsigned char v43 = 4;
signed short v42 = 3;
trace++;
switch (trace)
{
case 4: 
{
unsigned int v45;
unsigned char v46;
signed short v47;
signed int v48;
v45 = 5U + 6U;
v46 = 5 - v43;
v47 = v42 + v42;
v48 = v17 (v45, v46, v47);
history[history_index++] = (int)v48;
}
break;
case 14: 
return 0;
default: abort ();
}
}
}
}

signed short v7 (signed int v49, unsigned char v50, signed short v51, signed char v52)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
unsigned short v55 = 5;
signed int v54 = -2;
unsigned int v53 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (unsigned int v56, signed char v57, unsigned int v58)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
signed int v61 = -2;
signed char v60 = -1;
signed short v59 = -2;
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
signed char v65;
v64 = 2 + 1;
v65 = -2 + 2;
v1 (v64, v65);
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
