#include <stdio.h>
#include <stdlib.h>
static signed short v1 (void);
static signed short (*v2) (void) = v1;
extern unsigned int v3 (unsigned short, unsigned char, signed int, signed char);
extern unsigned int (*v4) (unsigned short, unsigned char, signed int, signed char);
extern unsigned char v5 (unsigned char, signed char, signed int, unsigned short);
extern unsigned char (*v6) (unsigned char, signed char, signed int, unsigned short);
extern signed short v7 (signed char);
extern signed short (*v8) (signed char);
unsigned short v9 (unsigned int, signed int);
unsigned short (*v10) (unsigned int, signed int) = v9;
extern void v11 (void);
extern void (*v12) (void);
signed int v13 (unsigned char, unsigned char, signed int, signed short);
signed int (*v14) (unsigned char, unsigned char, signed int, signed short) = v13;
extern signed int v15 (signed int, unsigned int);
extern signed int (*v16) (signed int, unsigned int);
unsigned char v17 (signed short, signed short, unsigned short);
unsigned char (*v18) (signed short, signed short, unsigned short) = v17;
signed char v19 (signed char, signed short);
signed char (*v20) (signed char, signed short) = v19;
extern signed short v21 (signed short);
extern signed short (*v22) (signed short);
extern unsigned short v23 (unsigned int, signed int, signed short);
extern unsigned short (*v24) (unsigned int, signed int, signed short);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed short v27 (signed short, signed short);
extern signed short (*v28) (signed short, signed short);
extern signed int v29 (unsigned int, unsigned short, unsigned char, unsigned short);
extern signed int (*v30) (unsigned int, unsigned short, unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 0;
unsigned char v32 = 6;
unsigned int v31 = 1U;

signed char v19 (signed char v34, signed short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned short v38 = 2;
signed int v37 = 0;
signed int v36 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (signed short v39, signed short v40, unsigned short v41)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned short v44 = 5;
signed char v43 = 1;
signed char v42 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (unsigned char v45, unsigned char v46, signed int v47, signed short v48)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
unsigned int v51 = 2U;
unsigned int v50 = 7U;
unsigned int v49 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (unsigned int v52, signed int v53)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
signed short v56 = 1;
signed char v55 = 0;
unsigned short v54 = 5;
trace++;
switch (trace)
{
case 8: 
return v54;
default: abort ();
}
}
}
}

static signed short v1 (void)
{
{
for (;;) {
unsigned short v59 = 3;
signed char v58 = 2;
signed short v57 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v60;
unsigned char v61;
signed int v62;
signed char v63;
unsigned int v64;
v60 = v59 + v59;
v61 = 5 + 0;
v62 = -4 + -1;
v63 = v58 + -2;
v64 = v3 (v60, v61, v62, v63);
history[history_index++] = (int)v64;
}
break;
case 12: 
return -4;
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
signed short v67;
v67 = v1 ();
history[history_index++] = (int)v67;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
