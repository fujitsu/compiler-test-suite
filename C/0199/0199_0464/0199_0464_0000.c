#include <stdio.h>
#include <stdlib.h>
static signed short v1 (unsigned short, signed char, unsigned int);
static signed short (*v2) (unsigned short, signed char, unsigned int) = v1;
extern signed int v3 (signed char, signed short);
extern signed int (*v4) (signed char, signed short);
extern void v5 (void);
extern void (*v6) (void);
extern void v7 (void);
extern void (*v8) (void);
unsigned char v9 (void);
unsigned char (*v10) (void) = v9;
extern signed char v11 (void);
extern signed char (*v12) (void);
extern void v13 (void);
extern void (*v14) (void);
extern signed int v15 (signed char, signed int, signed short, unsigned int);
extern signed int (*v16) (signed char, signed int, signed short, unsigned int);
extern signed int v17 (signed char, unsigned char, signed int, unsigned int);
extern signed int (*v18) (signed char, unsigned char, signed int, unsigned int);
unsigned int v21 (unsigned short, unsigned short);
unsigned int (*v22) (unsigned short, unsigned short) = v21;
extern signed int v23 (signed char, unsigned char, signed char);
extern signed int (*v24) (signed char, unsigned char, signed char);
unsigned char v25 (signed short, signed int, unsigned char, signed int);
unsigned char (*v26) (signed short, signed int, unsigned char, signed int) = v25;
signed short v27 (void);
signed short (*v28) (void) = v27;
unsigned char v29 (void);
unsigned char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -2;
unsigned short v32 = 4;
unsigned char v31 = 4;

unsigned char v29 (void)
{
{
for (;;) {
unsigned char v36 = 4;
unsigned int v35 = 3U;
unsigned short v34 = 0;
trace++;
switch (trace)
{
case 10: 
return 4;
default: abort ();
}
}
}
}

signed short v27 (void)
{
{
for (;;) {
unsigned short v39 = 5;
unsigned char v38 = 4;
unsigned char v37 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v25 (signed short v40, signed int v41, unsigned char v42, signed int v43)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed short v46 = -3;
unsigned char v45 = 4;
unsigned int v44 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v21 (unsigned short v47, unsigned short v48)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
unsigned int v51 = 3U;
unsigned char v50 = 2;
signed char v49 = 1;
trace++;
switch (trace)
{
case 6: 
return 5U;
case 8: 
return 2U;
default: abort ();
}
}
}
}

unsigned char v9 (void)
{
{
for (;;) {
signed short v54 = -4;
unsigned int v53 = 5U;
unsigned short v52 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v1 (unsigned short v55, signed char v56, unsigned int v57)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
unsigned short v60 = 0;
signed int v59 = -2;
unsigned char v58 = 4;
trace++;
switch (trace)
{
case 0: 
{
signed char v61;
v61 = v11 ();
history[history_index++] = (int)v61;
}
break;
case 14: 
return 2;
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
unsigned short v64;
signed char v65;
unsigned int v66;
signed short v67;
v64 = 1 + v32;
v65 = v33 - v33;
v66 = 3U - 3U;
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
