#include <stdlib.h>
signed short v1 (signed int, unsigned short, signed char);
signed short (*v2) (signed int, unsigned short, signed char) = v1;
extern void v3 (signed int, signed char, signed char, unsigned char);
extern void (*v4) (signed int, signed char, signed char, unsigned char);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern signed short v7 (unsigned int, unsigned int, unsigned int);
extern signed short (*v8) (unsigned int, unsigned int, unsigned int);
extern unsigned int v9 (signed short);
extern unsigned int (*v10) (signed short);
extern unsigned int v11 (unsigned char);
extern unsigned int (*v12) (unsigned char);
extern signed int v13 (signed short);
extern signed int (*v14) (signed short);
extern void v15 (unsigned short, unsigned char, signed char);
extern void (*v16) (unsigned short, unsigned char, signed char);
extern unsigned int v17 (signed char, signed char, unsigned short);
extern unsigned int (*v18) (signed char, signed char, unsigned short);
extern unsigned char v19 (signed char, signed char, unsigned int, unsigned short);
extern unsigned char (*v20) (signed char, signed char, unsigned int, unsigned short);
static signed short v21 (unsigned char, signed char, unsigned char);
static signed short (*v22) (unsigned char, signed char, unsigned char) = v21;
extern unsigned int v23 (signed char, unsigned short);
extern unsigned int (*v24) (signed char, unsigned short);
extern signed int v25 (signed char, unsigned char);
extern signed int (*v26) (signed char, unsigned char);
unsigned char v27 (unsigned int, signed int, signed int, unsigned int);
unsigned char (*v28) (unsigned int, signed int, signed int, unsigned int) = v27;
extern unsigned short v29 (unsigned int, signed int, unsigned int);
extern unsigned short (*v30) (unsigned int, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v97 = 1;
unsigned short v96 = 1;
unsigned int v95 = 0U;

unsigned char v27 (unsigned int v98, signed int v99, signed int v100, unsigned int v101)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
signed int v104 = 3;
signed short v103 = -3;
signed short v102 = -1;
trace++;
switch (trace)
{
case 5: 
return 7;
default: abort ();
}
}
}
}

static signed short v21 (unsigned char v105, signed char v106, unsigned char v107)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
unsigned int v110 = 7U;
signed int v109 = -3;
unsigned short v108 = 6;
trace++;
switch (trace)
{
case 3: 
{
signed char v111;
signed char v112;
unsigned int v113;
unsigned short v114;
unsigned char v115;
v111 = -2 + v106;
v112 = v106 - v106;
v113 = v110 - 6U;
v114 = v108 + 1;
v115 = v19 (v111, v112, v113, v114);
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

signed short v1 (signed int v116, unsigned short v117, signed char v118)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
signed char v121 = 1;
signed int v120 = -1;
unsigned char v119 = 4;
trace++;
switch (trace)
{
case 0: 
{
signed short v122;
signed int v123;
v122 = -4 + -1;
v123 = v13 (v122);
history[history_index++] = (int)v123;
}
break;
case 2: 
{
unsigned char v124;
signed char v125;
unsigned char v126;
signed short v127;
v124 = v119 + v119;
v125 = v118 - -3;
v126 = v119 - v119;
v127 = v21 (v124, v125, v126);
history[history_index++] = (int)v127;
}
break;
case 14: 
return -1;
default: abort ();
}
}
}
}
