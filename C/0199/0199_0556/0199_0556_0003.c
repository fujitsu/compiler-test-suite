#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
signed short v5 (signed int);
signed short (*v6) (signed int) = v5;
static signed short v7 (void);
static signed short (*v8) (void) = v7;
extern signed char v11 (void);
extern signed char (*v12) (void);
extern unsigned int v13 (signed short, unsigned short, unsigned char);
extern unsigned int (*v14) (signed short, unsigned short, unsigned char);
extern signed int v15 (signed char, signed int, signed short, unsigned char);
extern signed int (*v16) (signed char, signed int, signed short, unsigned char);
extern signed int v17 (void);
extern signed int (*v18) (void);
signed char v19 (unsigned char, signed int, signed char, signed int);
signed char (*v20) (unsigned char, signed int, signed char, signed int) = v19;
unsigned short v21 (unsigned short, unsigned int);
unsigned short (*v22) (unsigned short, unsigned int) = v21;
unsigned int v25 (unsigned short, signed short);
unsigned int (*v26) (unsigned short, signed short) = v25;
signed char v27 (signed char, signed int);
signed char (*v28) (signed char, signed int) = v27;
signed short v29 (unsigned int, unsigned char, unsigned char);
signed short (*v30) (unsigned int, unsigned char, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v78 = 3U;
unsigned int v77 = 1U;
unsigned short v76 = 5;

signed short v29 (unsigned int v79, unsigned char v80, unsigned char v81)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
unsigned short v84 = 4;
signed char v83 = -2;
signed short v82 = -4;
trace++;
switch (trace)
{
case 1: 
return v82;
default: abort ();
}
}
}
}

signed char v27 (signed char v85, signed int v86)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
unsigned short v89 = 4;
unsigned short v88 = 7;
unsigned short v87 = 5;
trace++;
switch (trace)
{
case 7: 
{
signed short v90;
v90 = v7 ();
history[history_index++] = (int)v90;
}
break;
case 13: 
return -2;
default: abort ();
}
}
}
}

unsigned int v25 (unsigned short v91, signed short v92)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned short v95 = 2;
signed char v94 = 3;
signed char v93 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (unsigned short v96, unsigned int v97)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed short v100 = 3;
unsigned char v99 = 4;
signed char v98 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (unsigned char v101, signed int v102, signed char v103, signed int v104)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
signed char v107 = -1;
unsigned short v106 = 2;
signed int v105 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v7 (void)
{
{
for (;;) {
unsigned char v110 = 7;
signed int v109 = 1;
signed char v108 = -3;
trace++;
switch (trace)
{
case 8: 
{
signed int v111;
v111 = v17 ();
history[history_index++] = (int)v111;
}
break;
case 10: 
{
signed int v112;
v112 = v17 ();
history[history_index++] = (int)v112;
}
break;
case 12: 
return -1;
default: abort ();
}
}
}
}

signed short v5 (signed int v113)
{
history[history_index++] = (int)v113;
{
for (;;) {
unsigned char v116 = 5;
unsigned int v115 = 7U;
signed char v114 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
