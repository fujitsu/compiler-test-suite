#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed char, signed int, signed int);
extern void (*v2) (signed char, signed int, signed int);
extern unsigned int v3 (unsigned short);
extern unsigned int (*v4) (unsigned short);
void v5 (signed char, signed char, unsigned int, unsigned int);
void (*v6) (signed char, signed char, unsigned int, unsigned int) = v5;
extern unsigned int v7 (unsigned int, unsigned int, signed int, unsigned short);
extern unsigned int (*v8) (unsigned int, unsigned int, signed int, unsigned short);
extern unsigned char v9 (signed int, signed short);
extern unsigned char (*v10) (signed int, signed short);
signed short v13 (unsigned short, unsigned char, signed char);
signed short (*v14) (unsigned short, unsigned char, signed char) = v13;
extern signed int v15 (unsigned char, signed short, unsigned char, unsigned char);
extern signed int (*v16) (unsigned char, signed short, unsigned char, unsigned char);
extern void v17 (void);
extern void (*v18) (void);
extern unsigned int v19 (signed int, signed short, unsigned int, signed short);
extern unsigned int (*v20) (signed int, signed short, unsigned int, signed short);
void v21 (void);
void (*v22) (void) = v21;
extern void v23 (void);
extern void (*v24) (void);
signed short v27 (void);
signed short (*v28) (void) = v27;
extern signed char v29 (signed int, unsigned int);
extern signed char (*v30) (signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -1;
signed char v32 = -2;
signed short v31 = 2;

signed short v27 (void)
{
{
for (;;) {
unsigned short v36 = 7;
signed int v35 = -2;
unsigned short v34 = 6;
trace++;
switch (trace)
{
case 10: 
return 2;
default: abort ();
}
}
}
}

void v21 (void)
{
{
for (;;) {
unsigned int v39 = 3U;
signed int v38 = 2;
unsigned short v37 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (unsigned short v40, unsigned char v41, signed char v42)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned short v45 = 1;
signed char v44 = -3;
unsigned char v43 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (signed char v46, signed char v47, unsigned int v48, unsigned int v49)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned short v52 = 6;
unsigned int v51 = 6U;
unsigned char v50 = 7;
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
signed char v55;
signed int v56;
signed int v57;
v55 = 2 + v33;
v56 = -4 - -4;
v57 = 2 + 2;
v1 (v55, v56, v57);
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
