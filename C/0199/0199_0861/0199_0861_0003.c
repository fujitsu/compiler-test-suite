#include <stdlib.h>
unsigned short v1 (unsigned char, unsigned short, unsigned int);
unsigned short (*v2) (unsigned char, unsigned short, unsigned int) = v1;
extern signed int v3 (void);
extern signed int (*v4) (void);
unsigned short v5 (signed char, unsigned int, signed char);
unsigned short (*v6) (signed char, unsigned int, signed char) = v5;
unsigned int v7 (void);
unsigned int (*v8) (void) = v7;
unsigned short v9 (unsigned int, signed char, unsigned char, signed char);
unsigned short (*v10) (unsigned int, signed char, unsigned char, signed char) = v9;
signed short v11 (void);
signed short (*v12) (void) = v11;
signed int v13 (unsigned int, signed int);
signed int (*v14) (unsigned int, signed int) = v13;
extern signed short v15 (unsigned char, signed int);
extern signed short (*v16) (unsigned char, signed int);
extern void v17 (void);
extern void (*v18) (void);
extern void v19 (unsigned char, unsigned short, signed short);
extern void (*v20) (unsigned char, unsigned short, signed short);
static signed int v21 (signed int, signed char, unsigned int);
static signed int (*v22) (signed int, signed char, unsigned int) = v21;
extern unsigned int v23 (unsigned int, signed int);
extern unsigned int (*v24) (unsigned int, signed int);
extern void v25 (signed short, unsigned int, signed short, unsigned short);
extern void (*v26) (signed short, unsigned int, signed short, unsigned short);
static void v27 (unsigned short, unsigned int);
static void (*v28) (unsigned short, unsigned int) = v27;
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v67 = -3;
signed char v66 = 2;
unsigned char v65 = 7;

static void v27 (unsigned short v68, unsigned int v69)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
signed char v72 = -3;
unsigned int v71 = 4U;
signed short v70 = -4;
trace++;
switch (trace)
{
case 7: 
return;
case 11: 
return;
default: abort ();
}
}
}
}

static signed int v21 (signed int v73, signed char v74, unsigned int v75)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
unsigned char v78 = 1;
signed char v77 = -2;
signed char v76 = 1;
trace++;
switch (trace)
{
case 1: 
return v73;
default: abort ();
}
}
}
}

signed int v13 (unsigned int v79, signed int v80)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned char v83 = 1;
unsigned short v82 = 0;
signed int v81 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (void)
{
{
for (;;) {
unsigned short v86 = 7;
unsigned char v85 = 6;
unsigned int v84 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (unsigned int v87, signed char v88, unsigned char v89, signed char v90)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed short v93 = 2;
unsigned int v92 = 6U;
signed int v91 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (void)
{
{
for (;;) {
signed int v96 = -4;
signed char v95 = 0;
unsigned int v94 = 7U;
trace++;
switch (trace)
{
case 6: 
{
unsigned short v97;
unsigned int v98;
v97 = 2 - 4;
v98 = v94 - v94;
v27 (v97, v98);
}
break;
case 8: 
return 7U;
case 10: 
{
unsigned short v99;
unsigned int v100;
v99 = 1 - 4;
v100 = 4U - 7U;
v27 (v99, v100);
}
break;
case 12: 
return 4U;
default: abort ();
}
}
}
}

unsigned short v5 (signed char v101, unsigned int v102, signed char v103)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed char v106 = 0;
unsigned short v105 = 7;
signed short v104 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (unsigned char v107, unsigned short v108, unsigned int v109)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
signed char v112 = 0;
signed short v111 = -1;
signed short v110 = -2;
trace++;
switch (trace)
{
case 0: 
{
signed int v113;
signed char v114;
unsigned int v115;
signed int v116;
v113 = -3 + -3;
v114 = -4 + 1;
v115 = v109 + v109;
v116 = v21 (v113, v114, v115);
history[history_index++] = (int)v116;
}
break;
case 2: 
{
signed short v117;
unsigned int v118;
signed short v119;
unsigned short v120;
v117 = v110 - v111;
v118 = v109 - 0U;
v119 = -3 - v111;
v120 = v108 + 7;
v25 (v117, v118, v119, v120);
}
break;
case 4: 
{
unsigned short v121;
v121 = v29 ();
history[history_index++] = (int)v121;
}
break;
case 14: 
return v108;
default: abort ();
}
}
}
}
