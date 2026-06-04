#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern void v3 (signed char, signed int, unsigned short, unsigned int);
extern void (*v4) (signed char, signed int, unsigned short, unsigned int);
extern signed short v5 (void);
extern signed short (*v6) (void);
signed short v7 (void);
signed short (*v8) (void) = v7;
extern signed char v9 (void);
extern signed char (*v10) (void);
extern void v11 (unsigned int, signed char, signed int, signed char);
extern void (*v12) (unsigned int, signed char, signed int, signed char);
unsigned int v15 (void);
unsigned int (*v16) (void) = v15;
signed short v17 (unsigned char, unsigned int, unsigned char, signed int);
signed short (*v18) (unsigned char, unsigned int, unsigned char, signed int) = v17;
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
signed short v21 (signed char, unsigned char);
signed short (*v22) (signed char, unsigned char) = v21;
unsigned int v23 (unsigned char, signed char);
unsigned int (*v24) (unsigned char, signed char) = v23;
signed int v25 (signed short, signed short);
signed int (*v26) (signed short, signed short) = v25;
extern unsigned char v27 (unsigned short);
extern unsigned char (*v28) (unsigned short);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 0;
signed char v32 = -3;
unsigned short v31 = 3;

signed int v25 (signed short v34, signed short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned int v38 = 2U;
signed short v37 = -1;
unsigned char v36 = 3;
trace++;
switch (trace)
{
case 4: 
return -4;
case 6: 
return -4;
default: abort ();
}
}
}
}

unsigned int v23 (unsigned char v39, signed char v40)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned int v43 = 4U;
unsigned char v42 = 2;
signed int v41 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v21 (signed char v44, unsigned char v45)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
signed char v48 = 1;
signed char v47 = -1;
unsigned short v46 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (unsigned char v49, unsigned int v50, unsigned char v51, signed int v52)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
signed int v55 = -1;
signed char v54 = 2;
unsigned short v53 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (void)
{
{
for (;;) {
signed int v58 = 2;
signed int v57 = 2;
unsigned int v56 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (void)
{
{
for (;;) {
signed short v61 = -2;
unsigned int v60 = 4U;
signed short v59 = 3;
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
signed int v64;
v64 = v1 ();
history[history_index++] = (int)v64;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
