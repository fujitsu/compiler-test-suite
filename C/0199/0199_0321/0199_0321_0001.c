#include <stdlib.h>
void v1 (signed short, unsigned int, unsigned char, unsigned int);
void (*v2) (signed short, unsigned int, unsigned char, unsigned int) = v1;
extern unsigned char v3 (signed char);
extern unsigned char (*v4) (signed char);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern unsigned char v7 (unsigned int, unsigned char, signed char);
extern unsigned char (*v8) (unsigned int, unsigned char, signed char);
unsigned int v9 (void);
unsigned int (*v10) (void) = v9;
extern unsigned short v11 (unsigned short, unsigned char, signed int, signed short);
extern unsigned short (*v12) (unsigned short, unsigned char, signed int, signed short);
signed int v13 (unsigned char, unsigned char);
signed int (*v14) (unsigned char, unsigned char) = v13;
unsigned int v15 (void);
unsigned int (*v16) (void) = v15;
extern unsigned int v17 (signed char, signed char, signed short);
extern unsigned int (*v18) (signed char, signed char, signed short);
unsigned int v19 (unsigned short, signed char, unsigned char, signed short);
unsigned int (*v20) (unsigned short, signed char, unsigned char, signed short) = v19;
extern unsigned char v21 (signed char, unsigned short);
extern unsigned char (*v22) (signed char, unsigned short);
extern signed int v23 (unsigned int, signed char);
extern signed int (*v24) (unsigned int, signed char);
extern void v25 (unsigned char, unsigned int);
extern void (*v26) (unsigned char, unsigned int);
static signed char v27 (signed short, signed int);
static signed char (*v28) (signed short, signed int) = v27;
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v64 = 6;
unsigned char v63 = 6;
unsigned char v62 = 4;

static signed char v27 (signed short v65, signed int v66)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned char v69 = 5;
unsigned int v68 = 1U;
unsigned int v67 = 1U;
trace++;
switch (trace)
{
case 1: 
return -3;
default: abort ();
}
}
}
}

unsigned int v19 (unsigned short v70, signed char v71, unsigned char v72, signed short v73)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
unsigned int v76 = 3U;
unsigned int v75 = 3U;
unsigned short v74 = 1;
trace++;
switch (trace)
{
case 4: 
{
unsigned char v77;
unsigned int v78;
v77 = 4 - 5;
v78 = v75 - v75;
v25 (v77, v78);
}
break;
case 12: 
return v76;
default: abort ();
}
}
}
}

unsigned int v15 (void)
{
{
for (;;) {
signed int v81 = 0;
signed char v80 = 0;
unsigned short v79 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (unsigned char v82, unsigned char v83)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned short v86 = 7;
unsigned char v85 = 0;
unsigned char v84 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (void)
{
{
for (;;) {
unsigned char v89 = 6;
signed int v88 = -1;
signed short v87 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (signed short v90, unsigned int v91, unsigned char v92, unsigned int v93)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
unsigned int v96 = 5U;
unsigned short v95 = 6;
signed short v94 = -3;
trace++;
switch (trace)
{
case 0: 
{
signed short v97;
signed int v98;
signed char v99;
v97 = 0 - v90;
v98 = -2 + -4;
v99 = v27 (v97, v98);
history[history_index++] = (int)v99;
}
break;
case 2: 
{
unsigned short v100;
unsigned char v101;
signed int v102;
signed short v103;
unsigned short v104;
v100 = 6 + v95;
v101 = v92 - v92;
v102 = -2 - 2;
v103 = -3 - v90;
v104 = v11 (v100, v101, v102, v103);
history[history_index++] = (int)v104;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
