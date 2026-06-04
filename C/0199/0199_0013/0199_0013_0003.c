#include <stdlib.h>
unsigned int v1 (unsigned short);
unsigned int (*v2) (unsigned short) = v1;
static unsigned short v3 (void);
static unsigned short (*v4) (void) = v3;
extern signed short v5 (unsigned char, signed int, unsigned char, unsigned int);
extern signed short (*v6) (unsigned char, signed int, unsigned char, unsigned int);
signed int v7 (signed short, unsigned int, signed char, signed int);
signed int (*v8) (signed short, unsigned int, signed char, signed int) = v7;
extern unsigned short v9 (signed short, signed char);
extern unsigned short (*v10) (signed short, signed char);
extern void v11 (unsigned char);
extern void (*v12) (unsigned char);
unsigned short v13 (signed char, signed char);
unsigned short (*v14) (signed char, signed char) = v13;
extern void v15 (void);
extern void (*v16) (void);
extern signed int v17 (signed char);
extern signed int (*v18) (signed char);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
static unsigned int v21 (void);
static unsigned int (*v22) (void) = v21;
extern signed int v23 (signed short, unsigned char, signed short, signed short);
extern signed int (*v24) (signed short, unsigned char, signed short, signed short);
extern unsigned char v25 (unsigned char, unsigned char);
extern unsigned char (*v26) (unsigned char, unsigned char);
unsigned int v27 (signed int, signed short, unsigned short);
unsigned int (*v28) (signed int, signed short, unsigned short) = v27;
extern signed short v29 (signed short, unsigned int, unsigned char, unsigned char);
extern signed short (*v30) (signed short, unsigned int, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v79 = 1;
signed int v78 = -1;
unsigned int v77 = 0U;

unsigned int v27 (signed int v80, signed short v81, unsigned short v82)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
signed char v85 = -1;
signed int v84 = 3;
unsigned char v83 = 1;
trace++;
switch (trace)
{
case 2: 
return 1U;
default: abort ();
}
}
}
}

static unsigned int v21 (void)
{
{
for (;;) {
signed short v88 = -3;
unsigned short v87 = 1;
signed int v86 = -3;
trace++;
switch (trace)
{
case 8: 
{
signed short v89;
unsigned int v90;
unsigned char v91;
unsigned char v92;
signed short v93;
v89 = v88 - -1;
v90 = 7U + 7U;
v91 = 3 + 1;
v92 = 5 + 6;
v93 = v29 (v89, v90, v91, v92);
history[history_index++] = (int)v93;
}
break;
case 10: 
{
signed short v94;
unsigned int v95;
unsigned char v96;
unsigned char v97;
signed short v98;
v94 = 3 + v88;
v95 = 0U - 3U;
v96 = 2 - 5;
v97 = 7 - 2;
v98 = v29 (v94, v95, v96, v97);
history[history_index++] = (int)v98;
}
break;
case 12: 
return 1U;
default: abort ();
}
}
}
}

unsigned short v13 (signed char v99, signed char v100)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed char v103 = 1;
signed short v102 = -2;
signed int v101 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (signed short v104, unsigned int v105, signed char v106, signed int v107)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
signed char v110 = -2;
signed char v109 = -1;
signed int v108 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v3 (void)
{
{
for (;;) {
signed int v113 = -2;
signed char v112 = 0;
unsigned int v111 = 7U;
trace++;
switch (trace)
{
case 7: 
{
unsigned int v114;
v114 = v21 ();
history[history_index++] = (int)v114;
}
break;
case 13: 
return 1;
default: abort ();
}
}
}
}

unsigned int v1 (unsigned short v115)
{
history[history_index++] = (int)v115;
{
for (;;) {
signed int v118 = 2;
signed char v117 = 2;
signed int v116 = 3;
trace++;
switch (trace)
{
case 0: 
{
v15 ();
}
break;
case 4: 
{
unsigned char v119;
unsigned char v120;
unsigned char v121;
v119 = 0 - 5;
v120 = 4 + 0;
v121 = v25 (v119, v120);
history[history_index++] = (int)v121;
}
break;
case 6: 
{
unsigned short v122;
v122 = v3 ();
history[history_index++] = (int)v122;
}
break;
case 14: 
return 5U;
default: abort ();
}
}
}
}
