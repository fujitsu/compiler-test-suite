#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned short);
extern unsigned int (*v2) (unsigned short);
extern unsigned int v3 (unsigned int, signed int, signed char, signed int);
extern unsigned int (*v4) (unsigned int, signed int, signed char, signed int);
extern signed int v5 (signed int, signed short);
extern signed int (*v6) (signed int, signed short);
extern unsigned int v7 (signed short, signed short, unsigned int, unsigned int);
extern unsigned int (*v8) (signed short, signed short, unsigned int, unsigned int);
unsigned char v9 (signed char);
unsigned char (*v10) (signed char) = v9;
extern unsigned char v11 (signed char, unsigned char, unsigned char);
extern unsigned char (*v12) (signed char, unsigned char, unsigned char);
extern signed char v13 (signed char, signed char);
extern signed char (*v14) (signed char, signed char);
unsigned char v15 (unsigned char, unsigned char);
unsigned char (*v16) (unsigned char, unsigned char) = v15;
extern signed char v17 (signed char, signed char, unsigned char, signed int);
extern signed char (*v18) (signed char, signed char, unsigned char, signed int);
unsigned int v19 (signed int);
unsigned int (*v20) (signed int) = v19;
void v21 (signed int, signed short, signed int);
void (*v22) (signed int, signed short, signed int) = v21;
extern unsigned short v23 (unsigned int, signed char, unsigned int);
extern unsigned short (*v24) (unsigned int, signed char, unsigned int);
extern unsigned short v25 (signed int);
extern unsigned short (*v26) (signed int);
extern unsigned char v27 (unsigned char);
extern unsigned char (*v28) (unsigned char);
extern unsigned short v29 (unsigned short);
extern unsigned short (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -4;
signed short v32 = 0;
unsigned short v31 = 7;

void v21 (signed int v34, signed short v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed char v39 = -3;
unsigned int v38 = 6U;
signed short v37 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (signed int v40)
{
history[history_index++] = (int)v40;
{
for (;;) {
unsigned char v43 = 6;
signed short v42 = 3;
unsigned short v41 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (unsigned char v44, unsigned char v45)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
unsigned char v48 = 2;
unsigned short v47 = 0;
unsigned int v46 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (signed char v49)
{
history[history_index++] = (int)v49;
{
for (;;) {
signed short v52 = 3;
unsigned short v51 = 3;
signed char v50 = 0;
trace++;
switch (trace)
{
case 6: 
return 5;
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
unsigned int v56;
v55 = 5 + 4;
v56 = v1 (v55);
history[history_index++] = (int)v56;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
