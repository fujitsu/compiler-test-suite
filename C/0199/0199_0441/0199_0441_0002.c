#include <stdlib.h>
unsigned int v3 (void);
unsigned int (*v4) (void) = v3;
extern void v5 (signed short, signed int, unsigned int, unsigned int);
extern void (*v6) (signed short, signed int, unsigned int, unsigned int);
signed char v7 (void);
signed char (*v8) (void) = v7;
static void v9 (unsigned int, unsigned short, signed int);
static void (*v10) (unsigned int, unsigned short, signed int) = v9;
signed char v11 (void);
signed char (*v12) (void) = v11;
extern signed int v13 (unsigned int);
extern signed int (*v14) (unsigned int);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed int v17 (signed int, signed short);
extern signed int (*v18) (signed int, signed short);
signed short v19 (unsigned char, signed char);
signed short (*v20) (unsigned char, signed char) = v19;
extern unsigned char v21 (signed char, signed int, unsigned short, signed int);
extern unsigned char (*v22) (signed char, signed int, unsigned short, signed int);
extern void v23 (unsigned short, signed int, unsigned char, unsigned short);
extern void (*v24) (unsigned short, signed int, unsigned char, unsigned short);
unsigned char v25 (void);
unsigned char (*v26) (void) = v25;
extern void v27 (void);
extern void (*v28) (void);
extern unsigned short v29 (signed int, unsigned char, signed int, unsigned short);
extern unsigned short (*v30) (signed int, unsigned char, signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v88 = 0;
signed char v87 = -4;
signed short v86 = -2;

unsigned char v25 (void)
{
{
for (;;) {
unsigned char v91 = 5;
signed char v90 = 0;
unsigned char v89 = 3;
trace++;
switch (trace)
{
case 1: 
return 7;
default: abort ();
}
}
}
}

signed short v19 (unsigned char v92, signed char v93)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
unsigned int v96 = 7U;
signed char v95 = -2;
unsigned char v94 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (void)
{
{
for (;;) {
signed char v99 = -1;
signed short v98 = -4;
signed int v97 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v9 (unsigned int v100, unsigned short v101, signed int v102)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
unsigned char v105 = 1;
unsigned char v104 = 2;
unsigned short v103 = 5;
trace++;
switch (trace)
{
case 10: 
{
signed char v106;
signed int v107;
unsigned short v108;
signed int v109;
unsigned char v110;
v106 = -2 + -2;
v107 = 2 - v102;
v108 = 3 - 5;
v109 = 3 - v102;
v110 = v21 (v106, v107, v108, v109);
history[history_index++] = (int)v110;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

signed char v7 (void)
{
{
for (;;) {
signed short v113 = -4;
signed char v112 = -3;
unsigned int v111 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (void)
{
{
for (;;) {
unsigned short v116 = 6;
signed short v115 = 0;
signed int v114 = 1;
trace++;
switch (trace)
{
case 3: 
{
signed short v117;
signed int v118;
unsigned int v119;
unsigned int v120;
v117 = v115 - v115;
v118 = v114 + 2;
v119 = 2U - 2U;
v120 = 7U + 7U;
v5 (v117, v118, v119, v120);
}
break;
case 9: 
{
unsigned int v121;
unsigned short v122;
signed int v123;
v121 = 3U - 1U;
v122 = v116 + v116;
v123 = v114 + v114;
v9 (v121, v122, v123);
}
break;
case 13: 
return 2U;
default: abort ();
}
}
}
}
