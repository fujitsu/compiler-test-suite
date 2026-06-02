#include <stdio.h>
#include <stdlib.h>
static unsigned int v1 (unsigned char, signed char, signed char);
static unsigned int (*v2) (unsigned char, signed char, signed char) = v1;
extern unsigned short v3 (unsigned int);
extern unsigned short (*v4) (unsigned int);
extern signed short v5 (signed short, unsigned char);
extern signed short (*v6) (signed short, unsigned char);
extern unsigned short v7 (unsigned int, unsigned int, signed short);
extern unsigned short (*v8) (unsigned int, unsigned int, signed short);
extern signed char v9 (unsigned int, unsigned int, signed short, unsigned char);
extern signed char (*v10) (unsigned int, unsigned int, signed short, unsigned char);
extern unsigned int v11 (signed short, unsigned char, signed int, signed char);
extern unsigned int (*v12) (signed short, unsigned char, signed int, signed char);
extern signed short v13 (signed int, unsigned char, signed char, unsigned int);
extern signed short (*v14) (signed int, unsigned char, signed char, unsigned int);
extern signed char v15 (signed int, signed int, unsigned short);
extern signed char (*v16) (signed int, signed int, unsigned short);
unsigned char v17 (void);
unsigned char (*v18) (void) = v17;
signed char v19 (signed int, unsigned int);
signed char (*v20) (signed int, unsigned int) = v19;
extern signed int v21 (void);
extern signed int (*v22) (void);
void v23 (signed char, unsigned char, signed int, signed short);
void (*v24) (signed char, unsigned char, signed int, signed short) = v23;
extern unsigned short v25 (signed short, signed short);
extern unsigned short (*v26) (signed short, signed short);
extern unsigned char v27 (signed short, signed short, unsigned char);
extern unsigned char (*v28) (signed short, signed short, unsigned char);
extern signed int v29 (signed char, signed char, unsigned char);
extern signed int (*v30) (signed char, signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -4;
signed char v32 = 2;
unsigned char v31 = 0;

void v23 (signed char v34, unsigned char v35, signed int v36, signed short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed char v40 = 2;
signed char v39 = -3;
unsigned short v38 = 0;
trace++;
switch (trace)
{
case 4: 
{
signed short v41;
signed short v42;
unsigned char v43;
unsigned char v44;
v41 = v37 + -3;
v42 = v37 + v37;
v43 = v35 + 7;
v44 = v27 (v41, v42, v43);
history[history_index++] = (int)v44;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

signed char v19 (signed int v45, unsigned int v46)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
unsigned short v49 = 4;
signed int v48 = 0;
unsigned char v47 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (void)
{
{
for (;;) {
unsigned int v52 = 1U;
unsigned char v51 = 5;
unsigned char v50 = 5;
trace++;
switch (trace)
{
case 10: 
return v50;
default: abort ();
}
}
}
}

static unsigned int v1 (unsigned char v53, signed char v54, signed char v55)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
signed int v58 = 3;
signed short v57 = -4;
unsigned short v56 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed int v59;
v59 = v21 ();
history[history_index++] = (int)v59;
}
break;
case 2: 
{
unsigned int v60;
unsigned short v61;
v60 = 4U + 4U;
v61 = v3 (v60);
history[history_index++] = (int)v61;
}
break;
case 14: 
return 6U;
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
unsigned char v64;
signed char v65;
signed char v66;
unsigned int v67;
v64 = 7 + v31;
v65 = v32 - v32;
v66 = -3 + -1;
v67 = v1 (v64, v65, v66);
history[history_index++] = (int)v67;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
