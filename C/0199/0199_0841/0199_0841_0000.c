#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (unsigned char, signed short, unsigned int);
extern unsigned short (*v2) (unsigned char, signed short, unsigned int);
unsigned int v3 (signed short, unsigned char);
unsigned int (*v4) (signed short, unsigned char) = v3;
signed short v5 (unsigned char, signed char, unsigned short, unsigned int);
signed short (*v6) (unsigned char, signed char, unsigned short, unsigned int) = v5;
extern unsigned short v7 (unsigned short);
extern unsigned short (*v8) (unsigned short);
unsigned short v9 (signed char);
unsigned short (*v10) (signed char) = v9;
extern void v11 (signed char);
extern void (*v12) (signed char);
unsigned short v13 (void);
unsigned short (*v14) (void) = v13;
static signed short v15 (void);
static signed short (*v16) (void) = v15;
extern unsigned char v17 (signed char, signed short);
extern unsigned char (*v18) (signed char, signed short);
extern unsigned short v19 (signed short, signed int, signed int);
extern unsigned short (*v20) (signed short, signed int, signed int);
signed char v21 (signed char, signed char);
signed char (*v22) (signed char, signed char) = v21;
extern unsigned short v23 (signed short, signed short);
extern unsigned short (*v24) (signed short, signed short);
extern unsigned int v25 (unsigned short, signed int, signed int);
extern unsigned int (*v26) (unsigned short, signed int, signed int);
extern unsigned int v27 (signed short);
extern unsigned int (*v28) (signed short);
unsigned int v29 (signed char, signed int, signed int, signed short);
unsigned int (*v30) (signed char, signed int, signed int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 2U;
unsigned char v32 = 3;
unsigned short v31 = 1;

unsigned int v29 (signed char v34, signed int v35, signed int v36, signed short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed char v40 = -1;
signed int v39 = 1;
unsigned short v38 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v21 (signed char v41, signed char v42)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned char v45 = 1;
signed int v44 = -1;
signed int v43 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v15 (void)
{
{
for (;;) {
signed short v48 = 2;
unsigned short v47 = 7;
unsigned int v46 = 5U;
trace++;
switch (trace)
{
case 2: 
{
signed short v49;
unsigned int v50;
v49 = v48 - 2;
v50 = v27 (v49);
history[history_index++] = (int)v50;
}
break;
case 4: 
{
unsigned short v51;
signed int v52;
signed int v53;
unsigned int v54;
v51 = 5 - 7;
v52 = -4 - -3;
v53 = 1 + -3;
v54 = v25 (v51, v52, v53);
history[history_index++] = (int)v54;
}
break;
case 6: 
{
signed short v55;
unsigned int v56;
v55 = v48 - -2;
v56 = v27 (v55);
history[history_index++] = (int)v56;
}
break;
case 8: 
{
unsigned short v57;
signed int v58;
signed int v59;
unsigned int v60;
v57 = 2 + 1;
v58 = -4 - 1;
v59 = 1 + 0;
v60 = v25 (v57, v58, v59);
history[history_index++] = (int)v60;
}
break;
case 10: 
{
signed short v61;
unsigned int v62;
v61 = 3 + -1;
v62 = v27 (v61);
history[history_index++] = (int)v62;
}
break;
case 12: 
return v48;
default: abort ();
}
}
}
}

unsigned short v13 (void)
{
{
for (;;) {
signed short v65 = 2;
signed int v64 = -1;
signed char v63 = 0;
trace++;
switch (trace)
{
case 1: 
{
signed short v66;
v66 = v15 ();
history[history_index++] = (int)v66;
}
break;
case 13: 
return 2;
default: abort ();
}
}
}
}

unsigned short v9 (signed char v67)
{
history[history_index++] = (int)v67;
{
for (;;) {
unsigned short v70 = 5;
unsigned char v69 = 4;
unsigned int v68 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (unsigned char v71, signed char v72, unsigned short v73, unsigned int v74)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
unsigned short v77 = 3;
signed char v76 = -3;
signed int v75 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (signed short v78, unsigned char v79)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned char v82 = 5;
unsigned int v81 = 7U;
unsigned char v80 = 2;
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
unsigned char v85;
signed short v86;
unsigned int v87;
unsigned short v88;
v85 = v32 + v32;
v86 = 0 + 1;
v87 = 6U - v33;
v88 = v1 (v85, v86, v87);
history[history_index++] = (int)v88;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
