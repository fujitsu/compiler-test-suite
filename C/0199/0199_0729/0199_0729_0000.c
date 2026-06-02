#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (signed int, signed short, signed char, signed short);
extern unsigned int (*v2) (signed int, signed short, signed char, signed short);
extern signed int v3 (signed int, unsigned int);
extern signed int (*v4) (signed int, unsigned int);
extern unsigned int v5 (unsigned char);
extern unsigned int (*v6) (unsigned char);
void v7 (signed char, signed char, signed int, unsigned short);
void (*v8) (signed char, signed char, signed int, unsigned short) = v7;
unsigned char v9 (signed int, unsigned short, unsigned char);
unsigned char (*v10) (signed int, unsigned short, unsigned char) = v9;
extern unsigned int v11 (signed char);
extern unsigned int (*v12) (signed char);
extern unsigned char v13 (unsigned int, unsigned int, signed short, signed int);
extern unsigned char (*v14) (unsigned int, unsigned int, signed short, signed int);
extern void v15 (signed char, unsigned short, unsigned int);
extern void (*v16) (signed char, unsigned short, unsigned int);
extern unsigned int v17 (signed int);
extern unsigned int (*v18) (signed int);
unsigned int v19 (signed short, signed char, unsigned int, unsigned int);
unsigned int (*v20) (signed short, signed char, unsigned int, unsigned int) = v19;
extern signed short v21 (unsigned short, unsigned char, signed char);
extern signed short (*v22) (unsigned short, unsigned char, signed char);
extern signed char v23 (unsigned char, signed char, signed char);
extern signed char (*v24) (unsigned char, signed char, signed char);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern signed int v27 (unsigned short, unsigned int, signed int);
extern signed int (*v28) (unsigned short, unsigned int, signed int);
static unsigned short v29 (unsigned short, signed char);
static unsigned short (*v30) (unsigned short, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -2;
unsigned int v32 = 6U;
unsigned char v31 = 1;

static unsigned short v29 (unsigned short v34, signed char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed char v38 = 2;
unsigned int v37 = 3U;
unsigned short v36 = 4;
trace++;
switch (trace)
{
case 4: 
return v34;
default: abort ();
}
}
}
}

unsigned int v19 (signed short v39, signed char v40, unsigned int v41, unsigned int v42)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned short v45 = 5;
signed char v44 = -4;
signed char v43 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (signed int v46, unsigned short v47, unsigned char v48)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
unsigned short v51 = 6;
unsigned int v50 = 5U;
signed int v49 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (signed char v52, signed char v53, signed int v54, unsigned short v55)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned int v58 = 5U;
unsigned char v57 = 6;
unsigned short v56 = 1;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v59;
signed char v60;
signed char v61;
signed char v62;
v59 = v57 + 3;
v60 = v53 + 0;
v61 = v52 + v52;
v62 = v23 (v59, v60, v61);
history[history_index++] = (int)v62;
}
break;
case 3: 
{
unsigned short v63;
signed char v64;
unsigned short v65;
v63 = v55 + v55;
v64 = v52 + -4;
v65 = v29 (v63, v64);
history[history_index++] = (int)v65;
}
break;
case 5: 
{
unsigned char v66;
signed char v67;
signed char v68;
signed char v69;
v66 = v57 + v57;
v67 = v53 - -4;
v68 = v53 - -1;
v69 = v23 (v66, v67, v68);
history[history_index++] = (int)v69;
}
break;
case 7: 
{
unsigned char v70;
signed char v71;
signed char v72;
signed char v73;
v70 = v57 + v57;
v71 = v52 - v52;
v72 = -4 + v52;
v73 = v23 (v70, v71, v72);
history[history_index++] = (int)v73;
}
break;
case 9: 
{
unsigned char v74;
signed char v75;
signed char v76;
signed char v77;
v74 = 0 - v57;
v75 = v53 - v53;
v76 = v53 - v53;
v77 = v23 (v74, v75, v76);
history[history_index++] = (int)v77;
}
break;
case 11: 
return;
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
signed int v80;
signed short v81;
signed char v82;
signed short v83;
unsigned int v84;
v80 = v33 - v33;
v81 = 1 + 1;
v82 = -3 + 3;
v83 = -1 - -4;
v84 = v1 (v80, v81, v82, v83);
history[history_index++] = (int)v84;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
