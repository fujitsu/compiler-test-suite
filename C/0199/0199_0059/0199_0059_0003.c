#include <stdlib.h>
void v1 (signed int);
void (*v2) (signed int) = v1;
extern unsigned short v3 (signed int);
extern unsigned short (*v4) (signed int);
extern unsigned short v5 (signed short, unsigned char, signed short, signed short);
extern unsigned short (*v6) (signed short, unsigned char, signed short, signed short);
unsigned short v7 (unsigned short, unsigned char);
unsigned short (*v8) (unsigned short, unsigned char) = v7;
extern unsigned int v11 (unsigned short, unsigned char, unsigned short, unsigned int);
extern unsigned int (*v12) (unsigned short, unsigned char, unsigned short, unsigned int);
extern signed short v13 (signed short);
extern signed short (*v14) (signed short);
signed short v15 (unsigned short);
signed short (*v16) (unsigned short) = v15;
unsigned short v17 (void);
unsigned short (*v18) (void) = v17;
extern void v19 (unsigned char, unsigned char, signed short);
extern void (*v20) (unsigned char, unsigned char, signed short);
extern unsigned short v21 (unsigned short, unsigned int, signed char);
extern unsigned short (*v22) (unsigned short, unsigned int, signed char);
unsigned char v23 (unsigned int, unsigned char, unsigned short);
unsigned char (*v24) (unsigned int, unsigned char, unsigned short) = v23;
extern signed int v25 (void);
extern signed int (*v26) (void);
unsigned int v27 (signed short, signed int);
unsigned int (*v28) (signed short, signed int) = v27;
extern signed char v29 (unsigned short);
extern signed char (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v87 = 2;
unsigned short v86 = 0;
unsigned int v85 = 7U;

unsigned int v27 (signed short v88, signed int v89)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
signed short v92 = 3;
unsigned short v91 = 3;
unsigned int v90 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (unsigned int v93, unsigned char v94, unsigned short v95)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned char v98 = 1;
signed short v97 = -4;
unsigned short v96 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (void)
{
{
for (;;) {
signed short v101 = 1;
unsigned int v100 = 4U;
signed int v99 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (unsigned short v102)
{
history[history_index++] = (int)v102;
{
for (;;) {
unsigned char v105 = 7;
signed short v104 = -2;
signed char v103 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (unsigned short v106, unsigned char v107)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
unsigned short v110 = 1;
unsigned short v109 = 7;
unsigned short v108 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (signed int v111)
{
history[history_index++] = (int)v111;
{
for (;;) {
signed short v114 = -4;
signed int v113 = 1;
signed char v112 = -2;
trace++;
switch (trace)
{
case 0: 
{
signed int v115;
unsigned short v116;
v115 = v113 - -1;
v116 = v3 (v115);
history[history_index++] = (int)v116;
}
break;
case 4: 
{
signed int v117;
v117 = v25 ();
history[history_index++] = (int)v117;
}
break;
case 6: 
{
signed short v118;
signed short v119;
v118 = -4 - -3;
v119 = v13 (v118);
history[history_index++] = (int)v119;
}
break;
case 8: 
{
unsigned short v120;
unsigned int v121;
signed char v122;
unsigned short v123;
v120 = 1 - 0;
v121 = 2U - 3U;
v122 = 3 - 0;
v123 = v21 (v120, v121, v122);
history[history_index++] = (int)v123;
}
break;
case 10: 
{
signed short v124;
signed short v125;
v124 = v114 + v114;
v125 = v13 (v124);
history[history_index++] = (int)v125;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
