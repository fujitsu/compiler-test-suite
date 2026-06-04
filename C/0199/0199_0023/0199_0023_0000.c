#include <stdio.h>
#include <stdlib.h>
static signed char v1 (signed char);
static signed char (*v2) (signed char) = v1;
extern signed char v3 (unsigned char, signed short);
extern signed char (*v4) (unsigned char, signed short);
extern signed char v5 (signed char);
extern signed char (*v6) (signed char);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern void v9 (signed int);
extern void (*v10) (signed int);
extern unsigned char v11 (unsigned int, unsigned short, signed short, unsigned short);
extern unsigned char (*v12) (unsigned int, unsigned short, signed short, unsigned short);
unsigned char v13 (signed char, unsigned int, signed int, unsigned short);
unsigned char (*v14) (signed char, unsigned int, signed int, unsigned short) = v13;
unsigned short v15 (signed int, signed short, signed char);
unsigned short (*v16) (signed int, signed short, signed char) = v15;
extern unsigned char v17 (unsigned char, unsigned short, signed int);
extern unsigned char (*v18) (unsigned char, unsigned short, signed int);
extern unsigned char v19 (signed char);
extern unsigned char (*v20) (signed char);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern unsigned short v23 (signed short, signed short, unsigned char);
extern unsigned short (*v24) (signed short, signed short, unsigned char);
extern void v25 (void);
extern void (*v26) (void);
extern void v27 (unsigned char, unsigned short, signed short);
extern void (*v28) (unsigned char, unsigned short, signed short);
signed int v29 (void);
signed int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 1;
unsigned char v32 = 4;
signed int v31 = 2;

signed int v29 (void)
{
{
for (;;) {
signed int v36 = -2;
unsigned char v35 = 1;
unsigned char v34 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (signed int v37, signed short v38, signed char v39)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
unsigned int v42 = 5U;
signed short v41 = -3;
signed int v40 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (signed char v43, unsigned int v44, signed int v45, unsigned short v46)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
unsigned char v49 = 4;
unsigned short v48 = 5;
signed short v47 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v1 (signed char v50)
{
history[history_index++] = (int)v50;
{
for (;;) {
signed short v53 = -2;
unsigned char v52 = 5;
unsigned char v51 = 2;
trace++;
switch (trace)
{
case 0: 
return v50;
case 1: 
{
signed int v54;
v54 = v21 ();
history[history_index++] = (int)v54;
}
break;
case 3: 
{
unsigned int v55;
unsigned short v56;
signed short v57;
unsigned short v58;
unsigned char v59;
v55 = 5U - 5U;
v56 = 5 - 7;
v57 = v53 + -4;
v58 = 2 + 1;
v59 = v11 (v55, v56, v57, v58);
history[history_index++] = (int)v59;
}
break;
case 9: 
{
signed int v60;
v60 = v21 ();
history[history_index++] = (int)v60;
}
break;
case 13: 
return -1;
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
signed char v63;
signed char v64;
v63 = -4 + -2;
v64 = v1 (v63);
history[history_index++] = (int)v64;
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
