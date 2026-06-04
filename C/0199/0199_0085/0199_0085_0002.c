#include <stdlib.h>
unsigned short v3 (void);
unsigned short (*v4) (void) = v3;
extern void v5 (unsigned short);
extern void (*v6) (unsigned short);
void v7 (signed short, unsigned char);
void (*v8) (signed short, unsigned char) = v7;
extern unsigned int v9 (unsigned char);
extern unsigned int (*v10) (unsigned char);
extern unsigned short v11 (signed short, unsigned char, unsigned short);
extern unsigned short (*v12) (signed short, unsigned char, unsigned short);
extern unsigned short v13 (signed int, signed int);
extern unsigned short (*v14) (signed int, signed int);
signed short v15 (signed char, unsigned int, unsigned int);
signed short (*v16) (signed char, unsigned int, unsigned int) = v15;
extern signed char v17 (signed short, unsigned short);
extern signed char (*v18) (signed short, unsigned short);
signed int v19 (unsigned int);
signed int (*v20) (unsigned int) = v19;
void v21 (signed int, signed char, signed int, unsigned int);
void (*v22) (signed int, signed char, signed int, unsigned int) = v21;
signed char v23 (void);
signed char (*v24) (void) = v23;
extern unsigned int v25 (signed int, signed char, signed char, signed short);
extern unsigned int (*v26) (signed int, signed char, signed char, signed short);
extern unsigned char v27 (unsigned int);
extern unsigned char (*v28) (unsigned int);
extern void v29 (unsigned char, signed short, signed int, signed short);
extern void (*v30) (unsigned char, signed short, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v71 = 2;
signed char v70 = 2;
signed char v69 = -3;

signed char v23 (void)
{
{
for (;;) {
unsigned char v74 = 2;
unsigned short v73 = 4;
signed short v72 = 1;
trace++;
switch (trace)
{
case 1: 
return 3;
default: abort ();
}
}
}
}

void v21 (signed int v75, signed char v76, signed int v77, unsigned int v78)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
unsigned short v81 = 3;
signed char v80 = -3;
unsigned int v79 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (unsigned int v82)
{
history[history_index++] = (int)v82;
{
for (;;) {
unsigned char v85 = 0;
unsigned char v84 = 7;
signed char v83 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (signed char v86, unsigned int v87, unsigned int v88)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
unsigned int v91 = 1U;
unsigned short v90 = 0;
unsigned short v89 = 5;
trace++;
switch (trace)
{
case 4: 
return 2;
case 6: 
{
signed int v92;
signed char v93;
signed char v94;
signed short v95;
unsigned int v96;
v92 = 3 - -1;
v93 = -2 + 0;
v94 = v86 - v86;
v95 = 2 + -4;
v96 = v25 (v92, v93, v94, v95);
history[history_index++] = (int)v96;
}
break;
case 8: 
{
unsigned int v97;
unsigned char v98;
v97 = 0U + v91;
v98 = v27 (v97);
history[history_index++] = (int)v98;
}
break;
case 10: 
{
signed int v99;
signed char v100;
signed char v101;
signed short v102;
unsigned int v103;
v99 = 3 - -3;
v100 = v86 - -1;
v101 = -4 + v86;
v102 = 2 + 0;
v103 = v25 (v99, v100, v101, v102);
history[history_index++] = (int)v103;
}
break;
case 12: 
return -2;
default: abort ();
}
}
}
}

void v7 (signed short v104, unsigned char v105)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed short v108 = -2;
unsigned short v107 = 0;
signed char v106 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (void)
{
{
for (;;) {
signed char v111 = 3;
unsigned int v110 = 2U;
unsigned char v109 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
