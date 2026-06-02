#include <stdlib.h>
extern unsigned short v3 (unsigned char);
extern unsigned short (*v4) (unsigned char);
unsigned char v5 (signed short, signed int, signed short);
unsigned char (*v6) (signed short, signed int, signed short) = v5;
extern unsigned int v7 (unsigned int);
extern unsigned int (*v8) (unsigned int);
extern unsigned char v9 (unsigned int, unsigned char, unsigned char);
extern unsigned char (*v10) (unsigned int, unsigned char, unsigned char);
extern signed char v11 (signed int);
extern signed char (*v12) (signed int);
extern unsigned short v13 (signed short, unsigned char, signed char);
extern unsigned short (*v14) (signed short, unsigned char, signed char);
signed short v15 (signed int);
signed short (*v16) (signed int) = v15;
extern signed short v17 (unsigned char);
extern signed short (*v18) (unsigned char);
extern void v19 (signed char, unsigned char, unsigned char, signed short);
extern void (*v20) (signed char, unsigned char, unsigned char, signed short);
void v21 (signed int, signed int);
void (*v22) (signed int, signed int) = v21;
unsigned char v23 (void);
unsigned char (*v24) (void) = v23;
signed short v25 (signed int);
signed short (*v26) (signed int) = v25;
extern unsigned char v27 (signed short, signed int, signed int, signed short);
extern unsigned char (*v28) (signed short, signed int, signed int, signed short);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v84 = 5U;
signed int v83 = 3;
signed int v82 = -3;

signed short v25 (signed int v85)
{
history[history_index++] = (int)v85;
{
for (;;) {
signed short v88 = 3;
unsigned char v87 = 7;
signed char v86 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (void)
{
{
for (;;) {
signed int v91 = 3;
unsigned short v90 = 1;
unsigned int v89 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v21 (signed int v92, signed int v93)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
unsigned short v96 = 2;
signed char v95 = 2;
unsigned int v94 = 1U;
trace++;
switch (trace)
{
case 1: 
return;
default: abort ();
}
}
}
}

signed short v15 (signed int v97)
{
history[history_index++] = (int)v97;
{
for (;;) {
signed int v100 = -1;
signed short v99 = 1;
unsigned char v98 = 7;
trace++;
switch (trace)
{
case 4: 
{
unsigned char v101;
signed short v102;
v101 = 0 + v98;
v102 = v17 (v101);
history[history_index++] = (int)v102;
}
break;
case 6: 
{
unsigned char v103;
signed short v104;
v103 = 5 + v98;
v104 = v17 (v103);
history[history_index++] = (int)v104;
}
break;
case 8: 
{
unsigned char v105;
signed short v106;
v105 = 0 - v98;
v106 = v17 (v105);
history[history_index++] = (int)v106;
}
break;
case 10: 
{
unsigned char v107;
signed short v108;
v107 = v98 - v98;
v108 = v17 (v107);
history[history_index++] = (int)v108;
}
break;
case 12: 
return v99;
default: abort ();
}
}
}
}

unsigned char v5 (signed short v109, signed int v110, signed short v111)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
signed char v114 = 3;
unsigned char v113 = 2;
signed short v112 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
