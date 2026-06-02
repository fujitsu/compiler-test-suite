#include <stdlib.h>
unsigned int v1 (signed int, signed short);
unsigned int (*v2) (signed int, signed short) = v1;
extern signed char v3 (unsigned int, unsigned char, unsigned int);
extern signed char (*v4) (unsigned int, unsigned char, unsigned int);
extern unsigned int v5 (signed char, unsigned int, signed int);
extern unsigned int (*v6) (signed char, unsigned int, signed int);
unsigned int v7 (unsigned char, unsigned int, unsigned short, unsigned char);
unsigned int (*v8) (unsigned char, unsigned int, unsigned short, unsigned char) = v7;
extern signed short v9 (unsigned char, unsigned int, unsigned char);
extern signed short (*v10) (unsigned char, unsigned int, unsigned char);
extern signed char v11 (signed short, signed char, signed short);
extern signed char (*v12) (signed short, signed char, signed short);
static unsigned int v13 (unsigned int, signed char, unsigned short, unsigned char);
static unsigned int (*v14) (unsigned int, signed char, unsigned short, unsigned char) = v13;
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern signed int v17 (unsigned int, signed short, unsigned int);
extern signed int (*v18) (unsigned int, signed short, unsigned int);
extern signed int v19 (signed short, unsigned char, signed short);
extern signed int (*v20) (signed short, unsigned char, signed short);
extern signed short v21 (unsigned int, signed char);
extern signed short (*v22) (unsigned int, signed char);
unsigned int v23 (signed char, signed char);
unsigned int (*v24) (signed char, signed char) = v23;
void v25 (void);
void (*v26) (void) = v25;
extern signed int v27 (signed short, signed int);
extern signed int (*v28) (signed short, signed int);
extern signed short v29 (unsigned short);
extern signed short (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v89 = 1U;
unsigned char v88 = 6;
signed int v87 = 3;

void v25 (void)
{
{
for (;;) {
signed short v92 = 1;
signed short v91 = -3;
signed int v90 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v23 (signed char v93, signed char v94)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
signed int v97 = -3;
signed int v96 = -3;
unsigned short v95 = 5;
trace++;
switch (trace)
{
case 2: 
return 7U;
case 4: 
return 6U;
default: abort ();
}
}
}
}

static unsigned int v13 (unsigned int v98, signed char v99, unsigned short v100, unsigned char v101)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
unsigned char v104 = 3;
unsigned char v103 = 6;
unsigned short v102 = 7;
trace++;
switch (trace)
{
case 7: 
{
signed short v105;
unsigned char v106;
signed short v107;
signed int v108;
v105 = -3 - -3;
v106 = 4 + v101;
v107 = 0 + 0;
v108 = v19 (v105, v106, v107);
history[history_index++] = (int)v108;
}
break;
case 9: 
{
signed short v109;
unsigned char v110;
signed short v111;
signed int v112;
v109 = -1 - -4;
v110 = 4 + 4;
v111 = -2 - 1;
v112 = v19 (v109, v110, v111);
history[history_index++] = (int)v112;
}
break;
case 11: 
return 3U;
default: abort ();
}
}
}
}

unsigned int v7 (unsigned char v113, unsigned int v114, unsigned short v115, unsigned char v116)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
unsigned short v119 = 1;
signed char v118 = 2;
signed int v117 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (signed int v120, signed short v121)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned short v124 = 5;
signed short v123 = 0;
unsigned int v122 = 1U;
trace++;
switch (trace)
{
case 0: 
{
signed short v125;
signed char v126;
signed short v127;
signed char v128;
v125 = v121 + v121;
v126 = -2 - -1;
v127 = -3 - v123;
v128 = v11 (v125, v126, v127);
history[history_index++] = (int)v128;
}
break;
case 6: 
{
unsigned int v129;
signed char v130;
unsigned short v131;
unsigned char v132;
unsigned int v133;
v129 = 1U - 5U;
v130 = 3 + 3;
v131 = 0 + 6;
v132 = 6 + 0;
v133 = v13 (v129, v130, v131, v132);
history[history_index++] = (int)v133;
}
break;
case 12: 
return v122;
default: abort ();
}
}
}
}
