#include <stdlib.h>
unsigned char v1 (signed short, signed char, unsigned short, unsigned int);
unsigned char (*v2) (signed short, signed char, unsigned short, unsigned int) = v1;
unsigned char v3 (signed int, signed short, unsigned short, signed int);
unsigned char (*v4) (signed int, signed short, unsigned short, signed int) = v3;
static signed short v5 (signed char, signed int, unsigned int, unsigned short);
static signed short (*v6) (signed char, signed int, unsigned int, unsigned short) = v5;
extern signed char v7 (unsigned char, unsigned short, unsigned short);
extern signed char (*v8) (unsigned char, unsigned short, unsigned short);
extern signed short v9 (signed int, signed char, unsigned short);
extern signed short (*v10) (signed int, signed char, unsigned short);
unsigned short v11 (signed int, signed short, unsigned char, signed char);
unsigned short (*v12) (signed int, signed short, unsigned char, signed char) = v11;
extern unsigned int v13 (unsigned char, unsigned int, signed int);
extern unsigned int (*v14) (unsigned char, unsigned int, signed int);
extern void v15 (unsigned char);
extern void (*v16) (unsigned char);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
signed short v19 (void);
signed short (*v20) (void) = v19;
unsigned short v21 (signed char, signed short);
unsigned short (*v22) (signed char, signed short) = v21;
unsigned int v23 (void);
unsigned int (*v24) (void) = v23;
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern unsigned char v27 (signed short, unsigned short, signed char, unsigned char);
extern unsigned char (*v28) (signed short, unsigned short, signed char, unsigned char);
signed short v29 (signed int, unsigned short, signed int);
signed short (*v30) (signed int, unsigned short, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v58 = -4;
unsigned short v57 = 6;
signed int v56 = 2;

signed short v29 (signed int v59, unsigned short v60, signed int v61)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
signed char v64 = 3;
signed int v63 = 3;
unsigned int v62 = 4U;
trace++;
switch (trace)
{
case 10: 
{
unsigned int v65;
v65 = v17 ();
history[history_index++] = (int)v65;
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}

unsigned int v23 (void)
{
{
for (;;) {
unsigned short v68 = 3;
signed short v67 = -3;
unsigned int v66 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (signed char v69, signed short v70)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed int v73 = 1;
signed short v72 = 0;
signed char v71 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (void)
{
{
for (;;) {
unsigned char v76 = 6;
unsigned int v75 = 2U;
unsigned char v74 = 5;
trace++;
switch (trace)
{
case 6: 
return -1;
case 8: 
{
signed short v77;
unsigned short v78;
signed char v79;
unsigned char v80;
unsigned char v81;
v77 = 3 - -3;
v78 = 6 - 1;
v79 = -3 - -4;
v80 = v74 - v74;
v81 = v27 (v77, v78, v79, v80);
history[history_index++] = (int)v81;
}
break;
case 14: 
return 2;
default: abort ();
}
}
}
}

unsigned short v11 (signed int v82, signed short v83, unsigned char v84, signed char v85)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed char v88 = -2;
signed int v87 = -2;
unsigned char v86 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v5 (signed char v89, signed int v90, unsigned int v91, unsigned short v92)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
signed char v95 = 2;
unsigned short v94 = 1;
signed short v93 = 2;
trace++;
switch (trace)
{
case 4: 
{
signed int v96;
signed char v97;
unsigned short v98;
signed short v99;
v96 = -2 - v90;
v97 = v95 + v89;
v98 = v92 + v92;
v99 = v9 (v96, v97, v98);
history[history_index++] = (int)v99;
}
break;
case 16: 
return -4;
default: abort ();
}
}
}
}

unsigned char v3 (signed int v100, signed short v101, unsigned short v102, signed int v103)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
unsigned int v106 = 1U;
signed int v105 = -2;
signed char v104 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (signed short v107, signed char v108, unsigned short v109, unsigned int v110)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
unsigned int v113 = 2U;
signed short v112 = -4;
signed char v111 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v114;
v114 = 7 + 7;
v15 (v114);
}
break;
case 2: 
return 2;
case 3: 
{
signed char v115;
signed int v116;
unsigned int v117;
unsigned short v118;
signed short v119;
v115 = v111 - v108;
v116 = -4 + 1;
v117 = v110 + 6U;
v118 = v109 - v109;
v119 = v5 (v115, v116, v117, v118);
history[history_index++] = (int)v119;
}
break;
case 17: 
return 7;
default: abort ();
}
}
}
}
