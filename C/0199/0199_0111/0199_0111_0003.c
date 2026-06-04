#include <stdlib.h>
unsigned char v3 (void);
unsigned char (*v4) (void) = v3;
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
signed char v7 (signed int, unsigned short);
signed char (*v8) (signed int, unsigned short) = v7;
signed short v9 (signed int, unsigned char, signed char);
signed short (*v10) (signed int, unsigned char, signed char) = v9;
extern void v11 (void);
extern void (*v12) (void);
extern signed short v13 (signed short, signed short);
extern signed short (*v14) (signed short, signed short);
signed int v15 (signed char, signed int, signed short, signed int);
signed int (*v16) (signed char, signed int, signed short, signed int) = v15;
extern unsigned int v17 (unsigned char, signed int, signed char, unsigned short);
extern unsigned int (*v18) (unsigned char, signed int, signed char, unsigned short);
extern signed int v19 (void);
extern signed int (*v20) (void);
static signed short v21 (void);
static signed short (*v22) (void) = v21;
extern unsigned int v23 (signed char);
extern unsigned int (*v24) (signed char);
extern signed int v25 (signed char, unsigned char, signed short, signed short);
extern signed int (*v26) (signed char, unsigned char, signed short, signed short);
extern unsigned short v27 (signed short, unsigned short);
extern unsigned short (*v28) (signed short, unsigned short);
unsigned int v29 (unsigned int, signed int);
unsigned int (*v30) (unsigned int, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v84 = -2;
signed short v83 = -1;
unsigned char v82 = 4;

unsigned int v29 (unsigned int v85, signed int v86)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
unsigned char v89 = 1;
signed short v88 = -3;
unsigned int v87 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v21 (void)
{
{
for (;;) {
unsigned short v92 = 6;
unsigned char v91 = 5;
unsigned char v90 = 0;
trace++;
switch (trace)
{
case 8: 
return -1;
default: abort ();
}
}
}
}

signed int v15 (signed char v93, signed int v94, signed short v95, signed int v96)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
unsigned char v99 = 5;
unsigned short v98 = 2;
unsigned int v97 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (signed int v100, unsigned char v101, signed char v102)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed short v105 = -4;
unsigned int v104 = 2U;
signed int v103 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (signed int v106, unsigned short v107)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
signed short v110 = 2;
signed int v109 = -1;
unsigned int v108 = 5U;
trace++;
switch (trace)
{
case 3: 
{
signed char v111;
unsigned int v112;
v111 = -3 - -4;
v112 = v23 (v111);
history[history_index++] = (int)v112;
}
break;
case 7: 
{
signed short v113;
v113 = v21 ();
history[history_index++] = (int)v113;
}
break;
case 9: 
{
signed char v114;
unsigned int v115;
v114 = 0 + 2;
v115 = v23 (v114);
history[history_index++] = (int)v115;
}
break;
case 11: 
return 3;
default: abort ();
}
}
}
}

unsigned char v3 (void)
{
{
for (;;) {
unsigned short v118 = 2;
unsigned int v117 = 5U;
signed short v116 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
