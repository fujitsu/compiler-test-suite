#include <stdlib.h>
unsigned short v1 (unsigned short, unsigned short, unsigned int);
unsigned short (*v2) (unsigned short, unsigned short, unsigned int) = v1;
extern signed int v3 (signed int);
extern signed int (*v4) (signed int);
extern unsigned char v5 (unsigned int);
extern unsigned char (*v6) (unsigned int);
signed short v7 (signed int);
signed short (*v8) (signed int) = v7;
extern void v9 (void);
extern void (*v10) (void);
extern void v11 (unsigned int, signed char);
extern void (*v12) (unsigned int, signed char);
extern signed char v13 (signed short, unsigned short, signed int);
extern signed char (*v14) (signed short, unsigned short, signed int);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed short v17 (signed char);
extern signed short (*v18) (signed char);
extern signed int v19 (signed int, signed int, signed int, signed int);
extern signed int (*v20) (signed int, signed int, signed int, signed int);
extern signed char v21 (unsigned short, unsigned char, unsigned char);
extern signed char (*v22) (unsigned short, unsigned char, unsigned char);
void v23 (signed short, unsigned char);
void (*v24) (signed short, unsigned char) = v23;
unsigned short v25 (signed char);
unsigned short (*v26) (signed char) = v25;
static signed int v27 (unsigned int, signed short);
static signed int (*v28) (unsigned int, signed short) = v27;
extern signed short v29 (signed int);
extern signed short (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v97 = 5;
unsigned short v96 = 5;
unsigned int v95 = 5U;

static signed int v27 (unsigned int v98, signed short v99)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
signed short v102 = -2;
unsigned int v101 = 5U;
signed char v100 = 1;
trace++;
switch (trace)
{
case 5: 
{
unsigned int v103;
signed short v104;
signed int v105;
v103 = v98 - v98;
v104 = v99 - -3;
v105 = v27 (v103, v104);
history[history_index++] = (int)v105;
}
break;
case 6: 
{
unsigned int v106;
signed short v107;
signed int v108;
v106 = v98 + 7U;
v107 = v102 + v99;
v108 = v27 (v106, v107);
history[history_index++] = (int)v108;
}
break;
case 7: 
{
unsigned int v109;
signed short v110;
signed int v111;
v109 = 4U - v101;
v110 = v102 + v102;
v111 = v27 (v109, v110);
history[history_index++] = (int)v111;
}
break;
case 8: 
{
unsigned int v112;
signed short v113;
signed int v114;
v112 = v101 + v98;
v113 = v99 + v99;
v114 = v27 (v112, v113);
history[history_index++] = (int)v114;
}
break;
case 9: 
return 2;
case 10: 
{
unsigned int v115;
signed short v116;
signed int v117;
v115 = 5U + v101;
v116 = 0 + -2;
v117 = v27 (v115, v116);
history[history_index++] = (int)v117;
}
break;
case 11: 
return -2;
case 12: 
return 2;
case 13: 
return 0;
case 14: 
return -1;
case 15: 
return -4;
default: abort ();
}
}
}
}

unsigned short v25 (signed char v118)
{
history[history_index++] = (int)v118;
{
for (;;) {
unsigned int v121 = 7U;
signed char v120 = 2;
signed int v119 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v23 (signed short v122, unsigned char v123)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
unsigned short v126 = 5;
signed char v125 = -1;
unsigned short v124 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (signed int v127)
{
history[history_index++] = (int)v127;
{
for (;;) {
signed int v130 = 0;
signed short v129 = -1;
signed int v128 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (unsigned short v131, unsigned short v132, unsigned int v133)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
unsigned char v136 = 5;
signed int v135 = 3;
unsigned char v134 = 7;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v137;
unsigned char v138;
v137 = 1U - v133;
v138 = v5 (v137);
history[history_index++] = (int)v138;
}
break;
case 2: 
{
signed char v139;
signed short v140;
v139 = -3 + -1;
v140 = v17 (v139);
history[history_index++] = (int)v140;
}
break;
case 4: 
{
unsigned int v141;
signed short v142;
signed int v143;
v141 = 2U + 2U;
v142 = 2 - -3;
v143 = v27 (v141, v142);
history[history_index++] = (int)v143;
}
break;
case 16: 
return v132;
default: abort ();
}
}
}
}
