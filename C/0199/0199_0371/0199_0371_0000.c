#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (signed short, unsigned char, signed short, unsigned short);
extern signed int (*v2) (signed short, unsigned char, signed short, unsigned short);
signed char v3 (unsigned short, unsigned short, signed short);
signed char (*v4) (unsigned short, unsigned short, signed short) = v3;
extern signed int v5 (void);
extern signed int (*v6) (void);
extern signed short v7 (signed int, signed char, unsigned short);
extern signed short (*v8) (signed int, signed char, unsigned short);
extern signed int v9 (signed int, unsigned int, unsigned int);
extern signed int (*v10) (signed int, unsigned int, unsigned int);
unsigned char v11 (unsigned char);
unsigned char (*v12) (unsigned char) = v11;
extern signed short v13 (signed char, signed short, signed char);
extern signed short (*v14) (signed char, signed short, signed char);
extern signed short v15 (signed int, signed int, signed char);
extern signed short (*v16) (signed int, signed int, signed char);
void v17 (unsigned short, unsigned short, signed int, signed char);
void (*v18) (unsigned short, unsigned short, signed int, signed char) = v17;
extern unsigned char v19 (signed int, signed int, unsigned char);
extern unsigned char (*v20) (signed int, signed int, unsigned char);
extern unsigned char v21 (signed int, unsigned int, signed char, unsigned int);
extern unsigned char (*v22) (signed int, unsigned int, signed char, unsigned int);
extern unsigned char v23 (signed int, unsigned short, signed char, signed char);
extern unsigned char (*v24) (signed int, unsigned short, signed char, signed char);
extern void v25 (unsigned short, signed short, signed short, signed char);
extern void (*v26) (unsigned short, signed short, signed short, signed char);
unsigned int v27 (signed char, signed char, signed short, signed char);
unsigned int (*v28) (signed char, signed char, signed short, signed char) = v27;
extern unsigned int v29 (signed char, signed short, signed char);
extern unsigned int (*v30) (signed char, signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 2;
unsigned char v32 = 7;
unsigned char v31 = 5;

unsigned int v27 (signed char v34, signed char v35, signed short v36, signed char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = -4;
signed int v39 = 2;
signed int v38 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (unsigned short v41, unsigned short v42, signed int v43, signed char v44)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
signed char v47 = 2;
unsigned char v46 = 3;
unsigned short v45 = 5;
trace++;
switch (trace)
{
case 1: 
{
signed int v48;
unsigned short v49;
signed char v50;
signed char v51;
unsigned char v52;
v48 = -4 + 1;
v49 = v42 + 0;
v50 = v44 - v47;
v51 = v47 - -2;
v52 = v23 (v48, v49, v50, v51);
history[history_index++] = (int)v52;
}
break;
case 3: 
return;
default: abort ();
}
}
}
}

unsigned char v11 (unsigned char v53)
{
history[history_index++] = (int)v53;
{
for (;;) {
unsigned int v56 = 2U;
unsigned char v55 = 4;
unsigned short v54 = 7;
trace++;
switch (trace)
{
case 7: 
{
signed char v57;
signed short v58;
signed char v59;
unsigned int v60;
v57 = 1 + -2;
v58 = -1 - 0;
v59 = -4 + -2;
v60 = v29 (v57, v58, v59);
history[history_index++] = (int)v60;
}
break;
case 9: 
{
signed char v61;
signed short v62;
signed char v63;
unsigned int v64;
v61 = -2 - 3;
v62 = 1 + -3;
v63 = -4 + 0;
v64 = v29 (v61, v62, v63);
history[history_index++] = (int)v64;
}
break;
case 11: 
return v53;
default: abort ();
}
}
}
}

signed char v3 (unsigned short v65, unsigned short v66, signed short v67)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
unsigned int v70 = 7U;
unsigned char v69 = 1;
unsigned short v68 = 3;
trace++;
switch (trace)
{
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
signed short v73;
unsigned char v74;
signed short v75;
unsigned short v76;
signed int v77;
v73 = -4 - 0;
v74 = v32 + v32;
v75 = -1 - 2;
v76 = 6 - 3;
v77 = v1 (v73, v74, v75, v76);
history[history_index++] = (int)v77;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
