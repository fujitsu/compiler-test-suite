#include <stdlib.h>
extern unsigned short v1 (signed short, signed char, signed char);
extern unsigned short (*v2) (signed short, signed char, signed char);
extern signed short v3 (unsigned char, signed char);
extern signed short (*v4) (unsigned char, signed char);
extern signed int v5 (signed short);
extern signed int (*v6) (signed short);
signed char v9 (unsigned short, unsigned char);
signed char (*v10) (unsigned short, unsigned char) = v9;
signed int v11 (unsigned int, signed short, unsigned int, unsigned short);
signed int (*v12) (unsigned int, signed short, unsigned int, unsigned short) = v11;
extern unsigned short v13 (unsigned int);
extern unsigned short (*v14) (unsigned int);
extern unsigned char v15 (unsigned int, signed short);
extern unsigned char (*v16) (unsigned int, signed short);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern unsigned short v19 (signed int, signed char, signed int);
extern unsigned short (*v20) (signed int, signed char, signed int);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern signed char v23 (unsigned short, unsigned short);
extern signed char (*v24) (unsigned short, unsigned short);
extern unsigned char v25 (unsigned char, signed char);
extern unsigned char (*v26) (unsigned char, signed char);
unsigned int v27 (unsigned char, unsigned short, signed short);
unsigned int (*v28) (unsigned char, unsigned short, signed short) = v27;
extern unsigned short v29 (unsigned int);
extern unsigned short (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v95 = -3;
unsigned char v94 = 3;
unsigned int v93 = 2U;

unsigned int v27 (unsigned char v96, unsigned short v97, signed short v98)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
unsigned short v101 = 2;
signed int v100 = -2;
unsigned short v99 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (unsigned int v102, signed short v103, unsigned int v104, unsigned short v105)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed short v108 = -4;
unsigned short v107 = 0;
unsigned char v106 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (unsigned short v109, unsigned char v110)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
unsigned int v113 = 0U;
unsigned short v112 = 6;
signed int v111 = -4;
trace++;
switch (trace)
{
case 4: 
{
unsigned int v114;
signed short v115;
unsigned char v116;
v114 = v113 - v113;
v115 = -3 - 1;
v116 = v15 (v114, v115);
history[history_index++] = (int)v116;
}
break;
case 6: 
{
signed int v117;
signed char v118;
signed int v119;
unsigned short v120;
v117 = v111 + 2;
v118 = 3 + -2;
v119 = v111 + -3;
v120 = v19 (v117, v118, v119);
history[history_index++] = (int)v120;
}
break;
case 8: 
{
unsigned int v121;
signed short v122;
unsigned char v123;
v121 = 0U - v113;
v122 = 0 + -1;
v123 = v15 (v121, v122);
history[history_index++] = (int)v123;
}
break;
case 10: 
{
signed int v124;
signed char v125;
signed int v126;
unsigned short v127;
v124 = v111 + v111;
v125 = 0 + -2;
v126 = v111 + v111;
v127 = v19 (v124, v125, v126);
history[history_index++] = (int)v127;
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}
