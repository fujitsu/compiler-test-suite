#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
unsigned short v5 (signed int, signed short);
unsigned short (*v6) (signed int, signed short) = v5;
extern unsigned char v7 (unsigned int, unsigned short);
extern unsigned char (*v8) (unsigned int, unsigned short);
extern signed int v9 (unsigned short, signed int, unsigned int);
extern signed int (*v10) (unsigned short, signed int, unsigned int);
unsigned short v11 (unsigned int, signed int, unsigned short);
unsigned short (*v12) (unsigned int, signed int, unsigned short) = v11;
extern void v13 (signed short, signed short, signed char, signed char);
extern void (*v14) (signed short, signed short, signed char, signed char);
extern unsigned int v15 (unsigned short);
extern unsigned int (*v16) (unsigned short);
unsigned char v17 (void);
unsigned char (*v18) (void) = v17;
void v19 (unsigned char);
void (*v20) (unsigned char) = v19;
extern signed int v21 (signed short);
extern signed int (*v22) (signed short);
extern unsigned short v23 (signed int, unsigned int, signed short);
extern unsigned short (*v24) (signed int, unsigned int, signed short);
extern unsigned char v25 (signed int);
extern unsigned char (*v26) (signed int);
extern signed int v27 (signed char, signed short, signed short);
extern signed int (*v28) (signed char, signed short, signed short);
extern unsigned short v29 (unsigned short, signed short, signed short, unsigned int);
extern unsigned short (*v30) (unsigned short, signed short, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 0;
unsigned int v32 = 7U;
signed char v31 = -4;

void v19 (unsigned char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed char v37 = 0;
unsigned int v36 = 7U;
signed int v35 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (void)
{
{
for (;;) {
signed int v40 = 0;
signed int v39 = -4;
unsigned int v38 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (unsigned int v41, signed int v42, unsigned short v43)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
unsigned char v46 = 1;
signed int v45 = -3;
unsigned short v44 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (signed int v47, signed short v48)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
unsigned int v51 = 0U;
signed char v50 = 2;
unsigned char v49 = 5;
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
unsigned short v54;
v54 = v1 ();
history[history_index++] = (int)v54;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
