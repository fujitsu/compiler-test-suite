#include <stdlib.h>
extern signed char v1 (unsigned char, unsigned short, signed char, signed int);
extern signed char (*v2) (unsigned char, unsigned short, signed char, signed int);
extern unsigned short v3 (signed char, unsigned char, unsigned short, signed char);
extern unsigned short (*v4) (signed char, unsigned char, unsigned short, signed char);
void v5 (unsigned char, signed char);
void (*v6) (unsigned char, signed char) = v5;
extern unsigned char v7 (unsigned short);
extern unsigned char (*v8) (unsigned short);
unsigned short v9 (signed int);
unsigned short (*v10) (signed int) = v9;
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern void v13 (void);
extern void (*v14) (void);
signed char v15 (signed short, unsigned char);
signed char (*v16) (signed short, unsigned char) = v15;
extern unsigned short v17 (signed int, signed int, signed int, signed int);
extern unsigned short (*v18) (signed int, signed int, signed int, signed int);
unsigned short v19 (unsigned int, signed short, signed char, unsigned short);
unsigned short (*v20) (unsigned int, signed short, signed char, unsigned short) = v19;
extern signed int v21 (signed short);
extern signed int (*v22) (signed short);
extern signed int v23 (unsigned int, signed int, unsigned int);
extern signed int (*v24) (unsigned int, signed int, unsigned int);
unsigned int v25 (signed char, unsigned short);
unsigned int (*v26) (signed char, unsigned short) = v25;
extern unsigned char v27 (unsigned int, signed int, unsigned int);
extern unsigned char (*v28) (unsigned int, signed int, unsigned int);
unsigned char v29 (unsigned char);
unsigned char (*v30) (unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v75 = -4;
signed int v74 = -1;
signed short v73 = -4;

unsigned char v29 (unsigned char v76)
{
history[history_index++] = (int)v76;
{
for (;;) {
unsigned char v79 = 1;
signed char v78 = -1;
unsigned short v77 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v25 (signed char v80, unsigned short v81)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
signed char v84 = -4;
signed int v83 = 3;
unsigned int v82 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (unsigned int v85, signed short v86, signed char v87, unsigned short v88)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
signed short v91 = 1;
signed int v90 = 3;
signed int v89 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (signed short v92, unsigned char v93)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
signed int v96 = -3;
unsigned char v95 = 5;
signed short v94 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (signed int v97)
{
history[history_index++] = (int)v97;
{
for (;;) {
unsigned char v100 = 2;
signed int v99 = -2;
signed char v98 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (unsigned char v101, signed char v102)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
unsigned int v105 = 1U;
signed char v104 = -4;
unsigned int v103 = 3U;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v106;
signed int v107;
unsigned int v108;
signed int v109;
v106 = v103 + 7U;
v107 = 1 + -4;
v108 = v103 - v103;
v109 = v23 (v106, v107, v108);
history[history_index++] = (int)v109;
}
break;
case 3: 
{
signed int v110;
signed int v111;
signed int v112;
signed int v113;
unsigned short v114;
v110 = 2 - -2;
v111 = 3 + -4;
v112 = 0 - 2;
v113 = -2 - -1;
v114 = v17 (v110, v111, v112, v113);
history[history_index++] = (int)v114;
}
break;
case 5: 
{
unsigned int v115;
signed int v116;
unsigned int v117;
signed int v118;
v115 = v103 + v105;
v116 = 3 + -2;
v117 = 0U + 0U;
v118 = v23 (v115, v116, v117);
history[history_index++] = (int)v118;
}
break;
case 7: 
{
signed int v119;
signed int v120;
signed int v121;
signed int v122;
unsigned short v123;
v119 = -1 + 0;
v120 = 3 - 1;
v121 = -4 + 1;
v122 = 3 + -2;
v123 = v17 (v119, v120, v121, v122);
history[history_index++] = (int)v123;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}
