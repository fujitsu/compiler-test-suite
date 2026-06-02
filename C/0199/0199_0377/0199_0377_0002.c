#include <stdlib.h>
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern unsigned int v5 (unsigned short, unsigned char, unsigned short, signed short);
extern unsigned int (*v6) (unsigned short, unsigned char, unsigned short, signed short);
extern signed short v7 (signed char, unsigned short);
extern signed short (*v8) (signed char, unsigned short);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern unsigned char v11 (unsigned char, unsigned int, unsigned char, unsigned int);
extern unsigned char (*v12) (unsigned char, unsigned int, unsigned char, unsigned int);
unsigned int v13 (unsigned short, signed char);
unsigned int (*v14) (unsigned short, signed char) = v13;
static unsigned short v15 (signed int, unsigned short, signed short);
static unsigned short (*v16) (signed int, unsigned short, signed short) = v15;
extern unsigned char v17 (signed int, unsigned char);
extern unsigned char (*v18) (signed int, unsigned char);
signed short v19 (signed short, signed int, unsigned int, signed int);
signed short (*v20) (signed short, signed int, unsigned int, signed int) = v19;
extern signed char v21 (unsigned short, signed int, unsigned char, signed short);
extern signed char (*v22) (unsigned short, signed int, unsigned char, signed short);
signed short v23 (signed short);
signed short (*v24) (signed short) = v23;
extern unsigned short v25 (signed int, unsigned char);
extern unsigned short (*v26) (signed int, unsigned char);
extern signed short v27 (signed int, signed int, signed short, signed char);
extern signed short (*v28) (signed int, signed int, signed short, signed char);
extern signed char v29 (signed int, signed int, signed short);
extern signed char (*v30) (signed int, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v91 = -1;
signed char v90 = -4;
unsigned char v89 = 6;

signed short v23 (signed short v92)
{
history[history_index++] = (int)v92;
{
for (;;) {
unsigned int v95 = 6U;
unsigned char v94 = 0;
signed int v93 = 2;
trace++;
switch (trace)
{
case 3: 
return -4;
default: abort ();
}
}
}
}

signed short v19 (signed short v96, signed int v97, unsigned int v98, signed int v99)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
unsigned char v102 = 0;
unsigned char v101 = 0;
unsigned char v100 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v15 (signed int v103, unsigned short v104, signed short v105)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed short v108 = -1;
signed char v107 = 1;
signed int v106 = 2;
trace++;
switch (trace)
{
case 6: 
{
signed int v109;
signed int v110;
signed short v111;
signed char v112;
signed short v113;
v109 = v103 + -3;
v110 = v106 - -1;
v111 = v108 - v105;
v112 = -3 - 3;
v113 = v27 (v109, v110, v111, v112);
history[history_index++] = (int)v113;
}
break;
case 8: 
{
signed int v114;
signed int v115;
signed short v116;
signed char v117;
signed short v118;
v114 = -4 - -3;
v115 = v106 - v103;
v116 = v105 - v105;
v117 = v107 + v107;
v118 = v27 (v114, v115, v116, v117);
history[history_index++] = (int)v118;
}
break;
case 10: 
{
signed int v119;
signed int v120;
signed short v121;
signed char v122;
v119 = v103 + v106;
v120 = v103 + v106;
v121 = v108 + -2;
v122 = v29 (v119, v120, v121);
history[history_index++] = (int)v122;
}
break;
case 12: 
return v104;
default: abort ();
}
}
}
}

unsigned int v13 (unsigned short v123, signed char v124)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
signed char v127 = 2;
unsigned short v126 = 7;
signed char v125 = 3;
trace++;
switch (trace)
{
case 5: 
{
signed int v128;
unsigned short v129;
signed short v130;
unsigned short v131;
v128 = -4 - -3;
v129 = 0 + v123;
v130 = -1 - -4;
v131 = v15 (v128, v129, v130);
history[history_index++] = (int)v131;
}
break;
case 13: 
return 3U;
default: abort ();
}
}
}
}
