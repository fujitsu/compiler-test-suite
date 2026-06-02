#include <stdlib.h>
extern void v1 (signed short, signed short);
extern void (*v2) (signed short, signed short);
unsigned char v3 (signed int);
unsigned char (*v4) (signed int) = v3;
extern unsigned short v5 (unsigned int, unsigned int);
extern unsigned short (*v6) (unsigned int, unsigned int);
extern signed int v7 (signed short, signed short, signed char, unsigned int);
extern signed int (*v8) (signed short, signed short, signed char, unsigned int);
extern signed int v9 (unsigned int, signed short, unsigned int);
extern signed int (*v10) (unsigned int, signed short, unsigned int);
extern unsigned short v11 (signed char, signed short, unsigned int, signed int);
extern unsigned short (*v12) (signed char, signed short, unsigned int, signed int);
extern unsigned int v13 (unsigned char, signed short, signed char);
extern unsigned int (*v14) (unsigned char, signed short, signed char);
extern signed char v15 (signed char);
extern signed char (*v16) (signed char);
extern signed int v17 (unsigned int, signed short, signed char);
extern signed int (*v18) (unsigned int, signed short, signed char);
signed char v19 (unsigned int, signed int);
signed char (*v20) (unsigned int, signed int) = v19;
extern signed int v21 (void);
extern signed int (*v22) (void);
extern signed short v23 (unsigned char, signed int, signed int, unsigned int);
extern signed short (*v24) (unsigned char, signed int, signed int, unsigned int);
extern signed short v25 (signed char, unsigned short);
extern signed short (*v26) (signed char, unsigned short);
extern unsigned short v27 (unsigned short, signed char, unsigned char);
extern unsigned short (*v28) (unsigned short, signed char, unsigned char);
signed char v29 (signed int, signed int, signed char, signed char);
signed char (*v30) (signed int, signed int, signed char, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v92 = -3;
signed int v91 = -3;
unsigned char v90 = 7;

signed char v29 (signed int v93, signed int v94, signed char v95, signed char v96)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
unsigned short v99 = 0;
unsigned short v98 = 6;
unsigned char v97 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (unsigned int v100, signed int v101)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
unsigned short v104 = 6;
unsigned char v103 = 3;
unsigned int v102 = 1U;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v105;
signed int v106;
signed int v107;
unsigned int v108;
signed short v109;
v105 = v103 - v103;
v106 = v101 - v101;
v107 = -2 + -4;
v108 = v100 + v100;
v109 = v23 (v105, v106, v107, v108);
history[history_index++] = (int)v109;
}
break;
case 3: 
{
unsigned char v110;
signed int v111;
signed int v112;
unsigned int v113;
signed short v114;
v110 = 3 - v103;
v111 = v101 - -4;
v112 = v101 - v101;
v113 = 1U - v100;
v114 = v23 (v110, v111, v112, v113);
history[history_index++] = (int)v114;
}
break;
case 5: 
{
unsigned char v115;
signed int v116;
signed int v117;
unsigned int v118;
signed short v119;
v115 = 1 - 7;
v116 = -1 + -2;
v117 = -2 - -2;
v118 = v100 + 0U;
v119 = v23 (v115, v116, v117, v118);
history[history_index++] = (int)v119;
}
break;
case 7: 
{
unsigned char v120;
signed int v121;
signed int v122;
unsigned int v123;
signed short v124;
v120 = v103 - v103;
v121 = v101 - 1;
v122 = v101 + v101;
v123 = 5U - 7U;
v124 = v23 (v120, v121, v122, v123);
history[history_index++] = (int)v124;
}
break;
case 9: 
{
unsigned char v125;
signed int v126;
signed int v127;
unsigned int v128;
signed short v129;
v125 = v103 - 7;
v126 = v101 - v101;
v127 = 0 - v101;
v128 = v100 + v100;
v129 = v23 (v125, v126, v127, v128);
history[history_index++] = (int)v129;
}
break;
case 11: 
return 1;
default: abort ();
}
}
}
}

unsigned char v3 (signed int v130)
{
history[history_index++] = (int)v130;
{
for (;;) {
unsigned short v133 = 6;
unsigned int v132 = 6U;
signed char v131 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
