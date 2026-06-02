#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (signed short, unsigned short, signed short, signed int);
extern unsigned short (*v2) (signed short, unsigned short, signed short, signed int);
extern unsigned char v3 (unsigned short);
extern unsigned char (*v4) (unsigned short);
unsigned short v5 (unsigned short, signed char, unsigned char, unsigned int);
unsigned short (*v6) (unsigned short, signed char, unsigned char, unsigned int) = v5;
extern void v7 (void);
extern void (*v8) (void);
unsigned short v9 (unsigned char, signed int);
unsigned short (*v10) (unsigned char, signed int) = v9;
extern signed char v11 (void);
extern signed char (*v12) (void);
extern void v13 (void);
extern void (*v14) (void);
extern signed char v15 (unsigned short, unsigned char, unsigned char, unsigned short);
extern signed char (*v16) (unsigned short, unsigned char, unsigned char, unsigned short);
extern unsigned char v17 (unsigned short);
extern unsigned char (*v18) (unsigned short);
signed char v19 (signed short, unsigned int, unsigned char, unsigned int);
signed char (*v20) (signed short, unsigned int, unsigned char, unsigned int) = v19;
extern signed int v21 (void);
extern signed int (*v22) (void);
signed short v23 (signed short, unsigned char, unsigned short, signed int);
signed short (*v24) (signed short, unsigned char, unsigned short, signed int) = v23;
extern signed char v25 (signed int, signed short, unsigned char, unsigned char);
extern signed char (*v26) (signed int, signed short, unsigned char, unsigned char);
extern signed char v27 (unsigned short, unsigned char, unsigned short, signed int);
extern signed char (*v28) (unsigned short, unsigned char, unsigned short, signed int);
extern void v29 (unsigned char, signed char);
extern void (*v30) (unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 4U;
signed int v32 = -2;
unsigned char v31 = 3;

signed short v23 (signed short v34, unsigned char v35, unsigned short v36, signed int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned int v40 = 1U;
unsigned short v39 = 2;
signed int v38 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (signed short v41, unsigned int v42, unsigned char v43, unsigned int v44)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
signed char v47 = 2;
signed int v46 = 3;
unsigned char v45 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (unsigned char v48, signed int v49)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned int v52 = 2U;
signed short v51 = 0;
signed int v50 = -1;
trace++;
switch (trace)
{
case 3: 
return 1;
default: abort ();
}
}
}
}

unsigned short v5 (unsigned short v53, signed char v54, unsigned char v55, unsigned int v56)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
unsigned char v59 = 3;
unsigned int v58 = 1U;
unsigned int v57 = 6U;
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
signed short v62;
unsigned short v63;
signed short v64;
signed int v65;
unsigned short v66;
v62 = -4 + -3;
v63 = 7 + 4;
v64 = 0 + 3;
v65 = 3 + v32;
v66 = v1 (v62, v63, v64, v65);
history[history_index++] = (int)v66;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
