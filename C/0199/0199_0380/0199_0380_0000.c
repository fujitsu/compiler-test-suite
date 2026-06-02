#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned int, signed char);
extern unsigned char (*v2) (unsigned int, signed char);
extern void v3 (void);
extern void (*v4) (void);
extern signed int v5 (unsigned short, unsigned char, signed char, unsigned char);
extern signed int (*v6) (unsigned short, unsigned char, signed char, unsigned char);
extern void v7 (signed char, unsigned short, signed int, signed short);
extern void (*v8) (signed char, unsigned short, signed int, signed short);
extern signed int v11 (void);
extern signed int (*v12) (void);
unsigned int v13 (signed short, signed char, unsigned int, unsigned int);
unsigned int (*v14) (signed short, signed char, unsigned int, unsigned int) = v13;
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
signed int v23 (unsigned int, unsigned int, signed short, signed int);
signed int (*v24) (unsigned int, unsigned int, signed short, signed int) = v23;
unsigned short v25 (void);
unsigned short (*v26) (void) = v25;
extern void v27 (signed short);
extern void (*v28) (signed short);
extern void v29 (signed char);
extern void (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 2;
signed short v32 = 1;
unsigned int v31 = 6U;

unsigned short v25 (void)
{
{
for (;;) {
unsigned char v36 = 5;
unsigned short v35 = 6;
unsigned char v34 = 5;
trace++;
switch (trace)
{
case 9: 
return v35;
default: abort ();
}
}
}
}

signed int v23 (unsigned int v37, unsigned int v38, signed short v39, signed int v40)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
signed char v43 = -2;
unsigned int v42 = 7U;
unsigned char v41 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (signed short v44, signed char v45, unsigned int v46, unsigned int v47)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed short v50 = -3;
signed short v49 = 3;
signed int v48 = 3;
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
unsigned int v53;
signed char v54;
unsigned char v55;
v53 = 7U + v31;
v54 = -2 - -2;
v55 = v1 (v53, v54);
history[history_index++] = (int)v55;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
