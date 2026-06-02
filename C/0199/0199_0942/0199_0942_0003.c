#include <stdlib.h>
extern void v1 (unsigned char, signed short, unsigned int);
extern void (*v2) (unsigned char, signed short, unsigned int);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern void v5 (unsigned int, unsigned char, unsigned int);
extern void (*v6) (unsigned int, unsigned char, unsigned int);
signed short v7 (signed short, unsigned char, signed int, signed short);
signed short (*v8) (signed short, unsigned char, signed int, signed short) = v7;
signed char v9 (signed short, signed int, unsigned short);
signed char (*v10) (signed short, signed int, unsigned short) = v9;
signed int v11 (signed int, signed char, signed int);
signed int (*v12) (signed int, signed char, signed int) = v11;
unsigned short v13 (signed short, unsigned int);
unsigned short (*v14) (signed short, unsigned int) = v13;
unsigned int v15 (signed char, signed char);
unsigned int (*v16) (signed char, signed char) = v15;
unsigned char v17 (void);
unsigned char (*v18) (void) = v17;
extern void v19 (signed int, signed short);
extern void (*v20) (signed int, signed short);
unsigned int v21 (signed short, signed char, signed int, unsigned int);
unsigned int (*v22) (signed short, signed char, signed int, unsigned int) = v21;
extern void v23 (unsigned int, signed int, unsigned char, signed int);
extern void (*v24) (unsigned int, signed int, unsigned char, signed int);
extern signed short v25 (signed int);
extern signed short (*v26) (signed int);
static unsigned short v27 (unsigned int, signed char, signed short, unsigned int);
static unsigned short (*v28) (unsigned int, signed char, signed short, unsigned int) = v27;
signed short v29 (unsigned int);
signed short (*v30) (unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v77 = -1;
unsigned char v76 = 4;
unsigned char v75 = 6;

signed short v29 (unsigned int v78)
{
history[history_index++] = (int)v78;
{
for (;;) {
signed short v81 = -1;
signed short v80 = 3;
signed short v79 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v27 (unsigned int v82, signed char v83, signed short v84, unsigned int v85)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed short v88 = -3;
unsigned int v87 = 3U;
signed short v86 = -4;
trace++;
switch (trace)
{
case 5: 
return 4;
default: abort ();
}
}
}
}

unsigned int v21 (signed short v89, signed char v90, signed int v91, unsigned int v92)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned char v95 = 1;
signed int v94 = -1;
unsigned short v93 = 6;
trace++;
switch (trace)
{
case 2: 
return 4U;
case 4: 
{
unsigned int v96;
signed char v97;
signed short v98;
unsigned int v99;
unsigned short v100;
v96 = 0U - 2U;
v97 = -3 + -3;
v98 = v89 + v89;
v99 = 4U - 3U;
v100 = v27 (v96, v97, v98, v99);
history[history_index++] = (int)v100;
}
break;
case 6: 
return 4U;
case 9: 
return v92;
default: abort ();
}
}
}
}

unsigned char v17 (void)
{
{
for (;;) {
signed char v103 = 1;
unsigned char v102 = 0;
unsigned short v101 = 2;
trace++;
switch (trace)
{
case 1: 
{
signed short v104;
signed char v105;
signed int v106;
unsigned int v107;
unsigned int v108;
v104 = 0 - -4;
v105 = v103 + v103;
v106 = 0 - -4;
v107 = 4U + 2U;
v108 = v21 (v104, v105, v106, v107);
history[history_index++] = (int)v108;
}
break;
case 3: 
{
signed short v109;
signed char v110;
signed int v111;
unsigned int v112;
unsigned int v113;
v109 = 3 - -1;
v110 = -3 + 1;
v111 = 2 + 1;
v112 = 2U - 2U;
v113 = v21 (v109, v110, v111, v112);
history[history_index++] = (int)v113;
}
break;
case 7: 
return v102;
default: abort ();
}
}
}
}

unsigned int v15 (signed char v114, signed char v115)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
signed int v118 = -1;
unsigned int v117 = 3U;
signed short v116 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (signed short v119, unsigned int v120)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
signed int v123 = 2;
signed int v122 = -1;
signed char v121 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (signed int v124, signed char v125, signed int v126)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
unsigned int v129 = 7U;
signed short v128 = 3;
unsigned char v127 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (signed short v130, signed int v131, unsigned short v132)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
signed char v135 = 0;
signed short v134 = 1;
unsigned int v133 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (signed short v136, unsigned char v137, signed int v138, signed short v139)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
unsigned int v142 = 0U;
unsigned short v141 = 0;
signed char v140 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
