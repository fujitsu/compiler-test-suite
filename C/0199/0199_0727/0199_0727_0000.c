#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
unsigned int v3 (unsigned char, unsigned int, signed int, unsigned short);
unsigned int (*v4) (unsigned char, unsigned int, signed int, unsigned short) = v3;
extern unsigned int v5 (unsigned int, unsigned char, unsigned short);
extern unsigned int (*v6) (unsigned int, unsigned char, unsigned short);
signed short v7 (unsigned short, unsigned char, signed short, signed int);
signed short (*v8) (unsigned short, unsigned char, signed short, signed int) = v7;
extern void v9 (void);
extern void (*v10) (void);
unsigned char v11 (unsigned int, signed int, signed int);
unsigned char (*v12) (unsigned int, signed int, signed int) = v11;
extern unsigned short v13 (unsigned int);
extern unsigned short (*v14) (unsigned int);
extern unsigned int v15 (signed char, signed short, unsigned int);
extern unsigned int (*v16) (signed char, signed short, unsigned int);
extern void v17 (unsigned short, unsigned int, signed int, unsigned short);
extern void (*v18) (unsigned short, unsigned int, signed int, unsigned short);
extern void v19 (unsigned char, signed char, signed int);
extern void (*v20) (unsigned char, signed char, signed int);
extern signed char v21 (unsigned int, unsigned char, unsigned char);
extern signed char (*v22) (unsigned int, unsigned char, unsigned char);
extern unsigned int v23 (signed char);
extern unsigned int (*v24) (signed char);
extern unsigned short v25 (signed short);
extern unsigned short (*v26) (signed short);
signed short v29 (unsigned int, unsigned short, signed short, unsigned int);
signed short (*v30) (unsigned int, unsigned short, signed short, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -3;
unsigned char v32 = 4;
signed char v31 = -1;

signed short v29 (unsigned int v34, unsigned short v35, signed short v36, unsigned int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 1;
signed char v39 = -1;
unsigned short v38 = 3;
trace++;
switch (trace)
{
case 1: 
return -3;
default: abort ();
}
}
}
}

unsigned char v11 (unsigned int v41, signed int v42, signed int v43)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
unsigned int v46 = 3U;
unsigned char v45 = 1;
signed char v44 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (unsigned short v47, unsigned char v48, signed short v49, signed int v50)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
unsigned char v53 = 2;
unsigned char v52 = 4;
unsigned char v51 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (unsigned char v54, unsigned int v55, signed int v56, unsigned short v57)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
unsigned int v60 = 3U;
signed char v59 = 2;
signed char v58 = -1;
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
signed int v63;
v63 = v1 ();
history[history_index++] = (int)v63;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
