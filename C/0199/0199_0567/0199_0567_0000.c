#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (signed int);
extern signed char (*v2) (signed int);
unsigned int v3 (signed int, signed int, signed short);
unsigned int (*v4) (signed int, signed int, signed short) = v3;
extern unsigned char v5 (unsigned short, unsigned short);
extern unsigned char (*v6) (unsigned short, unsigned short);
extern signed char v7 (signed int, signed short, unsigned int, signed char);
extern signed char (*v8) (signed int, signed short, unsigned int, signed char);
signed char v9 (unsigned short, signed short, unsigned short, signed int);
signed char (*v10) (unsigned short, signed short, unsigned short, signed int) = v9;
extern unsigned int v11 (unsigned short, signed short, unsigned int, signed char);
extern unsigned int (*v12) (unsigned short, signed short, unsigned int, signed char);
extern void v13 (unsigned char, signed char);
extern void (*v14) (unsigned char, signed char);
extern unsigned int v15 (signed int);
extern unsigned int (*v16) (signed int);
void v17 (unsigned int);
void (*v18) (unsigned int) = v17;
extern unsigned int v19 (signed short, unsigned int, unsigned int, signed char);
extern unsigned int (*v20) (signed short, unsigned int, unsigned int, signed char);
extern signed short v21 (unsigned short, unsigned short, signed char);
extern signed short (*v22) (unsigned short, unsigned short, signed char);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
unsigned char v25 (unsigned char, unsigned char);
unsigned char (*v26) (unsigned char, unsigned char) = v25;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 6;
unsigned short v32 = 5;
unsigned short v31 = 7;

unsigned char v25 (unsigned char v34, unsigned char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed short v38 = -2;
signed short v37 = 3;
signed char v36 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (unsigned int v39)
{
history[history_index++] = (int)v39;
{
for (;;) {
signed short v42 = 2;
signed char v41 = 0;
unsigned int v40 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (unsigned short v43, signed short v44, unsigned short v45, signed int v46)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
signed char v49 = -4;
signed int v48 = -3;
unsigned int v47 = 7U;
trace++;
switch (trace)
{
case 10: 
return v49;
default: abort ();
}
}
}
}

unsigned int v3 (signed int v50, signed int v51, signed short v52)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
unsigned char v55 = 3;
signed int v54 = 1;
unsigned int v53 = 5U;
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
signed int v58;
signed char v59;
v58 = -1 - -3;
v59 = v1 (v58);
history[history_index++] = (int)v59;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
