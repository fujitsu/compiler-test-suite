#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
unsigned short v5 (signed char, signed int, unsigned char);
unsigned short (*v6) (signed char, signed int, unsigned char) = v5;
extern unsigned char v7 (unsigned char);
extern unsigned char (*v8) (unsigned char);
extern signed char v9 (void);
extern signed char (*v10) (void);
static signed int v11 (void);
static signed int (*v12) (void) = v11;
unsigned short v13 (void);
unsigned short (*v14) (void) = v13;
signed short v15 (signed int, unsigned short, unsigned int);
signed short (*v16) (signed int, unsigned short, unsigned int) = v15;
extern signed short v17 (void);
extern signed short (*v18) (void);
extern signed char v19 (void);
extern signed char (*v20) (void);
static signed short v21 (signed char, signed int);
static signed short (*v22) (signed char, signed int) = v21;
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern signed short v25 (signed short);
extern signed short (*v26) (signed short);
extern signed int v27 (signed short);
extern signed int (*v28) (signed short);
extern signed short v29 (signed int, unsigned char, signed short, signed char);
extern signed short (*v30) (signed int, unsigned char, signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v85 = -2;
unsigned short v84 = 3;
signed char v83 = 0;

static signed short v21 (signed char v86, signed int v87)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
unsigned short v90 = 5;
unsigned char v89 = 6;
unsigned int v88 = 7U;
trace++;
switch (trace)
{
case 7: 
{
signed int v91;
unsigned short v92;
unsigned int v93;
signed short v94;
v91 = -3 + -1;
v92 = v90 - v90;
v93 = v88 - 5U;
v94 = v15 (v91, v92, v93);
history[history_index++] = (int)v94;
}
break;
case 9: 
{
signed int v95;
unsigned short v96;
unsigned int v97;
signed short v98;
v95 = v87 + v87;
v96 = v90 + 4;
v97 = 4U + 5U;
v98 = v15 (v95, v96, v97);
history[history_index++] = (int)v98;
}
break;
case 11: 
return -1;
case 13: 
return 2;
case 15: 
return 1;
default: abort ();
}
}
}
}

signed short v15 (signed int v99, unsigned short v100, unsigned int v101)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
signed int v104 = -4;
unsigned short v103 = 0;
unsigned char v102 = 2;
trace++;
switch (trace)
{
case 6: 
{
signed char v105;
signed int v106;
signed short v107;
v105 = 1 - -4;
v106 = v104 + 1;
v107 = v21 (v105, v106);
history[history_index++] = (int)v107;
}
break;
case 8: 
{
signed char v108;
signed int v109;
signed short v110;
v108 = 0 + 0;
v109 = v104 - v99;
v110 = v21 (v108, v109);
history[history_index++] = (int)v110;
}
break;
case 10: 
{
signed char v111;
signed int v112;
signed short v113;
v111 = -3 - -3;
v112 = -2 - v99;
v113 = v21 (v111, v112);
history[history_index++] = (int)v113;
}
break;
case 12: 
return 3;
case 14: 
return -3;
case 16: 
return 2;
default: abort ();
}
}
}
}

unsigned short v13 (void)
{
{
for (;;) {
signed short v116 = -4;
signed int v115 = 2;
signed char v114 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v11 (void)
{
{
for (;;) {
unsigned int v119 = 3U;
signed int v118 = -4;
signed int v117 = -2;
trace++;
switch (trace)
{
case 3: 
return 3;
default: abort ();
}
}
}
}

unsigned short v5 (signed char v120, signed int v121, unsigned char v122)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
unsigned short v125 = 4;
unsigned char v124 = 0;
signed int v123 = 0;
trace++;
switch (trace)
{
case 2: 
{
signed int v126;
v126 = v11 ();
history[history_index++] = (int)v126;
}
break;
case 4: 
{
signed char v127;
v127 = v9 ();
history[history_index++] = (int)v127;
}
break;
case 18: 
return 1;
default: abort ();
}
}
}
}
