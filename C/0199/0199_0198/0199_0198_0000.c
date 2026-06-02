#include <stdio.h>
#include <stdlib.h>
static unsigned char v1 (signed short, signed int, signed char);
static unsigned char (*v2) (signed short, signed int, signed char) = v1;
extern signed int v3 (unsigned short, signed char, unsigned int);
extern signed int (*v4) (unsigned short, signed char, unsigned int);
extern unsigned int v5 (unsigned int, signed int, signed char);
extern unsigned int (*v6) (unsigned int, signed int, signed char);
extern signed int v7 (signed short, unsigned char);
extern signed int (*v8) (signed short, unsigned char);
signed short v9 (void);
signed short (*v10) (void) = v9;
extern signed char v11 (unsigned char);
extern signed char (*v12) (unsigned char);
extern unsigned int v13 (signed int, unsigned short, unsigned char, unsigned int);
extern unsigned int (*v14) (signed int, unsigned short, unsigned char, unsigned int);
extern unsigned short v15 (unsigned short, signed short, signed int);
extern unsigned short (*v16) (unsigned short, signed short, signed int);
void v17 (signed short);
void (*v18) (signed short) = v17;
extern unsigned int v19 (signed short, signed short);
extern unsigned int (*v20) (signed short, signed short);
extern signed short v21 (void);
extern signed short (*v22) (void);
signed short v23 (void);
signed short (*v24) (void) = v23;
extern unsigned short v25 (signed int, unsigned short);
extern unsigned short (*v26) (signed int, unsigned short);
extern unsigned short v27 (signed char);
extern unsigned short (*v28) (signed char);
void v29 (signed int, signed short, signed int, signed short);
void (*v30) (signed int, signed short, signed int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -3;
signed short v32 = -2;
signed short v31 = -2;

void v29 (signed int v34, signed short v35, signed int v36, signed short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed short v40 = 1;
signed short v39 = 3;
unsigned int v38 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v23 (void)
{
{
for (;;) {
unsigned int v43 = 3U;
signed int v42 = 0;
signed char v41 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (signed short v44)
{
history[history_index++] = (int)v44;
{
for (;;) {
signed char v47 = 1;
signed int v46 = -3;
unsigned short v45 = 5;
trace++;
switch (trace)
{
case 3: 
return;
case 7: 
return;
case 9: 
return;
default: abort ();
}
}
}
}

signed short v9 (void)
{
{
for (;;) {
signed char v50 = -4;
signed short v49 = -4;
signed char v48 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v1 (signed short v51, signed int v52, signed char v53)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
unsigned int v56 = 7U;
signed char v55 = 0;
unsigned char v54 = 4;
trace++;
switch (trace)
{
case 0: 
{
signed short v57;
signed int v58;
signed char v59;
unsigned char v60;
v57 = v51 + -1;
v58 = v52 + v52;
v59 = v55 - v53;
v60 = v1 (v57, v58, v59);
history[history_index++] = (int)v60;
}
break;
case 1: 
{
signed short v61;
v61 = v21 ();
history[history_index++] = (int)v61;
}
break;
case 13: 
return v54;
case 14: 
return v54;
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
signed short v64;
signed int v65;
signed char v66;
unsigned char v67;
v64 = v31 + v31;
v65 = -2 + 0;
v66 = v33 + v33;
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
