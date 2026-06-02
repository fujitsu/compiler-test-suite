#include <stdio.h>
#include <stdlib.h>
static void v1 (unsigned short, signed int, signed char, unsigned int);
static void (*v2) (unsigned short, signed int, signed char, unsigned int) = v1;
unsigned short v3 (void);
unsigned short (*v4) (void) = v3;
extern unsigned char v5 (unsigned char);
extern unsigned char (*v6) (unsigned char);
extern signed int v7 (unsigned short, signed short, unsigned short);
extern signed int (*v8) (unsigned short, signed short, unsigned short);
extern signed int v9 (signed int, signed short, signed int);
extern signed int (*v10) (signed int, signed short, signed int);
extern unsigned short v11 (unsigned char, unsigned short);
extern unsigned short (*v12) (unsigned char, unsigned short);
extern signed char v13 (unsigned int, signed int, unsigned char, signed int);
extern signed char (*v14) (unsigned int, signed int, unsigned char, signed int);
signed short v15 (unsigned int);
signed short (*v16) (unsigned int) = v15;
extern signed char v17 (unsigned int, signed short, unsigned char, unsigned short);
extern signed char (*v18) (unsigned int, signed short, unsigned char, unsigned short);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed short v21 (unsigned short, signed int, signed char);
extern signed short (*v22) (unsigned short, signed int, signed char);
extern unsigned short v23 (unsigned int, unsigned int, unsigned short, unsigned short);
extern unsigned short (*v24) (unsigned int, unsigned int, unsigned short, unsigned short);
void v25 (signed int, unsigned char, signed short, unsigned short);
void (*v26) (signed int, unsigned char, signed short, unsigned short) = v25;
extern unsigned char v29 (signed int, unsigned short, signed char, signed short);
extern unsigned char (*v30) (signed int, unsigned short, signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 0;
unsigned char v32 = 0;
signed int v31 = -1;

void v25 (signed int v34, unsigned char v35, signed short v36, unsigned short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned short v40 = 0;
signed short v39 = -1;
unsigned int v38 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (unsigned int v41)
{
history[history_index++] = (int)v41;
{
for (;;) {
signed int v44 = 1;
signed short v43 = -4;
signed int v42 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (void)
{
{
for (;;) {
signed int v47 = -2;
unsigned short v46 = 3;
unsigned char v45 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v1 (unsigned short v48, signed int v49, signed char v50, unsigned int v51)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
unsigned char v54 = 5;
unsigned char v53 = 5;
unsigned int v52 = 3U;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v55;
signed short v56;
unsigned short v57;
signed int v58;
v55 = 4 - v48;
v56 = 0 - 0;
v57 = 1 - v48;
v58 = v7 (v55, v56, v57);
history[history_index++] = (int)v58;
}
break;
case 16: 
return;
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
unsigned short v61;
signed int v62;
signed char v63;
unsigned int v64;
v61 = 1 - 7;
v62 = v31 + v31;
v63 = v33 - v33;
v64 = 6U - 3U;
v1 (v61, v62, v63, v64);
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
