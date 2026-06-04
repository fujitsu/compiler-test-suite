#include <stdlib.h>
signed char v1 (unsigned char, unsigned char);
signed char (*v2) (unsigned char, unsigned char) = v1;
extern unsigned char v3 (signed char, signed short, unsigned short);
extern unsigned char (*v4) (signed char, signed short, unsigned short);
unsigned char v5 (unsigned int, unsigned char, signed char, signed short);
unsigned char (*v6) (unsigned int, unsigned char, signed char, signed short) = v5;
signed int v7 (void);
signed int (*v8) (void) = v7;
extern unsigned int v9 (signed char);
extern unsigned int (*v10) (signed char);
extern signed int v11 (signed short, signed char);
extern signed int (*v12) (signed short, signed char);
extern signed short v13 (signed int);
extern signed short (*v14) (signed int);
extern unsigned short v15 (unsigned short);
extern unsigned short (*v16) (unsigned short);
static unsigned short v17 (signed short, signed char, unsigned char);
static unsigned short (*v18) (signed short, signed char, unsigned char) = v17;
static signed int v19 (signed char, unsigned short, signed char);
static signed int (*v20) (signed char, unsigned short, signed char) = v19;
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
static unsigned char v23 (signed int, unsigned char);
static unsigned char (*v24) (signed int, unsigned char) = v23;
extern void v25 (signed char, unsigned char, signed char, unsigned int);
extern void (*v26) (signed char, unsigned char, signed char, unsigned int);
signed int v27 (signed short, signed short, signed char, unsigned char);
signed int (*v28) (signed short, signed short, signed char, unsigned char) = v27;
extern unsigned char v29 (signed char, unsigned int, signed char, unsigned int);
extern unsigned char (*v30) (signed char, unsigned int, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v90 = -4;
unsigned short v89 = 2;
signed char v88 = -4;

signed int v27 (signed short v91, signed short v92, signed char v93, unsigned char v94)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
signed char v97 = -4;
unsigned char v96 = 0;
signed int v95 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v23 (signed int v98, unsigned char v99)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
signed int v102 = 2;
signed short v101 = -4;
signed int v100 = -3;
trace++;
switch (trace)
{
case 8: 
{
signed char v103;
signed short v104;
unsigned short v105;
unsigned char v106;
v103 = 2 + -4;
v104 = v101 - v101;
v105 = 7 - 2;
v106 = v3 (v103, v104, v105);
history[history_index++] = (int)v106;
}
break;
case 10: 
{
signed char v107;
signed short v108;
unsigned short v109;
unsigned char v110;
v107 = -3 + 2;
v108 = 0 - -2;
v109 = 7 + 6;
v110 = v3 (v107, v108, v109);
history[history_index++] = (int)v110;
}
break;
case 12: 
return v99;
default: abort ();
}
}
}
}

static signed int v19 (signed char v111, unsigned short v112, signed char v113)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
unsigned int v116 = 4U;
signed char v115 = 1;
signed int v114 = 2;
trace++;
switch (trace)
{
case 7: 
{
signed int v117;
unsigned char v118;
unsigned char v119;
v117 = v114 + v114;
v118 = 3 - 3;
v119 = v23 (v117, v118);
history[history_index++] = (int)v119;
}
break;
case 13: 
return 0;
default: abort ();
}
}
}
}

static unsigned short v17 (signed short v120, signed char v121, unsigned char v122)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
unsigned char v125 = 4;
signed char v124 = -2;
unsigned char v123 = 3;
trace++;
switch (trace)
{
case 3: 
return 0;
case 5: 
return 7;
default: abort ();
}
}
}
}

signed int v7 (void)
{
{
for (;;) {
signed char v128 = 2;
unsigned char v127 = 2;
unsigned char v126 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned int v129, unsigned char v130, signed char v131, signed short v132)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
unsigned short v135 = 2;
unsigned int v134 = 5U;
unsigned int v133 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (unsigned char v136, unsigned char v137)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
unsigned char v140 = 6;
signed char v139 = -3;
unsigned char v138 = 4;
trace++;
switch (trace)
{
case 0: 
{
signed char v141;
unsigned char v142;
signed char v143;
unsigned int v144;
v141 = -2 + 2;
v142 = v137 - v136;
v143 = v139 - v139;
v144 = 0U + 0U;
v25 (v141, v142, v143, v144);
}
break;
case 2: 
{
signed short v145;
signed char v146;
unsigned char v147;
unsigned short v148;
v145 = 3 + 0;
v146 = v139 + v139;
v147 = v136 + 2;
v148 = v17 (v145, v146, v147);
history[history_index++] = (int)v148;
}
break;
case 4: 
{
signed short v149;
signed char v150;
unsigned char v151;
unsigned short v152;
v149 = -2 - -1;
v150 = 0 + v139;
v151 = v137 - v136;
v152 = v17 (v149, v150, v151);
history[history_index++] = (int)v152;
}
break;
case 6: 
{
signed char v153;
unsigned short v154;
signed char v155;
signed int v156;
v153 = v139 - 3;
v154 = 1 + 1;
v155 = -2 + 1;
v156 = v19 (v153, v154, v155);
history[history_index++] = (int)v156;
}
break;
case 14: 
return v139;
default: abort ();
}
}
}
}
