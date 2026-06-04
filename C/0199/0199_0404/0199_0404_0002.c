#include <stdlib.h>
unsigned char v1 (signed short, unsigned char);
unsigned char (*v2) (signed short, unsigned char) = v1;
extern signed char v3 (signed int, unsigned char);
extern signed char (*v4) (signed int, unsigned char);
extern void v5 (void);
extern void (*v6) (void);
signed char v7 (unsigned char);
signed char (*v8) (unsigned char) = v7;
void v9 (void);
void (*v10) (void) = v9;
signed int v11 (signed short, unsigned short, signed int);
signed int (*v12) (signed short, unsigned short, signed int) = v11;
extern signed char v13 (unsigned short, signed short);
extern signed char (*v14) (unsigned short, signed short);
extern unsigned char v15 (signed int);
extern unsigned char (*v16) (signed int);
static signed short v17 (unsigned char, unsigned int, signed char);
static signed short (*v18) (unsigned char, unsigned int, signed char) = v17;
extern unsigned char v19 (signed short, signed char, unsigned int, unsigned char);
extern unsigned char (*v20) (signed short, signed char, unsigned int, unsigned char);
extern unsigned char v21 (unsigned short, signed short);
extern unsigned char (*v22) (unsigned short, signed short);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern unsigned short v25 (unsigned short, signed char, unsigned short, signed short);
extern unsigned short (*v26) (unsigned short, signed char, unsigned short, signed short);
extern void v27 (signed int, unsigned int);
extern void (*v28) (signed int, unsigned int);
extern signed short v29 (unsigned char, signed int, unsigned int);
extern signed short (*v30) (unsigned char, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v81 = -1;
signed int v80 = -4;
unsigned int v79 = 7U;

static signed short v17 (unsigned char v82, unsigned int v83, signed char v84)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
signed char v87 = 0;
unsigned int v86 = 0U;
unsigned char v85 = 7;
trace++;
switch (trace)
{
case 10: 
{
unsigned short v88;
signed short v89;
unsigned char v90;
v88 = 4 - 5;
v89 = 3 - -3;
v90 = v21 (v88, v89);
history[history_index++] = (int)v90;
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}

signed int v11 (signed short v91, unsigned short v92, signed int v93)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
signed short v96 = -2;
signed short v95 = -2;
unsigned int v94 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (void)
{
{
for (;;) {
unsigned char v99 = 2;
signed short v98 = 2;
unsigned short v97 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (unsigned char v100)
{
history[history_index++] = (int)v100;
{
for (;;) {
signed short v103 = -3;
signed char v102 = 3;
unsigned char v101 = 6;
trace++;
switch (trace)
{
case 9: 
{
unsigned char v104;
unsigned int v105;
signed char v106;
signed short v107;
v104 = v100 + v100;
v105 = 0U + 7U;
v106 = v102 + 2;
v107 = v17 (v104, v105, v106);
history[history_index++] = (int)v107;
}
break;
case 13: 
return 3;
default: abort ();
}
}
}
}

unsigned char v1 (signed short v108, unsigned char v109)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
signed int v112 = 0;
signed char v111 = 1;
unsigned char v110 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v113;
signed short v114;
signed char v115;
v113 = 7 - 7;
v114 = v108 - -1;
v115 = v13 (v113, v114);
history[history_index++] = (int)v115;
}
break;
case 2: 
{
signed int v116;
unsigned char v117;
signed char v118;
v116 = 0 - -4;
v117 = 2 + v110;
v118 = v3 (v116, v117);
history[history_index++] = (int)v118;
}
break;
case 16: 
return 5;
default: abort ();
}
}
}
}
