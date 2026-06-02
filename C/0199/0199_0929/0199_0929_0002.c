#include <stdlib.h>
extern signed char v1 (signed short, signed char, unsigned short, signed short);
extern signed char (*v2) (signed short, signed char, unsigned short, signed short);
signed int v3 (signed int, signed short);
signed int (*v4) (signed int, signed short) = v3;
extern signed short v5 (unsigned int, signed int, signed char, unsigned int);
extern signed short (*v6) (unsigned int, signed int, signed char, unsigned int);
unsigned char v7 (unsigned char, signed int, signed char);
unsigned char (*v8) (unsigned char, signed int, signed char) = v7;
extern unsigned int v9 (signed int, signed int);
extern unsigned int (*v10) (signed int, signed int);
unsigned int v11 (unsigned short, signed short);
unsigned int (*v12) (unsigned short, signed short) = v11;
extern signed char v13 (signed int, signed short, unsigned char);
extern signed char (*v14) (signed int, signed short, unsigned char);
extern signed int v15 (unsigned int, signed int, signed int);
extern signed int (*v16) (unsigned int, signed int, signed int);
extern signed short v17 (signed int, unsigned char, unsigned int, unsigned char);
extern signed short (*v18) (signed int, unsigned char, unsigned int, unsigned char);
extern void v19 (signed char, signed char, unsigned int, signed int);
extern void (*v20) (signed char, signed char, unsigned int, signed int);
signed char v21 (signed int, signed int, signed int, signed short);
signed char (*v22) (signed int, signed int, signed int, signed short) = v21;
extern void v23 (unsigned short, signed short, unsigned short);
extern void (*v24) (unsigned short, signed short, unsigned short);
unsigned char v25 (signed int, signed short, signed char, signed char);
unsigned char (*v26) (signed int, signed short, signed char, signed char) = v25;
extern unsigned short v27 (signed short, signed int, signed char);
extern unsigned short (*v28) (signed short, signed int, signed char);
extern void v29 (signed short, signed int, unsigned char);
extern void (*v30) (signed short, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v75 = 1;
signed int v74 = 2;
signed char v73 = 1;

unsigned char v25 (signed int v76, signed short v77, signed char v78, signed char v79)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned char v82 = 5;
signed char v81 = 1;
signed int v80 = -4;
trace++;
switch (trace)
{
case 10: 
return v82;
default: abort ();
}
}
}
}

signed char v21 (signed int v83, signed int v84, signed int v85, signed short v86)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
unsigned short v89 = 7;
signed short v88 = -3;
unsigned char v87 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (unsigned short v90, signed short v91)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
unsigned char v94 = 2;
signed int v93 = -3;
unsigned char v92 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned char v95, signed int v96, signed char v97)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed int v100 = -4;
signed int v99 = -3;
unsigned short v98 = 2;
trace++;
switch (trace)
{
case 1: 
{
signed short v101;
signed int v102;
signed char v103;
unsigned short v104;
v101 = -3 - 2;
v102 = v100 + v99;
v103 = v97 + v97;
v104 = v27 (v101, v102, v103);
history[history_index++] = (int)v104;
}
break;
case 3: 
{
signed int v105;
signed short v106;
unsigned char v107;
signed char v108;
v105 = -3 - v100;
v106 = -2 - -1;
v107 = 6 - 5;
v108 = v13 (v105, v106, v107);
history[history_index++] = (int)v108;
}
break;
case 5: 
{
signed short v109;
signed int v110;
signed char v111;
unsigned short v112;
v109 = 2 - 1;
v110 = 3 - v100;
v111 = v97 - -4;
v112 = v27 (v109, v110, v111);
history[history_index++] = (int)v112;
}
break;
case 7: 
{
signed int v113;
signed int v114;
unsigned int v115;
v113 = v99 - v100;
v114 = v99 + v100;
v115 = v9 (v113, v114);
history[history_index++] = (int)v115;
}
break;
case 13: 
return 3;
default: abort ();
}
}
}
}

signed int v3 (signed int v116, signed short v117)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
signed char v120 = -2;
unsigned char v119 = 0;
unsigned short v118 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
