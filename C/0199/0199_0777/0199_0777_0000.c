#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned int);
extern unsigned char (*v2) (unsigned int);
extern unsigned char v3 (signed short);
extern unsigned char (*v4) (signed short);
signed short v7 (unsigned char);
signed short (*v8) (unsigned char) = v7;
extern signed char v9 (void);
extern signed char (*v10) (void);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern void v13 (unsigned int);
extern void (*v14) (unsigned int);
signed int v15 (void);
signed int (*v16) (void) = v15;
extern signed short v17 (unsigned int);
extern signed short (*v18) (unsigned int);
extern signed short v19 (void);
extern signed short (*v20) (void);
signed char v21 (signed short);
signed char (*v22) (signed short) = v21;
extern void v25 (unsigned char, unsigned int, signed int, signed short);
extern void (*v26) (unsigned char, unsigned int, signed int, signed short);
unsigned char v27 (unsigned int, unsigned char);
unsigned char (*v28) (unsigned int, unsigned char) = v27;
unsigned short v29 (unsigned short, signed char);
unsigned short (*v30) (unsigned short, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 1;
unsigned int v32 = 3U;
unsigned char v31 = 7;

unsigned short v29 (unsigned short v34, signed char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned short v38 = 6;
unsigned short v37 = 4;
unsigned char v36 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v27 (unsigned int v39, unsigned char v40)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned int v43 = 4U;
signed int v42 = 1;
signed char v41 = -4;
trace++;
switch (trace)
{
case 11: 
return v40;
default: abort ();
}
}
}
}

signed char v21 (signed short v44)
{
history[history_index++] = (int)v44;
{
for (;;) {
unsigned int v47 = 7U;
unsigned int v46 = 3U;
signed short v45 = 1;
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
unsigned char v50 = 2;
signed short v49 = -2;
unsigned int v48 = 1U;
trace++;
switch (trace)
{
case 1: 
return -2;
default: abort ();
}
}
}
}

signed short v7 (unsigned char v51)
{
history[history_index++] = (int)v51;
{
for (;;) {
signed short v54 = -3;
unsigned short v53 = 0;
unsigned char v52 = 0;
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
unsigned int v57;
unsigned char v58;
v57 = v32 - v32;
v58 = v1 (v57);
history[history_index++] = (int)v58;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
