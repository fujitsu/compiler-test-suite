#include <stdlib.h>
signed char v1 (signed short);
signed char (*v2) (signed short) = v1;
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern void v5 (unsigned char, unsigned short);
extern void (*v6) (unsigned char, unsigned short);
extern signed short v7 (unsigned short);
extern signed short (*v8) (unsigned short);
extern void v9 (signed int, signed short, unsigned int);
extern void (*v10) (signed int, signed short, unsigned int);
extern void v11 (void);
extern void (*v12) (void);
unsigned char v13 (signed short, signed short, signed short);
unsigned char (*v14) (signed short, signed short, signed short) = v13;
signed short v15 (unsigned char);
signed short (*v16) (unsigned char) = v15;
extern unsigned short v17 (signed int, unsigned int, signed short);
extern unsigned short (*v18) (signed int, unsigned int, signed short);
void v19 (unsigned char, signed short, signed int);
void (*v20) (unsigned char, signed short, signed int) = v19;
extern unsigned int v21 (signed char);
extern unsigned int (*v22) (signed char);
extern signed int v23 (unsigned int, unsigned int, unsigned short);
extern signed int (*v24) (unsigned int, unsigned int, unsigned short);
signed short v25 (unsigned int, signed short);
signed short (*v26) (unsigned int, signed short) = v25;
extern unsigned short v27 (unsigned short);
extern unsigned short (*v28) (unsigned short);
extern unsigned int v29 (signed char, signed short);
extern unsigned int (*v30) (signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v88 = 5;
signed char v87 = -4;
signed short v86 = -4;

signed short v25 (unsigned int v89, signed short v90)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
unsigned char v93 = 4;
unsigned int v92 = 1U;
signed short v91 = 3;
trace++;
switch (trace)
{
case 7: 
return -3;
case 10: 
return v91;
default: abort ();
}
}
}
}

void v19 (unsigned char v94, signed short v95, signed int v96)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed int v99 = 3;
unsigned short v98 = 7;
unsigned int v97 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (unsigned char v100)
{
history[history_index++] = (int)v100;
{
for (;;) {
signed int v103 = 2;
unsigned short v102 = 0;
signed int v101 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (signed short v104, signed short v105, signed short v106)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed char v109 = -4;
unsigned int v108 = 5U;
signed int v107 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (signed short v110)
{
history[history_index++] = (int)v110;
{
for (;;) {
unsigned short v113 = 1;
signed short v112 = -3;
signed int v111 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v114;
unsigned short v115;
v114 = 3 + v113;
v115 = v27 (v114);
history[history_index++] = (int)v115;
}
break;
case 2: 
{
unsigned short v116;
unsigned short v117;
v116 = 4 - 6;
v117 = v27 (v116);
history[history_index++] = (int)v117;
}
break;
case 4: 
{
unsigned short v118;
signed short v119;
v118 = 7 - 2;
v119 = v7 (v118);
history[history_index++] = (int)v119;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}
