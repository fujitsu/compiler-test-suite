#include <stdio.h>
#include <stdlib.h>
static signed short v1 (unsigned short, signed int, signed char);
static signed short (*v2) (unsigned short, signed int, signed char) = v1;
extern unsigned short v3 (signed int, signed short);
extern unsigned short (*v4) (signed int, signed short);
extern void v5 (signed char, signed short, signed int, signed int);
extern void (*v6) (signed char, signed short, signed int, signed int);
extern signed short v7 (signed int, unsigned short, unsigned short);
extern signed short (*v8) (signed int, unsigned short, unsigned short);
extern unsigned int v9 (unsigned int, signed char, unsigned char, signed short);
extern unsigned int (*v10) (unsigned int, signed char, unsigned char, signed short);
extern unsigned int v11 (unsigned char, signed short);
extern unsigned int (*v12) (unsigned char, signed short);
extern void v13 (unsigned char, unsigned short, signed int, unsigned char);
extern void (*v14) (unsigned char, unsigned short, signed int, unsigned char);
signed short v15 (signed char, signed short);
signed short (*v16) (signed char, signed short) = v15;
extern void v17 (void);
extern void (*v18) (void);
unsigned short v19 (signed short, signed int);
unsigned short (*v20) (signed short, signed int) = v19;
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern signed char v23 (signed char, signed char);
extern signed char (*v24) (signed char, signed char);
extern unsigned char v25 (unsigned short);
extern unsigned char (*v26) (unsigned short);
extern signed short v27 (signed char);
extern signed short (*v28) (signed char);
unsigned int v29 (void);
unsigned int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 3;
signed char v32 = -3;
unsigned short v31 = 7;

unsigned int v29 (void)
{
{
for (;;) {
signed char v36 = 2;
signed char v35 = 1;
unsigned char v34 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (signed short v37, signed int v38)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
{
for (;;) {
unsigned int v41 = 5U;
signed int v40 = -4;
unsigned char v39 = 5;
trace++;
switch (trace)
{
case 6: 
return 5;
default: abort ();
}
}
}
}

signed short v15 (signed char v42, signed short v43)
{
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed int v46 = 1;
signed int v45 = -2;
unsigned short v44 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v1 (unsigned short v47, signed int v48, signed char v49)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned char v52 = 6;
unsigned short v51 = 7;
unsigned short v50 = 6;
trace++;
switch (trace)
{
case 0: 
{
signed char v53;
signed char v54;
signed char v55;
v53 = v49 - v49;
v54 = v49 + v49;
v55 = v23 (v53, v54);
history[history_index++] = (int)v55;
}
break;
case 2: 
{
signed char v56;
signed char v57;
signed char v58;
v56 = v49 + 3;
v57 = v49 + -1;
v58 = v23 (v56, v57);
history[history_index++] = (int)v58;
}
break;
case 4: 
{
v17 ();
}
break;
case 8: 
{
unsigned short v59;
unsigned char v60;
v59 = v51 + v51;
v60 = v25 (v59);
history[history_index++] = (int)v60;
}
break;
case 14: 
return 0;
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
unsigned short v63;
signed int v64;
signed char v65;
signed short v66;
v63 = 0 + 2;
v64 = -4 + v33;
v65 = 2 - v32;
v66 = v1 (v63, v64, v65);
history[history_index++] = (int)v66;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
