#include <stdlib.h>
extern unsigned int v1 (signed char);
extern unsigned int (*v2) (signed char);
extern unsigned short v3 (signed short, signed short, unsigned char, signed short);
extern unsigned short (*v4) (signed short, signed short, unsigned char, signed short);
extern unsigned short v5 (unsigned char, unsigned int, unsigned int, unsigned short);
extern unsigned short (*v6) (unsigned char, unsigned int, unsigned int, unsigned short);
extern void v7 (unsigned short, unsigned short);
extern void (*v8) (unsigned short, unsigned short);
unsigned char v9 (signed int, signed short);
unsigned char (*v10) (signed int, signed short) = v9;
extern signed int v11 (void);
extern signed int (*v12) (void);
unsigned char v13 (void);
unsigned char (*v14) (void) = v13;
extern unsigned int v15 (unsigned int, signed short, signed char, unsigned int);
extern unsigned int (*v16) (unsigned int, signed short, signed char, unsigned int);
unsigned short v17 (signed char, signed char, signed short);
unsigned short (*v18) (signed char, signed char, signed short) = v17;
signed short v19 (unsigned char);
signed short (*v20) (unsigned char) = v19;
unsigned int v21 (signed int, signed char, signed int, unsigned short);
unsigned int (*v22) (signed int, signed char, signed int, unsigned short) = v21;
extern unsigned short v23 (signed short, signed int, unsigned char, unsigned char);
extern unsigned short (*v24) (signed short, signed int, unsigned char, unsigned char);
extern unsigned short v25 (unsigned char, signed int, unsigned short);
extern unsigned short (*v26) (unsigned char, signed int, unsigned short);
extern unsigned short v27 (unsigned int);
extern unsigned short (*v28) (unsigned int);
extern unsigned short v29 (signed int, unsigned char);
extern unsigned short (*v30) (signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v79 = -1;
signed int v78 = 3;
signed int v77 = 1;

unsigned int v21 (signed int v80, signed char v81, signed int v82, unsigned short v83)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
signed int v86 = -3;
unsigned char v85 = 6;
unsigned char v84 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (unsigned char v87)
{
history[history_index++] = (int)v87;
{
for (;;) {
unsigned short v90 = 4;
unsigned int v89 = 6U;
unsigned char v88 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (signed char v91, signed char v92, signed short v93)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
signed int v96 = -4;
unsigned char v95 = 1;
signed short v94 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (void)
{
{
for (;;) {
unsigned char v99 = 3;
unsigned int v98 = 7U;
signed short v97 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (signed int v100, signed short v101)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
unsigned char v104 = 6;
signed int v103 = -3;
signed int v102 = -1;
trace++;
switch (trace)
{
case 1: 
{
signed int v105;
unsigned char v106;
unsigned short v107;
v105 = -1 - v100;
v106 = v104 + 7;
v107 = v29 (v105, v106);
history[history_index++] = (int)v107;
}
break;
case 3: 
{
signed int v108;
unsigned char v109;
unsigned short v110;
v108 = 0 + v102;
v109 = v104 - 7;
v110 = v29 (v108, v109);
history[history_index++] = (int)v110;
}
break;
case 5: 
{
signed int v111;
unsigned char v112;
unsigned short v113;
v111 = -3 - v102;
v112 = 4 - v104;
v113 = v29 (v111, v112);
history[history_index++] = (int)v113;
}
break;
case 7: 
{
signed int v114;
unsigned char v115;
unsigned short v116;
v114 = v102 + v103;
v115 = 3 - v104;
v116 = v29 (v114, v115);
history[history_index++] = (int)v116;
}
break;
case 9: 
{
signed int v117;
unsigned char v118;
unsigned short v119;
v117 = v103 + v103;
v118 = 4 + v104;
v119 = v29 (v117, v118);
history[history_index++] = (int)v119;
}
break;
case 11: 
return v104;
default: abort ();
}
}
}
}
