#include <stdio.h>
#include <stdlib.h>
unsigned short v1 (signed short, signed char, signed char);
unsigned short (*v2) (signed short, signed char, signed char) = v1;
extern signed short v3 (unsigned char, signed char);
extern signed short (*v4) (unsigned char, signed char);
extern signed int v5 (signed short);
extern signed int (*v6) (signed short);
static unsigned short v7 (signed char);
static unsigned short (*v8) (signed char) = v7;
extern signed char v9 (unsigned short, unsigned char);
extern signed char (*v10) (unsigned short, unsigned char);
extern signed int v11 (unsigned int, signed short, unsigned int, unsigned short);
extern signed int (*v12) (unsigned int, signed short, unsigned int, unsigned short);
extern unsigned short v13 (unsigned int);
extern unsigned short (*v14) (unsigned int);
extern unsigned char v15 (unsigned int, signed short);
extern unsigned char (*v16) (unsigned int, signed short);
unsigned char v17 (void);
unsigned char (*v18) (void) = v17;
extern unsigned short v19 (signed int, signed char, signed int);
extern unsigned short (*v20) (signed int, signed char, signed int);
signed short v21 (void);
signed short (*v22) (void) = v21;
extern signed char v23 (unsigned short, unsigned short);
extern signed char (*v24) (unsigned short, unsigned short);
extern unsigned char v25 (unsigned char, signed char);
extern unsigned char (*v26) (unsigned char, signed char);
extern unsigned int v27 (unsigned char, unsigned short, signed short);
extern unsigned int (*v28) (unsigned char, unsigned short, signed short);
extern unsigned short v29 (unsigned int);
extern unsigned short (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 1;
unsigned short v32 = 4;
unsigned char v31 = 5;

signed short v21 (void)
{
{
for (;;) {
unsigned int v36 = 0U;
signed int v35 = -4;
signed int v34 = 3;
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
signed short v39 = 3;
unsigned int v38 = 1U;
unsigned short v37 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v7 (signed char v40)
{
history[history_index++] = (int)v40;
{
for (;;) {
signed int v43 = 3;
signed int v42 = -1;
signed char v41 = 2;
trace++;
switch (trace)
{
case 1: 
{
signed int v44;
signed char v45;
signed int v46;
unsigned short v47;
v44 = 0 + v43;
v45 = 2 - v40;
v46 = -1 - v42;
v47 = v19 (v44, v45, v46);
history[history_index++] = (int)v47;
}
break;
case 15: 
return 2;
default: abort ();
}
}
}
}

unsigned short v1 (signed short v48, signed char v49, signed char v50)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
signed int v53 = -4;
unsigned char v52 = 6;
signed char v51 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed char v54;
unsigned short v55;
v54 = v51 - 3;
v55 = v7 (v54);
history[history_index++] = (int)v55;
}
break;
case 3: 
{
unsigned short v56;
unsigned char v57;
signed char v58;
v56 = 3 - 4;
v57 = 5 + 3;
v58 = v9 (v56, v57);
history[history_index++] = (int)v58;
}
break;
case 13: 
return 0;
case 16: 
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
signed short v61;
signed char v62;
signed char v63;
unsigned short v64;
v61 = -1 - 3;
v62 = v33 - v33;
v63 = v33 + -3;
v64 = v1 (v61, v62, v63);
history[history_index++] = (int)v64;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
