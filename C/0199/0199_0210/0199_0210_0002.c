#include <stdlib.h>
extern unsigned short v1 (unsigned short, signed short);
extern unsigned short (*v2) (unsigned short, signed short);
extern signed char v3 (void);
extern signed char (*v4) (void);
unsigned char v5 (signed short, unsigned char);
unsigned char (*v6) (signed short, unsigned char) = v5;
extern signed char v7 (unsigned int, signed short, signed short);
extern signed char (*v8) (unsigned int, signed short, signed short);
signed short v9 (unsigned int);
signed short (*v10) (unsigned int) = v9;
extern unsigned int v11 (signed int, signed int);
extern unsigned int (*v12) (signed int, signed int);
unsigned int v13 (unsigned short, unsigned int);
unsigned int (*v14) (unsigned short, unsigned int) = v13;
extern void v15 (void);
extern void (*v16) (void);
unsigned char v17 (signed int, signed short, signed short);
unsigned char (*v18) (signed int, signed short, signed short) = v17;
unsigned int v19 (signed int, signed short);
unsigned int (*v20) (signed int, signed short) = v19;
extern void v21 (signed char, signed short, signed short, signed short);
extern void (*v22) (signed char, signed short, signed short, signed short);
unsigned char v23 (void);
unsigned char (*v24) (void) = v23;
unsigned int v25 (unsigned char, signed int, signed short, signed int);
unsigned int (*v26) (unsigned char, signed int, signed short, signed int) = v25;
extern unsigned int v27 (signed short, signed short, signed short);
extern unsigned int (*v28) (signed short, signed short, signed short);
extern void v29 (signed char, unsigned int, signed char, signed short);
extern void (*v30) (signed char, unsigned int, signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v76 = 3;
signed char v75 = 2;
signed char v74 = 1;

unsigned int v25 (unsigned char v77, signed int v78, signed short v79, signed int v80)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
signed int v83 = 1;
signed int v82 = -1;
signed char v81 = -2;
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
signed char v86 = -3;
unsigned int v85 = 5U;
signed int v84 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (signed int v87, signed short v88)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
unsigned char v91 = 6;
signed char v90 = -3;
signed char v89 = 1;
trace++;
switch (trace)
{
case 2: 
return 3U;
case 4: 
return 7U;
case 6: 
{
signed short v92;
signed short v93;
signed short v94;
unsigned int v95;
v92 = v88 - -1;
v93 = v88 - -2;
v94 = v88 + v88;
v95 = v27 (v92, v93, v94);
history[history_index++] = (int)v95;
}
break;
case 8: 
{
signed short v96;
signed short v97;
signed short v98;
unsigned int v99;
v96 = -1 - -2;
v97 = -1 - v88;
v98 = v88 + v88;
v99 = v27 (v96, v97, v98);
history[history_index++] = (int)v99;
}
break;
case 10: 
{
signed short v100;
signed short v101;
signed short v102;
unsigned int v103;
v100 = 0 - 3;
v101 = -3 + v88;
v102 = -1 - -2;
v103 = v27 (v100, v101, v102);
history[history_index++] = (int)v103;
}
break;
case 12: 
return 7U;
default: abort ();
}
}
}
}

unsigned char v17 (signed int v104, signed short v105, signed short v106)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
unsigned char v109 = 6;
unsigned int v108 = 1U;
unsigned short v107 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (unsigned short v110, unsigned int v111)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
signed char v114 = -3;
signed int v113 = -1;
unsigned short v112 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (unsigned int v115)
{
history[history_index++] = (int)v115;
{
for (;;) {
unsigned int v118 = 1U;
unsigned int v117 = 5U;
signed int v116 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (signed short v119, unsigned char v120)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
unsigned char v123 = 1;
signed char v122 = -1;
signed short v121 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
