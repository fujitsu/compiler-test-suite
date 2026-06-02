#include <stdlib.h>
extern unsigned int v3 (unsigned short);
extern unsigned int (*v4) (unsigned short);
extern signed int v5 (unsigned int, unsigned char, signed short);
extern signed int (*v6) (unsigned int, unsigned char, signed short);
unsigned short v7 (void);
unsigned short (*v8) (void) = v7;
extern unsigned short v9 (unsigned short, signed short);
extern unsigned short (*v10) (unsigned short, signed short);
signed int v11 (void);
signed int (*v12) (void) = v11;
unsigned int v13 (void);
unsigned int (*v14) (void) = v13;
extern unsigned char v15 (unsigned short, unsigned int, signed short);
extern unsigned char (*v16) (unsigned short, unsigned int, signed short);
extern signed short v17 (signed int, unsigned short, signed char, unsigned int);
extern signed short (*v18) (signed int, unsigned short, signed char, unsigned int);
extern unsigned char v19 (unsigned char, signed int);
extern unsigned char (*v20) (unsigned char, signed int);
extern signed int v21 (signed int);
extern signed int (*v22) (signed int);
signed char v23 (signed char);
signed char (*v24) (signed char) = v23;
unsigned int v25 (signed int, signed int);
unsigned int (*v26) (signed int, signed int) = v25;
extern unsigned short v27 (unsigned char, unsigned int, signed char);
extern unsigned short (*v28) (unsigned char, unsigned int, signed char);
extern signed short v29 (signed int, signed short, signed int);
extern signed short (*v30) (signed int, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v97 = 1;
signed char v96 = 3;
signed int v95 = -4;

unsigned int v25 (signed int v98, signed int v99)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
unsigned short v102 = 6;
unsigned char v101 = 7;
signed short v100 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v23 (signed char v103)
{
history[history_index++] = (int)v103;
{
for (;;) {
unsigned int v106 = 4U;
unsigned int v105 = 0U;
unsigned char v104 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (void)
{
{
for (;;) {
unsigned int v109 = 7U;
unsigned short v108 = 5;
signed char v107 = -4;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v110;
unsigned int v111;
signed short v112;
unsigned char v113;
v110 = v108 - v108;
v111 = 2U + 5U;
v112 = -2 + -4;
v113 = v15 (v110, v111, v112);
history[history_index++] = (int)v113;
}
break;
case 3: 
{
unsigned short v114;
unsigned int v115;
signed short v116;
unsigned char v117;
v114 = v108 - v108;
v115 = v109 + 3U;
v116 = -3 + -3;
v117 = v15 (v114, v115, v116);
history[history_index++] = (int)v117;
}
break;
case 5: 
{
unsigned short v118;
unsigned int v119;
signed short v120;
unsigned char v121;
v118 = 7 + v108;
v119 = v109 + v109;
v120 = 3 + 3;
v121 = v15 (v118, v119, v120);
history[history_index++] = (int)v121;
}
break;
case 7: 
{
unsigned short v122;
unsigned int v123;
signed short v124;
unsigned char v125;
v122 = 4 - v108;
v123 = 6U + v109;
v124 = 3 + 0;
v125 = v15 (v122, v123, v124);
history[history_index++] = (int)v125;
}
break;
case 9: 
return 5U;
default: abort ();
}
}
}
}

signed int v11 (void)
{
{
for (;;) {
unsigned int v128 = 2U;
signed char v127 = 2;
signed int v126 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (void)
{
{
for (;;) {
unsigned char v131 = 5;
signed short v130 = -2;
signed char v129 = 0;
trace++;
switch (trace)
{
case 11: 
return 1;
default: abort ();
}
}
}
}
