#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed char, unsigned char, signed short);
extern unsigned char (*v2) (signed char, unsigned char, signed short);
extern signed int v3 (signed char, signed short, unsigned char);
extern signed int (*v4) (signed char, signed short, unsigned char);
extern signed short v7 (unsigned int, signed char);
extern signed short (*v8) (unsigned int, signed char);
extern signed char v9 (unsigned short, unsigned char);
extern signed char (*v10) (unsigned short, unsigned char);
signed int v13 (signed int, unsigned int);
signed int (*v14) (signed int, unsigned int) = v13;
signed int v15 (signed int, signed short);
signed int (*v16) (signed int, signed short) = v15;
extern unsigned int v17 (signed int, signed int);
extern unsigned int (*v18) (signed int, signed int);
signed short v19 (unsigned char, unsigned int);
signed short (*v20) (unsigned char, unsigned int) = v19;
signed short v21 (signed short, unsigned char, signed int);
signed short (*v22) (signed short, unsigned char, signed int) = v21;
extern signed short v23 (unsigned int, signed short);
extern signed short (*v24) (unsigned int, signed short);
extern signed int v25 (signed int, unsigned short);
extern signed int (*v26) (signed int, unsigned short);
extern unsigned short v27 (unsigned short, unsigned short, unsigned char, signed short);
extern unsigned short (*v28) (unsigned short, unsigned short, unsigned char, signed short);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 1;
signed char v32 = -4;
unsigned short v31 = 0;

signed short v21 (signed short v34, unsigned char v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned char v39 = 6;
signed short v38 = -2;
unsigned int v37 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (unsigned char v40, unsigned int v41)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed short v44 = -4;
signed int v43 = 3;
unsigned char v42 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (signed int v45, signed short v46)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
signed int v49 = 3;
unsigned char v48 = 3;
signed char v47 = 1;
trace++;
switch (trace)
{
case 11: 
return 1;
default: abort ();
}
}
}
}

signed int v13 (signed int v50, unsigned int v51)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
signed int v54 = 2;
signed short v53 = -2;
unsigned char v52 = 4;
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
signed char v57;
unsigned char v58;
signed short v59;
unsigned char v60;
v57 = -3 - v32;
v58 = 1 - 0;
v59 = v33 + v33;
v60 = v1 (v57, v58, v59);
history[history_index++] = (int)v60;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
