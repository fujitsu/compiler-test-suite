#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
unsigned short v3 (unsigned short, signed int, unsigned short, signed int);
unsigned short (*v4) (unsigned short, signed int, unsigned short, signed int) = v3;
extern unsigned int v5 (unsigned int, unsigned short, signed char, unsigned char);
extern unsigned int (*v6) (unsigned int, unsigned short, signed char, unsigned char);
extern signed char v7 (unsigned char, unsigned short, unsigned int, unsigned short);
extern signed char (*v8) (unsigned char, unsigned short, unsigned int, unsigned short);
extern unsigned short v9 (unsigned char, unsigned short, signed short);
extern unsigned short (*v10) (unsigned char, unsigned short, signed short);
extern unsigned int v11 (unsigned int);
extern unsigned int (*v12) (unsigned int);
extern signed short v13 (unsigned char);
extern signed short (*v14) (unsigned char);
void v15 (signed short);
void (*v16) (signed short) = v15;
void v17 (void);
void (*v18) (void) = v17;
extern signed short v19 (unsigned short, unsigned int, unsigned short, signed char);
extern signed short (*v20) (unsigned short, unsigned int, unsigned short, signed char);
extern signed int v21 (unsigned char, signed short, unsigned int, signed short);
extern signed int (*v22) (unsigned char, signed short, unsigned int, signed short);
unsigned int v23 (unsigned char, unsigned char);
unsigned int (*v24) (unsigned char, unsigned char) = v23;
extern void v27 (unsigned char);
extern void (*v28) (unsigned char);
extern void v29 (signed short, unsigned short, signed char, unsigned short);
extern void (*v30) (signed short, unsigned short, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -3;
signed char v32 = 1;
unsigned short v31 = 7;

unsigned int v23 (unsigned char v34, unsigned char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned short v38 = 7;
unsigned short v37 = 5;
signed char v36 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (void)
{
{
for (;;) {
signed short v41 = -2;
unsigned short v40 = 5;
signed int v39 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (signed short v42)
{
history[history_index++] = (int)v42;
{
for (;;) {
unsigned int v45 = 0U;
unsigned int v44 = 3U;
unsigned char v43 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (unsigned short v46, signed int v47, unsigned short v48, signed int v49)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned char v52 = 7;
signed char v51 = 2;
signed int v50 = 0;
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
signed short v55;
v55 = v1 ();
history[history_index++] = (int)v55;
}
} while (trace < 11);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
