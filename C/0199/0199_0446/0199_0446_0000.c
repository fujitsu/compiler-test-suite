#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned char, signed int, unsigned int);
extern unsigned char (*v2) (unsigned char, signed int, unsigned int);
extern signed char v3 (signed int, unsigned short, signed int, unsigned int);
extern signed char (*v4) (signed int, unsigned short, signed int, unsigned int);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern void v7 (signed char, unsigned char, signed int, unsigned short);
extern void (*v8) (signed char, unsigned char, signed int, unsigned short);
signed int v9 (unsigned char, unsigned char);
signed int (*v10) (unsigned char, unsigned char) = v9;
signed short v11 (signed char, signed short, signed char);
signed short (*v12) (signed char, signed short, signed char) = v11;
extern signed short v13 (signed short, signed short);
extern signed short (*v14) (signed short, signed short);
signed int v15 (signed short, unsigned char, signed int);
signed int (*v16) (signed short, unsigned char, signed int) = v15;
extern signed short v17 (unsigned char, unsigned short, signed short);
extern signed short (*v18) (unsigned char, unsigned short, signed short);
extern signed int v19 (signed int);
extern signed int (*v20) (signed int);
void v21 (unsigned short, unsigned short, signed int);
void (*v22) (unsigned short, unsigned short, signed int) = v21;
unsigned int v23 (void);
unsigned int (*v24) (void) = v23;
extern void v25 (signed int, signed int, signed int, signed char);
extern void (*v26) (signed int, signed int, signed int, signed char);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 3;
signed char v32 = -2;
signed short v31 = -1;

unsigned int v23 (void)
{
{
for (;;) {
signed short v36 = -4;
signed char v35 = 2;
unsigned short v34 = 0;
trace++;
switch (trace)
{
case 2: 
return 6U;
default: abort ();
}
}
}
}

void v21 (unsigned short v37, unsigned short v38, signed int v39)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
unsigned short v42 = 0;
signed char v41 = 1;
signed char v40 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (signed short v43, unsigned char v44, signed int v45)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
signed char v48 = -2;
unsigned int v47 = 1U;
unsigned short v46 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (signed char v49, signed short v50, signed char v51)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
unsigned char v54 = 6;
signed int v53 = 1;
unsigned short v52 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (unsigned char v55, unsigned char v56)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
signed char v59 = -3;
signed short v58 = 1;
unsigned int v57 = 1U;
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
unsigned char v62;
signed int v63;
unsigned int v64;
unsigned char v65;
v62 = 2 - 3;
v63 = 2 + -2;
v64 = 3U - 3U;
v65 = v1 (v62, v63, v64);
history[history_index++] = (int)v65;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
