#include <stdio.h>
#include <stdlib.h>
static unsigned char v1 (unsigned short);
static unsigned char (*v2) (unsigned short) = v1;
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned char v5 (signed char);
extern unsigned char (*v6) (signed char);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern unsigned int v9 (signed char, signed short, unsigned char, unsigned char);
extern unsigned int (*v10) (signed char, signed short, unsigned char, unsigned char);
extern signed char v11 (unsigned char, signed char, unsigned short);
extern signed char (*v12) (unsigned char, signed char, unsigned short);
extern unsigned char v13 (signed short, signed short, signed short);
extern unsigned char (*v14) (signed short, signed short, signed short);
extern unsigned char v15 (signed short);
extern unsigned char (*v16) (signed short);
extern unsigned int v17 (unsigned int, signed short);
extern unsigned int (*v18) (unsigned int, signed short);
extern void v21 (void);
extern void (*v22) (void);
signed char v23 (signed short, unsigned int, signed int);
signed char (*v24) (signed short, unsigned int, signed int) = v23;
unsigned char v25 (signed int, signed short);
unsigned char (*v26) (signed int, signed short) = v25;
extern unsigned char v29 (unsigned int, unsigned int, signed int, signed int);
extern unsigned char (*v30) (unsigned int, unsigned int, signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 4;
unsigned char v32 = 6;
signed short v31 = 2;

unsigned char v25 (signed int v34, signed short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned short v38 = 4;
unsigned char v37 = 0;
unsigned short v36 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v23 (signed short v39, unsigned int v40, signed int v41)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned short v44 = 7;
unsigned char v43 = 2;
signed char v42 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v1 (unsigned short v45)
{
history[history_index++] = (int)v45;
{
for (;;) {
signed int v48 = -3;
unsigned char v47 = 0;
unsigned short v46 = 0;
trace++;
switch (trace)
{
case 0: 
{
v21 ();
}
break;
case 2: 
{
unsigned char v49;
signed char v50;
unsigned short v51;
signed char v52;
v49 = 7 - v47;
v50 = 1 + -3;
v51 = 3 + 3;
v52 = v11 (v49, v50, v51);
history[history_index++] = (int)v52;
}
break;
case 16: 
return v47;
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
unsigned char v56;
v55 = 6 + v33;
v56 = v1 (v55);
history[history_index++] = (int)v56;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
