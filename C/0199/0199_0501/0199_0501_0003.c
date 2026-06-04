#include <stdlib.h>
extern signed short v1 (signed char);
extern signed short (*v2) (signed char);
unsigned int v3 (unsigned int, signed char, unsigned int, unsigned short);
unsigned int (*v4) (unsigned int, signed char, unsigned int, unsigned short) = v3;
extern unsigned char v5 (signed short);
extern unsigned char (*v6) (signed short);
extern signed short v7 (signed char, unsigned short, signed int);
extern signed short (*v8) (signed char, unsigned short, signed int);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed char v11 (unsigned char, signed char, unsigned int, signed int);
extern signed char (*v12) (unsigned char, signed char, unsigned int, signed int);
unsigned int v13 (signed char, signed short);
unsigned int (*v14) (signed char, signed short) = v13;
extern unsigned int v15 (unsigned short, signed short);
extern unsigned int (*v16) (unsigned short, signed short);
extern unsigned char v17 (unsigned short, unsigned short, signed char);
extern unsigned char (*v18) (unsigned short, unsigned short, signed char);
extern unsigned short v19 (signed int, unsigned short);
extern unsigned short (*v20) (signed int, unsigned short);
extern void v21 (signed char);
extern void (*v22) (signed char);
signed char v23 (signed int, unsigned short, unsigned char, signed char);
signed char (*v24) (signed int, unsigned short, unsigned char, signed char) = v23;
extern signed short v25 (unsigned short, unsigned int, unsigned char, signed char);
extern signed short (*v26) (unsigned short, unsigned int, unsigned char, signed char);
static signed int v27 (unsigned int, signed int, unsigned int, signed short);
static signed int (*v28) (unsigned int, signed int, unsigned int, signed short) = v27;
extern unsigned short v29 (signed short);
extern unsigned short (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v94 = 3;
signed char v93 = -3;
signed int v92 = 0;

static signed int v27 (unsigned int v95, signed int v96, unsigned int v97, signed short v98)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
unsigned int v101 = 5U;
unsigned int v100 = 1U;
signed char v99 = 3;
trace++;
switch (trace)
{
case 6: 
return v96;
case 10: 
{
signed char v102;
unsigned short v103;
signed int v104;
signed short v105;
v102 = 2 - 2;
v103 = 1 - 2;
v104 = 1 - v96;
v105 = v7 (v102, v103, v104);
history[history_index++] = (int)v105;
}
break;
case 12: 
return -4;
default: abort ();
}
}
}
}

signed char v23 (signed int v106, unsigned short v107, unsigned char v108, signed char v109)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned short v112 = 7;
unsigned int v111 = 6U;
unsigned int v110 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (signed char v113, signed short v114)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
signed int v117 = -1;
unsigned short v116 = 5;
signed short v115 = -3;
trace++;
switch (trace)
{
case 3: 
{
signed char v118;
v118 = -1 + 0;
v21 (v118);
}
break;
case 5: 
{
unsigned int v119;
signed int v120;
unsigned int v121;
signed short v122;
signed int v123;
v119 = 7U + 1U;
v120 = -4 + -4;
v121 = 7U + 7U;
v122 = v115 - 0;
v123 = v27 (v119, v120, v121, v122);
history[history_index++] = (int)v123;
}
break;
case 7: 
{
signed char v124;
v124 = -4 + 3;
v21 (v124);
}
break;
case 9: 
{
unsigned int v125;
signed int v126;
unsigned int v127;
signed short v128;
signed int v129;
v125 = 0U + 1U;
v126 = -3 + 2;
v127 = 4U - 7U;
v128 = v115 + v114;
v129 = v27 (v125, v126, v127, v128);
history[history_index++] = (int)v129;
}
break;
case 13: 
return 6U;
case 15: 
return 0U;
default: abort ();
}
}
}
}

unsigned int v3 (unsigned int v130, signed char v131, unsigned int v132, unsigned short v133)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
signed char v136 = -1;
unsigned short v135 = 3;
signed int v134 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
