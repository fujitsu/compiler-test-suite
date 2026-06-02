#include <stdlib.h>
extern unsigned char v1 (signed int, signed char, signed int, unsigned char);
extern unsigned char (*v2) (signed int, signed char, signed int, unsigned char);
extern signed char v3 (void);
extern signed char (*v4) (void);
unsigned char v5 (void);
unsigned char (*v6) (void) = v5;
extern void v7 (signed int, signed short, signed char);
extern void (*v8) (signed int, signed short, signed char);
extern void v9 (signed int, signed int, unsigned char);
extern void (*v10) (signed int, signed int, unsigned char);
extern unsigned int v11 (unsigned int, unsigned char, signed char);
extern unsigned int (*v12) (unsigned int, unsigned char, signed char);
extern signed char v13 (signed int);
extern signed char (*v14) (signed int);
signed char v15 (unsigned short, unsigned short, unsigned int);
signed char (*v16) (unsigned short, unsigned short, unsigned int) = v15;
signed short v17 (void);
signed short (*v18) (void) = v17;
extern unsigned char v19 (signed char, unsigned int, signed short, unsigned char);
extern unsigned char (*v20) (signed char, unsigned int, signed short, unsigned char);
unsigned short v23 (void);
unsigned short (*v24) (void) = v23;
static signed int v25 (unsigned short, unsigned char);
static signed int (*v26) (unsigned short, unsigned char) = v25;
extern unsigned short v27 (signed short, unsigned int, signed short);
extern unsigned short (*v28) (signed short, unsigned int, signed short);
unsigned char v29 (signed short, signed int);
unsigned char (*v30) (signed short, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v92 = 6U;
unsigned char v91 = 0;
signed char v90 = 2;

unsigned char v29 (signed short v93, signed int v94)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
unsigned char v97 = 6;
unsigned short v96 = 7;
signed int v95 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v25 (unsigned short v98, unsigned char v99)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
unsigned short v102 = 5;
signed int v101 = -4;
signed short v100 = -3;
trace++;
switch (trace)
{
case 7: 
return v101;
case 11: 
return 1;
default: abort ();
}
}
}
}

unsigned short v23 (void)
{
{
for (;;) {
unsigned short v105 = 0;
signed short v104 = -4;
signed int v103 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (void)
{
{
for (;;) {
signed int v108 = 3;
signed int v107 = 1;
signed char v106 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (unsigned short v109, unsigned short v110, unsigned int v111)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
signed short v114 = -2;
unsigned short v113 = 2;
signed char v112 = -3;
trace++;
switch (trace)
{
case 6: 
{
unsigned short v115;
unsigned char v116;
signed int v117;
v115 = 7 - v110;
v116 = 5 - 2;
v117 = v25 (v115, v116);
history[history_index++] = (int)v117;
}
break;
case 8: 
return -4;
case 10: 
{
unsigned short v118;
unsigned char v119;
signed int v120;
v118 = v109 - v109;
v119 = 6 + 3;
v120 = v25 (v118, v119);
history[history_index++] = (int)v120;
}
break;
case 12: 
return v112;
default: abort ();
}
}
}
}

unsigned char v5 (void)
{
{
for (;;) {
signed char v123 = 0;
signed int v122 = 1;
unsigned short v121 = 4;
trace++;
switch (trace)
{
case 2: 
{
signed int v124;
signed char v125;
v124 = v122 + 0;
v125 = v13 (v124);
history[history_index++] = (int)v125;
}
break;
case 16: 
return 5;
default: abort ();
}
}
}
}
