#include <stdlib.h>
unsigned char v1 (signed int, signed short, unsigned char, unsigned int);
unsigned char (*v2) (signed int, signed short, unsigned char, unsigned int) = v1;
extern unsigned short v3 (signed short, unsigned char, unsigned short, signed int);
extern unsigned short (*v4) (signed short, unsigned char, unsigned short, signed int);
extern unsigned int v5 (signed char, signed int, signed int);
extern unsigned int (*v6) (signed char, signed int, signed int);
extern signed char v7 (unsigned int, unsigned int);
extern signed char (*v8) (unsigned int, unsigned int);
extern signed char v9 (void);
extern signed char (*v10) (void);
signed short v11 (void);
signed short (*v12) (void) = v11;
unsigned short v13 (signed short, unsigned short, signed short);
unsigned short (*v14) (signed short, unsigned short, signed short) = v13;
extern signed int v15 (signed int, signed short);
extern signed int (*v16) (signed int, signed short);
extern signed int v17 (unsigned short, signed char, signed int, signed char);
extern signed int (*v18) (unsigned short, signed char, signed int, signed char);
unsigned short v19 (void);
unsigned short (*v20) (void) = v19;
extern signed char v21 (signed short, unsigned short, signed int, unsigned int);
extern signed char (*v22) (signed short, unsigned short, signed int, unsigned int);
extern void v23 (unsigned short, signed int, signed int, signed char);
extern void (*v24) (unsigned short, signed int, signed int, signed char);
extern signed char v25 (unsigned int, unsigned short);
extern signed char (*v26) (unsigned int, unsigned short);
extern signed short v27 (signed short);
extern signed short (*v28) (signed short);
extern void v29 (unsigned short, signed short, signed short);
extern void (*v30) (unsigned short, signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v94 = 6U;
signed char v93 = 0;
unsigned int v92 = 4U;

unsigned short v19 (void)
{
{
for (;;) {
signed short v97 = -4;
signed char v96 = -2;
signed char v95 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (signed short v98, unsigned short v99, signed short v100)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
unsigned short v103 = 1;
signed int v102 = -4;
signed short v101 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (void)
{
{
for (;;) {
unsigned short v106 = 3;
unsigned char v105 = 0;
signed char v104 = 0;
trace++;
switch (trace)
{
case 6: 
{
signed short v107;
signed short v108;
v107 = -3 - -4;
v108 = v27 (v107);
history[history_index++] = (int)v108;
}
break;
case 8: 
return 0;
default: abort ();
}
}
}
}

unsigned char v1 (signed int v109, signed short v110, unsigned char v111, unsigned int v112)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
signed char v115 = 2;
signed short v114 = 3;
signed short v113 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v116;
unsigned int v117;
signed char v118;
v116 = 1U + v112;
v117 = v112 - v112;
v118 = v7 (v116, v117);
history[history_index++] = (int)v118;
}
break;
case 2: 
{
unsigned short v119;
signed short v120;
signed short v121;
v119 = 2 - 2;
v120 = v110 + v113;
v121 = v110 - v110;
v29 (v119, v120, v121);
}
break;
case 4: 
{
signed short v122;
unsigned char v123;
unsigned short v124;
signed int v125;
unsigned short v126;
v122 = v110 - v113;
v123 = 7 - 3;
v124 = 1 + 6;
v125 = 2 - v109;
v126 = v3 (v122, v123, v124, v125);
history[history_index++] = (int)v126;
}
break;
case 10: 
{
signed short v127;
unsigned char v128;
unsigned short v129;
signed int v130;
unsigned short v131;
v127 = v114 + v113;
v128 = 4 - 7;
v129 = 7 - 5;
v130 = v109 - v109;
v131 = v3 (v127, v128, v129, v130);
history[history_index++] = (int)v131;
}
break;
case 12: 
return 7;
default: abort ();
}
}
}
}
