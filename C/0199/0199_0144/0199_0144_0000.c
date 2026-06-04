#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed int, signed char);
extern void (*v2) (signed int, signed char);
extern signed short v3 (void);
extern signed short (*v4) (void);
void v5 (signed int);
void (*v6) (signed int) = v5;
extern void v7 (signed int, signed int, unsigned short, signed char);
extern void (*v8) (signed int, signed int, unsigned short, signed char);
unsigned char v9 (unsigned short, signed short, signed int, signed char);
unsigned char (*v10) (unsigned short, signed short, signed int, signed char) = v9;
extern signed char v11 (signed int, signed int, signed int);
extern signed char (*v12) (signed int, signed int, signed int);
extern signed int v13 (signed char, unsigned int, signed int, unsigned char);
extern signed int (*v14) (signed char, unsigned int, signed int, unsigned char);
extern unsigned short v15 (signed char);
extern unsigned short (*v16) (signed char);
extern unsigned short v17 (signed short, signed int);
extern unsigned short (*v18) (signed short, signed int);
extern void v19 (unsigned int, unsigned short, signed char);
extern void (*v20) (unsigned int, unsigned short, signed char);
unsigned char v21 (unsigned short, signed char);
unsigned char (*v22) (unsigned short, signed char) = v21;
extern unsigned int v23 (unsigned int, unsigned short, unsigned short, signed short);
extern unsigned int (*v24) (unsigned int, unsigned short, unsigned short, signed short);
extern signed int v25 (void);
extern signed int (*v26) (void);
void v27 (unsigned short, signed char, signed char, unsigned int);
void (*v28) (unsigned short, signed char, signed char, unsigned int) = v27;
extern void v29 (unsigned short, signed char, unsigned int, signed int);
extern void (*v30) (unsigned short, signed char, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 3;
signed short v32 = 3;
unsigned char v31 = 3;

void v27 (unsigned short v34, signed char v35, signed char v36, unsigned int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 6;
unsigned char v39 = 4;
signed char v38 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v21 (unsigned short v41, signed char v42)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned int v45 = 1U;
signed short v44 = 3;
unsigned short v43 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (unsigned short v46, signed short v47, signed int v48, signed char v49)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
signed short v52 = 2;
signed short v51 = -1;
signed char v50 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (signed int v53)
{
history[history_index++] = (int)v53;
{
for (;;) {
unsigned short v56 = 3;
signed char v55 = -4;
signed char v54 = 1;
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
signed int v59;
signed char v60;
v59 = -2 + -3;
v60 = v33 + v33;
v1 (v59, v60);
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
