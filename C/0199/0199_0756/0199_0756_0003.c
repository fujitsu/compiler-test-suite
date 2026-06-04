#include <stdlib.h>
extern signed int v3 (signed int, signed char, unsigned int, signed char);
extern signed int (*v4) (signed int, signed char, unsigned int, signed char);
extern signed short v5 (unsigned short, signed short, signed char, unsigned int);
extern signed short (*v6) (unsigned short, signed short, signed char, unsigned int);
signed int v7 (unsigned char, unsigned short, unsigned int);
signed int (*v8) (unsigned char, unsigned short, unsigned int) = v7;
signed int v9 (void);
signed int (*v10) (void) = v9;
signed char v11 (signed int, signed short, signed char, unsigned char);
signed char (*v12) (signed int, signed short, signed char, unsigned char) = v11;
extern signed short v13 (signed char, signed int, signed char);
extern signed short (*v14) (signed char, signed int, signed char);
extern unsigned int v15 (signed char);
extern unsigned int (*v16) (signed char);
extern unsigned char v17 (unsigned int);
extern unsigned char (*v18) (unsigned int);
unsigned short v19 (unsigned short, unsigned char, signed int, signed char);
unsigned short (*v20) (unsigned short, unsigned char, signed int, signed char) = v19;
extern signed int v21 (signed short, unsigned char, unsigned char, unsigned short);
extern signed int (*v22) (signed short, unsigned char, unsigned char, unsigned short);
signed char v23 (signed int, unsigned int, unsigned char);
signed char (*v24) (signed int, unsigned int, unsigned char) = v23;
signed int v25 (unsigned short);
signed int (*v26) (unsigned short) = v25;
unsigned char v27 (void);
unsigned char (*v28) (void) = v27;
extern void v29 (signed short, unsigned int, unsigned short);
extern void (*v30) (signed short, unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v91 = 1U;
signed char v90 = 2;
unsigned short v89 = 4;

unsigned char v27 (void)
{
{
for (;;) {
signed short v94 = -1;
signed short v93 = 3;
unsigned short v92 = 4;
trace++;
switch (trace)
{
case 7: 
return 6;
case 9: 
return 4;
case 11: 
return 7;
default: abort ();
}
}
}
}

signed int v25 (unsigned short v95)
{
history[history_index++] = (int)v95;
{
for (;;) {
unsigned short v98 = 6;
unsigned char v97 = 2;
unsigned short v96 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v23 (signed int v99, unsigned int v100, unsigned char v101)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
signed char v104 = 2;
signed short v103 = 2;
unsigned int v102 = 4U;
trace++;
switch (trace)
{
case 1: 
return v104;
default: abort ();
}
}
}
}

unsigned short v19 (unsigned short v105, unsigned char v106, signed int v107, signed char v108)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed int v111 = -3;
unsigned int v110 = 4U;
signed char v109 = -2;
trace++;
switch (trace)
{
case 3: 
return v105;
default: abort ();
}
}
}
}

signed char v11 (signed int v112, signed short v113, signed char v114, unsigned char v115)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned short v118 = 1;
signed short v117 = 3;
signed int v116 = 0;
trace++;
switch (trace)
{
case 5: 
{
signed short v119;
unsigned char v120;
unsigned char v121;
unsigned short v122;
signed int v123;
v119 = v113 + v113;
v120 = v115 - 5;
v121 = 6 + v115;
v122 = v118 + 0;
v123 = v21 (v119, v120, v121, v122);
history[history_index++] = (int)v123;
}
break;
case 13: 
return v114;
default: abort ();
}
}
}
}

signed int v9 (void)
{
{
for (;;) {
signed int v126 = -3;
unsigned short v125 = 1;
unsigned int v124 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (unsigned char v127, unsigned short v128, unsigned int v129)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned short v132 = 1;
unsigned short v131 = 0;
unsigned char v130 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
