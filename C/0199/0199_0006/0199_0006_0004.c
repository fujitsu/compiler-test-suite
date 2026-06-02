#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern signed short v3 (unsigned int, signed int);
extern signed short (*v4) (unsigned int, signed int);
unsigned short v5 (unsigned short, signed char);
unsigned short (*v6) (unsigned short, signed char) = v5;
signed int v7 (unsigned int, unsigned int);
signed int (*v8) (unsigned int, unsigned int) = v7;
extern unsigned short v9 (signed short);
extern unsigned short (*v10) (signed short);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
unsigned short v13 (unsigned short);
unsigned short (*v14) (unsigned short) = v13;
extern void v15 (signed char, unsigned int);
extern void (*v16) (signed char, unsigned int);
signed short v17 (void);
signed short (*v18) (void) = v17;
extern signed char v19 (unsigned short, signed int, signed short);
extern signed char (*v20) (unsigned short, signed int, signed short);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern void v23 (signed char, signed int, signed short, signed int);
extern void (*v24) (signed char, signed int, signed short, signed int);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
unsigned int v27 (signed short);
unsigned int (*v28) (signed short) = v27;
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v95 = 5;
unsigned char v94 = 2;
signed char v93 = 3;

unsigned int v27 (signed short v96)
{
history[history_index++] = (int)v96;
{
for (;;) {
signed char v99 = 1;
signed int v98 = -2;
unsigned int v97 = 1U;
trace++;
switch (trace)
{
case 11: 
return 7U;
default: abort ();
}
}
}
}

signed short v17 (void)
{
{
for (;;) {
signed short v102 = -1;
signed char v101 = -4;
unsigned char v100 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (unsigned short v103)
{
history[history_index++] = (int)v103;
{
for (;;) {
signed int v106 = -4;
unsigned char v105 = 3;
signed short v104 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (unsigned int v107, unsigned int v108)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed int v111 = -1;
signed int v110 = -3;
unsigned short v109 = 3;
trace++;
switch (trace)
{
case 1: 
{
signed char v112;
unsigned int v113;
v112 = 2 - -2;
v113 = v107 + v107;
v15 (v112, v113);
}
break;
case 3: 
{
signed char v114;
unsigned int v115;
v114 = 1 - -4;
v115 = v107 + 7U;
v15 (v114, v115);
}
break;
case 5: 
{
signed char v116;
unsigned int v117;
v116 = 3 - -3;
v117 = v108 - v107;
v15 (v116, v117);
}
break;
case 7: 
{
signed char v118;
unsigned int v119;
v118 = 3 + -1;
v119 = 3U + v108;
v15 (v118, v119);
}
break;
case 9: 
{
signed char v120;
signed int v121;
signed short v122;
signed int v123;
v120 = -2 - 0;
v121 = v110 - v111;
v122 = -2 - -1;
v123 = v110 - v110;
v23 (v120, v121, v122, v123);
}
break;
case 13: 
return v111;
default: abort ();
}
}
}
}

unsigned short v5 (unsigned short v124, signed char v125)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
unsigned short v128 = 1;
unsigned char v127 = 7;
unsigned char v126 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
