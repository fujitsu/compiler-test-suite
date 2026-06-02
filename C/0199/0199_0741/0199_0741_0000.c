#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned short);
extern void (*v2) (unsigned short);
signed int v3 (unsigned int, unsigned char, unsigned char, unsigned short);
signed int (*v4) (unsigned int, unsigned char, unsigned char, unsigned short) = v3;
extern void v5 (unsigned int, signed char);
extern void (*v6) (unsigned int, signed char);
extern unsigned int v7 (unsigned char, signed short, unsigned short);
extern unsigned int (*v8) (unsigned char, signed short, unsigned short);
signed short v9 (signed short);
signed short (*v10) (signed short) = v9;
extern unsigned short v11 (unsigned char, signed char, unsigned char, signed short);
extern unsigned short (*v12) (unsigned char, signed char, unsigned char, signed short);
void v13 (signed short);
void (*v14) (signed short) = v13;
extern signed int v15 (signed int, signed int, signed char);
extern signed int (*v16) (signed int, signed int, signed char);
extern unsigned short v17 (signed char);
extern unsigned short (*v18) (signed char);
extern unsigned char v19 (unsigned short, unsigned int);
extern unsigned char (*v20) (unsigned short, unsigned int);
extern signed char v21 (unsigned char, signed int, signed int);
extern signed char (*v22) (unsigned char, signed int, signed int);
extern void v23 (signed int, unsigned int, signed char);
extern void (*v24) (signed int, unsigned int, signed char);
extern unsigned int v25 (signed short);
extern unsigned int (*v26) (signed short);
extern unsigned char v27 (unsigned short, unsigned int, signed char);
extern unsigned char (*v28) (unsigned short, unsigned int, signed char);
extern unsigned short v29 (unsigned short, signed char, unsigned short, signed char);
extern unsigned short (*v30) (unsigned short, signed char, unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -3;
signed int v32 = 3;
signed int v31 = -3;

void v13 (signed short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned int v37 = 4U;
unsigned short v36 = 4;
signed short v35 = -3;
trace++;
switch (trace)
{
case 2: 
{
unsigned short v38;
unsigned int v39;
signed char v40;
unsigned char v41;
v38 = v36 + v36;
v39 = 4U + v37;
v40 = -1 + 3;
v41 = v27 (v38, v39, v40);
history[history_index++] = (int)v41;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

signed short v9 (signed short v42)
{
history[history_index++] = (int)v42;
{
for (;;) {
signed char v45 = -2;
unsigned short v44 = 6;
unsigned char v43 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (unsigned int v46, unsigned char v47, unsigned char v48, unsigned short v49)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
signed short v52 = 2;
signed int v51 = 3;
signed short v50 = -3;
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
unsigned short v55;
v55 = 4 - 7;
v1 (v55);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
