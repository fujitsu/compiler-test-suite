#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned int);
extern unsigned char (*v2) (unsigned int);
signed int v3 (signed char, unsigned char, unsigned short);
signed int (*v4) (signed char, unsigned char, unsigned short) = v3;
extern unsigned short v5 (unsigned char);
extern unsigned short (*v6) (unsigned char);
extern unsigned char v7 (unsigned char, signed short, unsigned short, unsigned short);
extern unsigned char (*v8) (unsigned char, signed short, unsigned short, unsigned short);
void v9 (void);
void (*v10) (void) = v9;
extern unsigned short v11 (signed int, signed int, unsigned short, signed int);
extern unsigned short (*v12) (signed int, signed int, unsigned short, signed int);
signed short v13 (void);
signed short (*v14) (void) = v13;
signed int v15 (void);
signed int (*v16) (void) = v15;
extern unsigned int v17 (signed short);
extern unsigned int (*v18) (signed short);
extern signed int v19 (unsigned char, signed short, unsigned short, signed char);
extern signed int (*v20) (unsigned char, signed short, unsigned short, signed char);
extern unsigned short v21 (unsigned short);
extern unsigned short (*v22) (unsigned short);
extern unsigned char v23 (signed int);
extern unsigned char (*v24) (signed int);
void v25 (unsigned short);
void (*v26) (unsigned short) = v25;
extern void v27 (void);
extern void (*v28) (void);
extern void v29 (unsigned int);
extern void (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 4;
signed short v32 = 3;
signed int v31 = -2;

void v25 (unsigned short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned int v37 = 0U;
unsigned int v36 = 5U;
unsigned short v35 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (void)
{
{
for (;;) {
signed short v40 = -4;
unsigned char v39 = 7;
signed short v38 = 2;
trace++;
switch (trace)
{
case 6: 
return -2;
case 10: 
return 1;
default: abort ();
}
}
}
}

signed short v13 (void)
{
{
for (;;) {
unsigned char v43 = 2;
unsigned int v42 = 5U;
unsigned short v41 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (void)
{
{
for (;;) {
signed short v46 = -1;
signed short v45 = 3;
signed short v44 = 0;
trace++;
switch (trace)
{
case 1: 
return;
default: abort ();
}
}
}
}

signed int v3 (signed char v47, unsigned char v48, unsigned short v49)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned short v52 = 7;
unsigned char v51 = 3;
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
unsigned int v55;
unsigned char v56;
v55 = 7U - 5U;
v56 = v1 (v55);
history[history_index++] = (int)v56;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
