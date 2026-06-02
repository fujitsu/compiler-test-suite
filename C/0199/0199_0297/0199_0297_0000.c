#include <stdio.h>
#include <stdlib.h>
static unsigned short v1 (unsigned short);
static unsigned short (*v2) (unsigned short) = v1;
extern void v3 (signed int);
extern void (*v4) (signed int);
extern unsigned short v5 (unsigned char);
extern unsigned short (*v6) (unsigned char);
unsigned short v7 (signed short);
unsigned short (*v8) (signed short) = v7;
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned short v11 (unsigned char, unsigned char);
extern unsigned short (*v12) (unsigned char, unsigned char);
extern signed char v13 (signed short);
extern signed char (*v14) (signed short);
extern signed short v15 (signed int);
extern signed short (*v16) (signed int);
extern signed int v17 (unsigned short, signed short, unsigned int);
extern signed int (*v18) (unsigned short, signed short, unsigned int);
unsigned short v19 (signed char, signed char);
unsigned short (*v20) (signed char, signed char) = v19;
extern signed short v21 (unsigned char, signed short, unsigned short);
extern signed short (*v22) (unsigned char, signed short, unsigned short);
extern unsigned short v23 (signed short, signed int, signed char, unsigned int);
extern unsigned short (*v24) (signed short, signed int, signed char, unsigned int);
unsigned int v25 (unsigned short, signed int, unsigned char);
unsigned int (*v26) (unsigned short, signed int, unsigned char) = v25;
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern signed int v29 (unsigned short, signed int, unsigned char, signed short);
extern signed int (*v30) (unsigned short, signed int, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 0;
unsigned char v32 = 1;
signed short v31 = 0;

unsigned int v25 (unsigned short v34, signed int v35, unsigned char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed char v39 = -2;
signed short v38 = 2;
signed short v37 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (signed char v40, signed char v41)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned short v44 = 3;
unsigned short v43 = 0;
unsigned int v42 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed short v45)
{
history[history_index++] = (int)v45;
{
for (;;) {
unsigned short v48 = 2;
signed char v47 = -4;
signed short v46 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v1 (unsigned short v49)
{
history[history_index++] = (int)v49;
{
for (;;) {
unsigned char v52 = 0;
unsigned short v51 = 5;
unsigned char v50 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v53;
unsigned char v54;
unsigned short v55;
v53 = v50 - v50;
v54 = v50 - v50;
v55 = v11 (v53, v54);
history[history_index++] = (int)v55;
}
break;
case 14: 
return v51;
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
unsigned short v58;
unsigned short v59;
v58 = 7 + 4;
v59 = v1 (v58);
history[history_index++] = (int)v59;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
