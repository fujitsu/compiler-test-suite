#include <stdlib.h>
signed short v1 (unsigned int, signed int, unsigned short);
signed short (*v2) (unsigned int, signed int, unsigned short) = v1;
static unsigned int v3 (void);
static unsigned int (*v4) (void) = v3;
void v5 (signed char, signed int, unsigned short, unsigned short);
void (*v6) (signed char, signed int, unsigned short, unsigned short) = v5;
extern signed char v7 (signed int, unsigned char, unsigned short);
extern signed char (*v8) (signed int, unsigned char, unsigned short);
extern signed int v9 (signed char, signed char);
extern signed int (*v10) (signed char, signed char);
extern signed int v11 (unsigned int, signed int, unsigned short, signed int);
extern signed int (*v12) (unsigned int, signed int, unsigned short, signed int);
unsigned short v13 (signed char);
unsigned short (*v14) (signed char) = v13;
extern unsigned char v15 (signed short);
extern unsigned char (*v16) (signed short);
extern unsigned char v17 (signed int, signed char);
extern unsigned char (*v18) (signed int, signed char);
static void v19 (unsigned char, unsigned short, signed short, signed short);
static void (*v20) (unsigned char, unsigned short, signed short, signed short) = v19;
signed int v21 (signed int);
signed int (*v22) (signed int) = v21;
unsigned char v23 (signed short, signed int, signed int, signed int);
unsigned char (*v24) (signed short, signed int, signed int, signed int) = v23;
unsigned short v25 (signed char, unsigned short, unsigned int);
unsigned short (*v26) (signed char, unsigned short, unsigned int) = v25;
signed short v27 (signed int, unsigned short);
signed short (*v28) (signed int, unsigned short) = v27;
extern unsigned int v29 (unsigned short, signed short, signed short);
extern unsigned int (*v30) (unsigned short, signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v51 = 0;
unsigned char v50 = 0;
signed char v49 = -3;

signed short v27 (signed int v52, unsigned short v53)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
unsigned char v56 = 3;
unsigned char v55 = 0;
unsigned short v54 = 2;
trace++;
switch (trace)
{
case 4: 
return -4;
default: abort ();
}
}
}
}

unsigned short v25 (signed char v57, unsigned short v58, unsigned int v59)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
signed char v62 = -2;
signed short v61 = 2;
signed int v60 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (signed short v63, signed int v64, signed int v65, signed int v66)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned char v69 = 0;
signed int v68 = -1;
signed char v67 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (signed int v70)
{
history[history_index++] = (int)v70;
{
for (;;) {
signed char v73 = -3;
signed int v72 = 0;
signed char v71 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v19 (unsigned char v74, unsigned short v75, signed short v76, signed short v77)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
signed int v80 = -1;
signed char v79 = -3;
unsigned char v78 = 1;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v81;
signed int v82;
unsigned short v83;
signed short v84;
v81 = 0U - 3U;
v82 = -4 - -2;
v83 = 2 + 7;
v84 = v1 (v81, v82, v83);
history[history_index++] = (int)v84;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}

unsigned short v13 (signed char v85)
{
history[history_index++] = (int)v85;
{
for (;;) {
signed short v88 = 0;
unsigned short v87 = 1;
signed short v86 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (signed char v89, signed int v90, unsigned short v91, unsigned short v92)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned short v95 = 0;
signed int v94 = -3;
signed char v93 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v3 (void)
{
{
for (;;) {
signed char v98 = -2;
unsigned short v97 = 5;
signed short v96 = -1;
trace++;
switch (trace)
{
case 7: 
return 2U;
default: abort ();
}
}
}
}

signed short v1 (unsigned int v99, signed int v100, unsigned short v101)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
signed int v104 = -1;
unsigned char v103 = 6;
signed short v102 = -3;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v105;
unsigned short v106;
signed short v107;
signed short v108;
v105 = 7 - v103;
v106 = v101 + v101;
v107 = 1 - -4;
v108 = 1 - v102;
v19 (v105, v106, v107, v108);
}
break;
case 2: 
{
unsigned int v109;
signed int v110;
unsigned short v111;
signed int v112;
signed int v113;
v109 = v99 + v99;
v110 = v100 - 0;
v111 = v101 - v101;
v112 = v100 - -3;
v113 = v11 (v109, v110, v111, v112);
history[history_index++] = (int)v113;
}
break;
case 6: 
{
unsigned int v114;
v114 = v3 ();
history[history_index++] = (int)v114;
}
break;
case 8: 
{
signed int v115;
unsigned char v116;
unsigned short v117;
signed char v118;
v115 = v104 + -2;
v116 = v103 + v103;
v117 = 4 - v101;
v118 = v7 (v115, v116, v117);
history[history_index++] = (int)v118;
}
break;
case 12: 
return v102;
case 14: 
return 2;
default: abort ();
}
}
}
}
