#include <stdlib.h>
unsigned char v1 (unsigned short, signed char);
unsigned char (*v2) (unsigned short, signed char) = v1;
extern signed short v3 (signed int, unsigned char, signed int, unsigned char);
extern signed short (*v4) (signed int, unsigned char, signed int, unsigned char);
signed short v5 (signed char, signed short);
signed short (*v6) (signed char, signed short) = v5;
unsigned short v7 (signed int);
unsigned short (*v8) (signed int) = v7;
extern signed char v9 (signed int, unsigned short, signed char);
extern signed char (*v10) (signed int, unsigned short, signed char);
extern void v11 (signed int, signed char);
extern void (*v12) (signed int, signed char);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern void v15 (void);
extern void (*v16) (void);
extern unsigned short v17 (unsigned char, signed int, unsigned char, signed int);
extern unsigned short (*v18) (unsigned char, signed int, unsigned char, signed int);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern unsigned int v21 (signed short, signed char);
extern unsigned int (*v22) (signed short, signed char);
extern void v23 (signed short, unsigned short, signed int);
extern void (*v24) (signed short, unsigned short, signed int);
static signed short v25 (signed int, signed char, unsigned short);
static signed short (*v26) (signed int, signed char, unsigned short) = v25;
extern unsigned int v27 (signed int);
extern unsigned int (*v28) (signed int);
unsigned char v29 (signed short);
unsigned char (*v30) (signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v87 = -4;
unsigned short v86 = 2;
unsigned int v85 = 1U;

unsigned char v29 (signed short v88)
{
history[history_index++] = (int)v88;
{
for (;;) {
unsigned char v91 = 1;
signed char v90 = 1;
unsigned int v89 = 4U;
trace++;
switch (trace)
{
case 10: 
return 7;
default: abort ();
}
}
}
}

static signed short v25 (signed int v92, signed char v93, unsigned short v94)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
unsigned char v97 = 7;
signed short v96 = 0;
unsigned char v95 = 4;
trace++;
switch (trace)
{
case 3: 
return -4;
default: abort ();
}
}
}
}

unsigned short v7 (signed int v98)
{
history[history_index++] = (int)v98;
{
for (;;) {
unsigned int v101 = 7U;
signed char v100 = 2;
unsigned short v99 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (signed char v102, signed short v103)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed short v106 = 2;
unsigned short v105 = 4;
signed int v104 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned short v107, signed char v108)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
unsigned short v111 = 2;
unsigned short v110 = 2;
unsigned int v109 = 4U;
trace++;
switch (trace)
{
case 0: 
{
v15 ();
}
break;
case 2: 
{
signed int v112;
signed char v113;
unsigned short v114;
signed short v115;
v112 = -4 - -3;
v113 = v108 + v108;
v114 = v107 + 7;
v115 = v25 (v112, v113, v114);
history[history_index++] = (int)v115;
}
break;
case 4: 
{
signed int v116;
signed char v117;
v116 = -3 - -4;
v117 = 0 - v108;
v11 (v116, v117);
}
break;
case 8: 
{
unsigned char v118;
signed int v119;
unsigned char v120;
signed int v121;
unsigned short v122;
v118 = 5 + 2;
v119 = 0 - -4;
v120 = 2 + 4;
v121 = 2 + 0;
v122 = v17 (v118, v119, v120, v121);
history[history_index++] = (int)v122;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}
