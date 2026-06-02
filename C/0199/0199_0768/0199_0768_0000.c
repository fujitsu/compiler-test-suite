#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (signed int);
extern unsigned short (*v2) (signed int);
signed int v3 (unsigned char, signed short, unsigned int);
signed int (*v4) (unsigned char, signed short, unsigned int) = v3;
extern void v5 (unsigned short);
extern void (*v6) (unsigned short);
extern unsigned char v7 (unsigned int, signed char);
extern unsigned char (*v8) (unsigned int, signed char);
extern unsigned int v9 (signed int, signed char, signed short);
extern unsigned int (*v10) (signed int, signed char, signed short);
extern signed char v11 (signed char, unsigned char, unsigned char);
extern signed char (*v12) (signed char, unsigned char, unsigned char);
unsigned short v13 (unsigned short);
unsigned short (*v14) (unsigned short) = v13;
static void v15 (signed char, signed int, signed int, signed int);
static void (*v16) (signed char, signed int, signed int, signed int) = v15;
extern signed short v17 (signed short);
extern signed short (*v18) (signed short);
unsigned int v19 (unsigned char, signed int, unsigned int, signed char);
unsigned int (*v20) (unsigned char, signed int, unsigned int, signed char) = v19;
extern void v21 (signed int);
extern void (*v22) (signed int);
extern unsigned char v25 (signed short, signed int, unsigned char, signed int);
extern unsigned char (*v26) (signed short, signed int, unsigned char, signed int);
signed int v27 (unsigned int, unsigned int);
signed int (*v28) (unsigned int, unsigned int) = v27;
extern unsigned short v29 (signed short, signed char);
extern unsigned short (*v30) (signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -3;
unsigned char v32 = 7;
unsigned short v31 = 2;

signed int v27 (unsigned int v34, unsigned int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed char v38 = 1;
unsigned int v37 = 6U;
unsigned char v36 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (unsigned char v39, signed int v40, unsigned int v41, signed char v42)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned int v45 = 7U;
unsigned short v44 = 5;
unsigned char v43 = 1;
trace++;
switch (trace)
{
case 2: 
return v45;
case 4: 
return v45;
case 11: 
return v41;
default: abort ();
}
}
}
}

static void v15 (signed char v46, signed int v47, signed int v48, signed int v49)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned short v52 = 6;
unsigned char v51 = 2;
signed int v50 = -3;
trace++;
switch (trace)
{
case 8: 
{
signed short v53;
signed short v54;
v53 = 1 - 3;
v54 = v17 (v53);
history[history_index++] = (int)v54;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}

unsigned short v13 (unsigned short v55)
{
history[history_index++] = (int)v55;
{
for (;;) {
signed short v58 = -2;
unsigned short v57 = 3;
unsigned char v56 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (unsigned char v59, signed short v60, unsigned int v61)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
unsigned char v64 = 1;
signed char v63 = 2;
unsigned char v62 = 7;
trace++;
switch (trace)
{
case 7: 
{
signed char v65;
signed int v66;
signed int v67;
signed int v68;
v65 = v63 + v63;
v66 = -1 - -3;
v67 = -3 - -4;
v68 = 0 + 1;
v15 (v65, v66, v67, v68);
}
break;
case 15: 
return 1;
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
signed int v71;
unsigned short v72;
v71 = 3 - 2;
v72 = v1 (v71);
history[history_index++] = (int)v72;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
