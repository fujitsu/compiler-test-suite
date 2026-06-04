#include <stdlib.h>
void v1 (unsigned int, signed int, signed short, unsigned char);
void (*v2) (unsigned int, signed int, signed short, unsigned char) = v1;
extern void v3 (unsigned int);
extern void (*v4) (unsigned int);
extern unsigned short v5 (signed short, unsigned int, unsigned char, unsigned char);
extern unsigned short (*v6) (signed short, unsigned int, unsigned char, unsigned char);
signed char v7 (unsigned int, unsigned short, unsigned int, signed char);
signed char (*v8) (unsigned int, unsigned short, unsigned int, signed char) = v7;
extern unsigned int v9 (unsigned int, unsigned int);
extern unsigned int (*v10) (unsigned int, unsigned int);
extern unsigned short v11 (signed int);
extern unsigned short (*v12) (signed int);
extern signed short v13 (signed char);
extern signed short (*v14) (signed char);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern unsigned char v17 (unsigned short);
extern unsigned char (*v18) (unsigned short);
unsigned char v19 (unsigned int, signed short, unsigned int);
unsigned char (*v20) (unsigned int, signed short, unsigned int) = v19;
extern unsigned short v21 (unsigned int, signed int);
extern unsigned short (*v22) (unsigned int, signed int);
extern unsigned char v23 (unsigned short, unsigned char, signed short, signed int);
extern unsigned char (*v24) (unsigned short, unsigned char, signed short, signed int);
extern void v25 (void);
extern void (*v26) (void);
unsigned int v27 (unsigned char);
unsigned int (*v28) (unsigned char) = v27;
signed short v29 (signed char, unsigned short);
signed short (*v30) (signed char, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v86 = 3;
signed char v85 = -3;
unsigned short v84 = 4;

signed short v29 (signed char v87, unsigned short v88)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
unsigned short v91 = 1;
unsigned int v90 = 5U;
signed short v89 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v27 (unsigned char v92)
{
history[history_index++] = (int)v92;
{
for (;;) {
signed int v95 = -2;
signed int v94 = -2;
signed short v93 = -2;
trace++;
switch (trace)
{
case 4: 
return 0U;
default: abort ();
}
}
}
}

unsigned char v19 (unsigned int v96, signed short v97, unsigned int v98)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed char v101 = 2;
signed short v100 = -2;
signed short v99 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (unsigned int v102, unsigned short v103, unsigned int v104, signed char v105)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed short v108 = 1;
signed char v107 = 0;
unsigned int v106 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (unsigned int v109, signed int v110, signed short v111, unsigned char v112)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
signed short v115 = 0;
unsigned int v114 = 1U;
unsigned char v113 = 0;
trace++;
switch (trace)
{
case 0: 
{
signed short v116;
unsigned int v117;
unsigned char v118;
unsigned char v119;
unsigned short v120;
v116 = v115 - v115;
v117 = v114 - v114;
v118 = v112 - 6;
v119 = 5 - v113;
v120 = v5 (v116, v117, v118, v119);
history[history_index++] = (int)v120;
}
break;
case 16: 
return;
default: abort ();
}
}
}
}
