#include <stdlib.h>
extern signed short v1 (unsigned char, unsigned int, signed short, unsigned char);
extern signed short (*v2) (unsigned char, unsigned int, signed short, unsigned char);
extern unsigned short v3 (signed short);
extern unsigned short (*v4) (signed short);
extern signed short v5 (unsigned short, signed int, unsigned short);
extern signed short (*v6) (unsigned short, signed int, unsigned short);
signed short v7 (signed char, unsigned char);
signed short (*v8) (signed char, unsigned char) = v7;
extern signed short v9 (signed char, unsigned char, unsigned char);
extern signed short (*v10) (signed char, unsigned char, unsigned char);
static unsigned char v11 (unsigned char, unsigned short, unsigned char);
static unsigned char (*v12) (unsigned char, unsigned short, unsigned char) = v11;
extern signed char v13 (signed int, unsigned char, unsigned char, unsigned char);
extern signed char (*v14) (signed int, unsigned char, unsigned char, unsigned char);
extern signed char v15 (unsigned int);
extern signed char (*v16) (unsigned int);
signed char v17 (unsigned int, signed char);
signed char (*v18) (unsigned int, signed char) = v17;
extern signed short v19 (unsigned char);
extern signed short (*v20) (unsigned char);
extern void v21 (unsigned char, signed short, signed short, signed char);
extern void (*v22) (unsigned char, signed short, signed short, signed char);
signed char v23 (unsigned short);
signed char (*v24) (unsigned short) = v23;
extern unsigned short v25 (signed char, unsigned short, signed short);
extern unsigned short (*v26) (signed char, unsigned short, signed short);
unsigned int v27 (unsigned char, signed char);
unsigned int (*v28) (unsigned char, signed char) = v27;
static unsigned short v29 (signed int, unsigned short, unsigned int, unsigned char);
static unsigned short (*v30) (signed int, unsigned short, unsigned int, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v57 = 3;
signed short v56 = 3;
signed char v55 = -1;

static unsigned short v29 (signed int v58, unsigned short v59, unsigned int v60, unsigned char v61)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
signed short v64 = -2;
signed short v63 = 1;
signed short v62 = -3;
trace++;
switch (trace)
{
case 3: 
return 7;
case 11: 
return v59;
default: abort ();
}
}
}
}

unsigned int v27 (unsigned char v65, signed char v66)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned char v69 = 6;
unsigned int v68 = 3U;
signed char v67 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v23 (unsigned short v70)
{
history[history_index++] = (int)v70;
{
for (;;) {
signed int v73 = -2;
unsigned int v72 = 6U;
unsigned int v71 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (unsigned int v74, signed char v75)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
unsigned short v78 = 5;
unsigned int v77 = 3U;
signed int v76 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v11 (unsigned char v79, unsigned short v80, unsigned char v81)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
unsigned int v84 = 2U;
signed int v83 = -1;
signed char v82 = -3;
trace++;
switch (trace)
{
case 2: 
{
signed int v85;
unsigned short v86;
unsigned int v87;
unsigned char v88;
unsigned short v89;
v85 = -2 + -1;
v86 = v80 + 4;
v87 = 1U - 3U;
v88 = 3 + v79;
v89 = v29 (v85, v86, v87, v88);
history[history_index++] = (int)v89;
}
break;
case 4: 
{
signed char v90;
unsigned char v91;
unsigned char v92;
signed short v93;
v90 = v82 + 3;
v91 = v79 - v79;
v92 = v79 + 3;
v93 = v9 (v90, v91, v92);
history[history_index++] = (int)v93;
}
break;
case 6: 
{
signed char v94;
unsigned char v95;
unsigned char v96;
signed short v97;
v94 = 3 - 1;
v95 = v81 + v79;
v96 = v79 + v79;
v97 = v9 (v94, v95, v96);
history[history_index++] = (int)v97;
}
break;
case 8: 
{
signed char v98;
unsigned char v99;
unsigned char v100;
signed short v101;
v98 = -1 + -3;
v99 = v79 + v79;
v100 = 0 + v81;
v101 = v9 (v98, v99, v100);
history[history_index++] = (int)v101;
}
break;
case 10: 
{
signed int v102;
unsigned short v103;
unsigned int v104;
unsigned char v105;
unsigned short v106;
v102 = v83 + -4;
v103 = 7 + 4;
v104 = 0U - v84;
v105 = v79 + v79;
v106 = v29 (v102, v103, v104, v105);
history[history_index++] = (int)v106;
}
break;
case 12: 
return v81;
default: abort ();
}
}
}
}

signed short v7 (signed char v107, unsigned char v108)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed short v111 = 1;
signed int v110 = -2;
signed int v109 = -1;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v112;
unsigned short v113;
unsigned char v114;
unsigned char v115;
v112 = v108 + 1;
v113 = 2 + 7;
v114 = v108 - 5;
v115 = v11 (v112, v113, v114);
history[history_index++] = (int)v115;
}
break;
case 13: 
return -1;
default: abort ();
}
}
}
}
