#include <stdio.h>
#include <stdlib.h>
static unsigned short v1 (void);
static unsigned short (*v2) (void) = v1;
unsigned char v3 (unsigned char);
unsigned char (*v4) (unsigned char) = v3;
signed short v5 (signed int, signed short);
signed short (*v6) (signed int, signed short) = v5;
extern signed char v7 (unsigned char);
extern signed char (*v8) (unsigned char);
extern unsigned int v9 (unsigned char, unsigned short, unsigned short, signed char);
extern unsigned int (*v10) (unsigned char, unsigned short, unsigned short, signed char);
extern signed int v11 (signed int, signed short);
extern signed int (*v12) (signed int, signed short);
extern unsigned short v13 (signed short, signed short, signed short, unsigned short);
extern unsigned short (*v14) (signed short, signed short, signed short, unsigned short);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern signed int v17 (signed short, signed short, unsigned int, signed char);
extern signed int (*v18) (signed short, signed short, unsigned int, signed char);
extern unsigned int v19 (signed char);
extern unsigned int (*v20) (signed char);
extern signed char v21 (signed char, signed int, unsigned int, unsigned char);
extern signed char (*v22) (signed char, signed int, unsigned int, unsigned char);
extern signed char v23 (signed char, unsigned char, unsigned char, unsigned short);
extern signed char (*v24) (signed char, unsigned char, unsigned char, unsigned short);
extern signed int v25 (signed char, signed char, signed char, signed int);
extern signed int (*v26) (signed char, signed char, signed char, signed int);
extern signed char v27 (void);
extern signed char (*v28) (void);
extern signed short v29 (signed short);
extern signed short (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -2;
signed int v32 = 2;
unsigned int v31 = 6U;

signed short v5 (signed int v34, signed short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed short v38 = 2;
signed char v37 = 2;
unsigned char v36 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (unsigned char v39)
{
history[history_index++] = (int)v39;
{
for (;;) {
signed int v42 = -1;
signed char v41 = -3;
unsigned char v40 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v1 (void)
{
{
for (;;) {
signed short v45 = 1;
signed char v44 = 1;
unsigned char v43 = 4;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v46;
v46 = v15 ();
history[history_index++] = (int)v46;
}
break;
case 12: 
return 7;
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
unsigned short v49;
v49 = v1 ();
history[history_index++] = (int)v49;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
