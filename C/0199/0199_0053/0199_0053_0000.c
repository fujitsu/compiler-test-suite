#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed short, signed short);
extern void (*v2) (signed short, signed short);
extern unsigned char v3 (signed int);
extern unsigned char (*v4) (signed int);
unsigned short v5 (unsigned int, unsigned int);
unsigned short (*v6) (unsigned int, unsigned int) = v5;
signed int v7 (signed short, signed short, signed char, unsigned int);
signed int (*v8) (signed short, signed short, signed char, unsigned int) = v7;
extern signed int v9 (unsigned int, signed short, unsigned int);
extern signed int (*v10) (unsigned int, signed short, unsigned int);
extern unsigned short v11 (signed char, signed short, unsigned int, signed int);
extern unsigned short (*v12) (signed char, signed short, unsigned int, signed int);
unsigned int v13 (unsigned char, signed short, signed char);
unsigned int (*v14) (unsigned char, signed short, signed char) = v13;
extern signed char v15 (signed char);
extern signed char (*v16) (signed char);
extern signed int v17 (unsigned int, signed short, signed char);
extern signed int (*v18) (unsigned int, signed short, signed char);
extern signed char v19 (unsigned int, signed int);
extern signed char (*v20) (unsigned int, signed int);
extern signed int v21 (void);
extern signed int (*v22) (void);
signed short v23 (unsigned char, signed int, signed int, unsigned int);
signed short (*v24) (unsigned char, signed int, signed int, unsigned int) = v23;
signed short v25 (signed char, unsigned short);
signed short (*v26) (signed char, unsigned short) = v25;
unsigned short v27 (unsigned short, signed char, unsigned char);
unsigned short (*v28) (unsigned short, signed char, unsigned char) = v27;
extern signed char v29 (signed int, signed int, signed char, signed char);
extern signed char (*v30) (signed int, signed int, signed char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 4;
signed short v32 = 1;
unsigned int v31 = 7U;

unsigned short v27 (unsigned short v34, signed char v35, unsigned char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed short v39 = -4;
signed short v38 = -1;
unsigned int v37 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v25 (signed char v40, unsigned short v41)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned char v44 = 4;
signed char v43 = 0;
signed short v42 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v23 (unsigned char v45, signed int v46, signed int v47, unsigned int v48)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
signed int v51 = -1;
signed char v50 = 2;
signed int v49 = 3;
trace++;
switch (trace)
{
case 2: 
return -4;
case 4: 
return -1;
case 6: 
return 3;
case 8: 
return -1;
case 10: 
return 1;
default: abort ();
}
}
}
}

unsigned int v13 (unsigned char v52, signed short v53, signed char v54)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
signed short v57 = 3;
signed short v56 = 1;
unsigned int v55 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (signed short v58, signed short v59, signed char v60, unsigned int v61)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
unsigned char v64 = 5;
signed short v63 = 3;
signed short v62 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (unsigned int v65, unsigned int v66)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
signed short v69 = -1;
unsigned short v68 = 1;
unsigned char v67 = 5;
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
signed short v72;
signed short v73;
v72 = v32 - -3;
v73 = 1 - -3;
v1 (v72, v73);
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
