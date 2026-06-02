#include <stdio.h>
#include <stdlib.h>
static signed char v1 (signed int, signed char, signed int, signed short);
static signed char (*v2) (signed int, signed char, signed int, signed short) = v1;
extern unsigned char v3 (signed int, signed char, signed char);
extern unsigned char (*v4) (signed int, signed char, signed char);
static unsigned int v5 (unsigned char, unsigned int, signed int);
static unsigned int (*v6) (unsigned char, unsigned int, signed int) = v5;
signed char v7 (unsigned char, signed short, signed char, signed char);
signed char (*v8) (unsigned char, signed short, signed char, signed char) = v7;
extern signed int v9 (signed short, signed int, signed short, signed int);
extern signed int (*v10) (signed short, signed int, signed short, signed int);
extern unsigned int v11 (signed char);
extern unsigned int (*v12) (signed char);
extern signed short v13 (signed short, signed short);
extern signed short (*v14) (signed short, signed short);
extern signed char v15 (void);
extern signed char (*v16) (void);
signed int v17 (void);
signed int (*v18) (void) = v17;
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned short v21 (signed char);
extern unsigned short (*v22) (signed char);
extern signed char v23 (unsigned char, signed char);
extern signed char (*v24) (unsigned char, signed char);
extern signed short v25 (unsigned char);
extern signed short (*v26) (unsigned char);
extern unsigned short v27 (signed int, signed short, signed short, unsigned int);
extern unsigned short (*v28) (signed int, signed short, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 7;
signed char v32 = -1;
unsigned char v31 = 1;

signed int v17 (void)
{
{
for (;;) {
unsigned int v36 = 1U;
unsigned short v35 = 0;
unsigned int v34 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (unsigned char v37, signed short v38, signed char v39, signed char v40)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned int v43 = 2U;
unsigned char v42 = 0;
unsigned int v41 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v5 (unsigned char v44, unsigned int v45, signed int v46)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
unsigned char v49 = 1;
unsigned char v48 = 5;
signed char v47 = -1;
trace++;
switch (trace)
{
case 11: 
return 4U;
default: abort ();
}
}
}
}

static signed char v1 (signed int v50, signed char v51, signed int v52, signed short v53)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
unsigned short v56 = 5;
signed int v55 = 0;
unsigned short v54 = 7;
trace++;
switch (trace)
{
case 0: 
{
signed short v57;
signed int v58;
signed short v59;
signed int v60;
signed int v61;
v57 = v53 + 1;
v58 = v55 + 0;
v59 = 1 - v53;
v60 = v52 + -1;
v61 = v9 (v57, v58, v59, v60);
history[history_index++] = (int)v61;
}
break;
case 10: 
{
unsigned char v62;
unsigned int v63;
signed int v64;
unsigned int v65;
v62 = 3 - 3;
v63 = 0U + 0U;
v64 = -3 - v52;
v65 = v5 (v62, v63, v64);
history[history_index++] = (int)v65;
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
signed int v68;
signed char v69;
signed int v70;
signed short v71;
signed char v72;
v68 = -1 - -3;
v69 = v32 + v32;
v70 = 0 + -2;
v71 = -4 + -3;
v72 = v1 (v68, v69, v70, v71);
history[history_index++] = (int)v72;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
