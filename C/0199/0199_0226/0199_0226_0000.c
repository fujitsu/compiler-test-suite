#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned char, signed char, unsigned int);
extern unsigned int (*v2) (unsigned char, signed char, unsigned int);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
signed char v5 (void);
signed char (*v6) (void) = v5;
extern signed short v7 (void);
extern signed short (*v8) (void);
unsigned int v9 (unsigned char, signed short, unsigned char);
unsigned int (*v10) (unsigned char, signed short, unsigned char) = v9;
extern signed short v11 (signed int, signed int, unsigned int, signed char);
extern signed short (*v12) (signed int, signed int, unsigned int, signed char);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
unsigned short v15 (unsigned short, unsigned short);
unsigned short (*v16) (unsigned short, unsigned short) = v15;
extern unsigned int v17 (signed char, unsigned char);
extern unsigned int (*v18) (signed char, unsigned char);
extern unsigned char v19 (signed char);
extern unsigned char (*v20) (signed char);
extern signed int v21 (signed char, signed char, unsigned short, unsigned short);
extern signed int (*v22) (signed char, signed char, unsigned short, unsigned short);
unsigned int v23 (void);
unsigned int (*v24) (void) = v23;
extern signed int v25 (unsigned char, signed short);
extern signed int (*v26) (unsigned char, signed short);
extern signed int v27 (unsigned short, signed char, signed int, signed int);
extern signed int (*v28) (unsigned short, signed char, signed int, signed int);
signed short v29 (unsigned char, signed char, unsigned short, signed int);
signed short (*v30) (unsigned char, signed char, unsigned short, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -4;
unsigned char v32 = 0;
unsigned char v31 = 4;

signed short v29 (unsigned char v34, signed char v35, unsigned short v36, signed int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = 3;
signed int v39 = -1;
unsigned short v38 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v23 (void)
{
{
for (;;) {
signed int v43 = -1;
signed int v42 = 2;
signed short v41 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (unsigned short v44, unsigned short v45)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
signed char v48 = -1;
signed int v47 = -1;
signed char v46 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (unsigned char v49, signed short v50, unsigned char v51)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
unsigned int v54 = 2U;
unsigned int v53 = 7U;
unsigned char v52 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (void)
{
{
for (;;) {
signed char v57 = 2;
signed short v56 = -1;
signed short v55 = 3;
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
unsigned char v60;
signed char v61;
unsigned int v62;
unsigned int v63;
v60 = 1 - v31;
v61 = 2 - 0;
v62 = 1U - 1U;
v63 = v1 (v60, v61, v62);
history[history_index++] = (int)v63;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
