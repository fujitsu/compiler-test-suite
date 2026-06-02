#include <stdlib.h>
extern unsigned char v1 (unsigned char);
extern unsigned char (*v2) (unsigned char);
extern unsigned char v3 (unsigned short, signed int, unsigned short);
extern unsigned char (*v4) (unsigned short, signed int, unsigned short);
extern signed char v5 (signed short, signed short, signed char);
extern signed char (*v6) (signed short, signed short, signed char);
unsigned short v7 (unsigned int, signed char, unsigned short, unsigned short);
unsigned short (*v8) (unsigned int, signed char, unsigned short, unsigned short) = v7;
extern unsigned short v9 (unsigned int, signed short, signed short, signed int);
extern unsigned short (*v10) (unsigned int, signed short, signed short, signed int);
extern void v13 (signed short);
extern void (*v14) (signed short);
unsigned short v15 (signed char, unsigned short);
unsigned short (*v16) (signed char, unsigned short) = v15;
extern unsigned int v17 (unsigned int);
extern unsigned int (*v18) (unsigned int);
extern signed char v19 (signed int);
extern signed char (*v20) (signed int);
unsigned char v21 (void);
unsigned char (*v22) (void) = v21;
unsigned char v23 (signed char, signed int, unsigned short, unsigned char);
unsigned char (*v24) (signed char, signed int, unsigned short, unsigned char) = v23;
signed int v25 (unsigned int);
signed int (*v26) (unsigned int) = v25;
extern signed int v27 (unsigned int);
extern signed int (*v28) (unsigned int);
extern unsigned char v29 (signed int, unsigned short);
extern unsigned char (*v30) (signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v89 = 1U;
signed short v88 = -4;
signed short v87 = -2;

signed int v25 (unsigned int v90)
{
history[history_index++] = (int)v90;
{
for (;;) {
unsigned char v93 = 0;
signed int v92 = 1;
unsigned short v91 = 1;
trace++;
switch (trace)
{
case 1: 
return v92;
case 5: 
return 1;
case 9: 
return v92;
default: abort ();
}
}
}
}

unsigned char v23 (signed char v94, signed int v95, unsigned short v96, unsigned char v97)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed char v100 = -4;
signed short v99 = -3;
signed short v98 = 1;
trace++;
switch (trace)
{
case 3: 
{
unsigned int v101;
signed short v102;
signed short v103;
signed int v104;
unsigned short v105;
v101 = 5U + 7U;
v102 = v99 + -2;
v103 = v99 + -3;
v104 = v95 - v95;
v105 = v9 (v101, v102, v103, v104);
history[history_index++] = (int)v105;
}
break;
case 13: 
return 1;
default: abort ();
}
}
}
}

unsigned char v21 (void)
{
{
for (;;) {
signed int v108 = -2;
unsigned char v107 = 4;
signed char v106 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (signed char v109, unsigned short v110)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed char v113 = 3;
unsigned short v112 = 1;
signed short v111 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (unsigned int v114, signed char v115, unsigned short v116, unsigned short v117)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
signed short v120 = 3;
unsigned short v119 = 0;
signed char v118 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
