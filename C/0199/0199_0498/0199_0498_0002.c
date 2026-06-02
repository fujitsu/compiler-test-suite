#include <stdlib.h>
unsigned short v1 (unsigned char, unsigned char, signed int);
unsigned short (*v2) (unsigned char, unsigned char, signed int) = v1;
extern signed char v3 (unsigned short);
extern signed char (*v4) (unsigned short);
extern signed short v5 (signed short, signed short, unsigned int, unsigned char);
extern signed short (*v6) (signed short, signed short, unsigned int, unsigned char);
extern signed char v7 (signed short, signed short, signed char, signed char);
extern signed char (*v8) (signed short, signed short, signed char, signed char);
extern signed short v9 (unsigned char, signed char);
extern signed short (*v10) (unsigned char, signed char);
extern signed short v11 (signed int, signed short);
extern signed short (*v12) (signed int, signed short);
unsigned short v13 (signed short);
unsigned short (*v14) (signed short) = v13;
extern unsigned short v15 (signed int);
extern unsigned short (*v16) (signed int);
extern void v17 (unsigned char, unsigned short, unsigned char);
extern void (*v18) (unsigned char, unsigned short, unsigned char);
extern signed int v19 (signed char);
extern signed int (*v20) (signed char);
unsigned short v21 (unsigned short, signed short);
unsigned short (*v22) (unsigned short, signed short) = v21;
signed char v23 (unsigned short);
signed char (*v24) (unsigned short) = v23;
extern signed int v25 (signed char, unsigned char, unsigned short);
extern signed int (*v26) (signed char, unsigned char, unsigned short);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern unsigned int v29 (signed short, unsigned char);
extern unsigned int (*v30) (signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v99 = -4;
unsigned int v98 = 7U;
signed int v97 = -1;

signed char v23 (unsigned short v100)
{
history[history_index++] = (int)v100;
{
for (;;) {
unsigned int v103 = 3U;
signed short v102 = -1;
signed char v101 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (unsigned short v104, signed short v105)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned int v108 = 5U;
unsigned short v107 = 6;
unsigned int v106 = 3U;
trace++;
switch (trace)
{
case 2: 
return 0;
case 6: 
{
signed int v109;
signed short v110;
signed short v111;
v109 = -2 - -3;
v110 = v105 + 1;
v111 = v11 (v109, v110);
history[history_index++] = (int)v111;
}
break;
case 14: 
return v104;
default: abort ();
}
}
}
}

unsigned short v13 (signed short v112)
{
history[history_index++] = (int)v112;
{
for (;;) {
signed short v115 = 3;
signed char v114 = 1;
unsigned short v113 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (unsigned char v116, unsigned char v117, signed int v118)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
unsigned int v121 = 7U;
unsigned char v120 = 5;
unsigned char v119 = 6;
trace++;
switch (trace)
{
case 0: 
{
signed short v122;
signed short v123;
signed char v124;
signed char v125;
signed char v126;
v122 = 0 + -1;
v123 = 2 + 1;
v124 = -2 + -4;
v125 = -4 + 1;
v126 = v7 (v122, v123, v124, v125);
history[history_index++] = (int)v126;
}
break;
case 4: 
{
signed short v127;
signed short v128;
signed char v129;
signed char v130;
signed char v131;
v127 = -1 + 2;
v128 = -2 + -1;
v129 = 1 - -1;
v130 = 1 + -4;
v131 = v7 (v127, v128, v129, v130);
history[history_index++] = (int)v131;
}
break;
case 16: 
return 3;
default: abort ();
}
}
}
}
