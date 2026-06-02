#include <stdlib.h>
extern unsigned char v1 (unsigned char, unsigned char);
extern unsigned char (*v2) (unsigned char, unsigned char);
extern unsigned int v3 (signed int);
extern unsigned int (*v4) (signed int);
extern unsigned short v5 (signed short, signed int);
extern unsigned short (*v6) (signed short, signed int);
void v7 (unsigned char);
void (*v8) (unsigned char) = v7;
signed int v9 (signed short, signed char);
signed int (*v10) (signed short, signed char) = v9;
extern void v11 (unsigned short, signed char, signed int);
extern void (*v12) (unsigned short, signed char, signed int);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
signed short v17 (signed int, signed short, signed int);
signed short (*v18) (signed int, signed short, signed int) = v17;
unsigned int v19 (unsigned char, unsigned char, signed int);
unsigned int (*v20) (unsigned char, unsigned char, signed int) = v19;
extern signed int v21 (signed short);
extern signed int (*v22) (signed short);
extern unsigned int v23 (signed int, signed int, unsigned int);
extern unsigned int (*v24) (signed int, signed int, unsigned int);
extern unsigned short v25 (unsigned short, signed char, unsigned short, unsigned short);
extern unsigned short (*v26) (unsigned short, signed char, unsigned short, unsigned short);
signed char v27 (unsigned char, unsigned char, unsigned short, unsigned int);
signed char (*v28) (unsigned char, unsigned char, unsigned short, unsigned int) = v27;
extern signed int v29 (unsigned char, unsigned int, signed short);
extern signed int (*v30) (unsigned char, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v93 = 3;
unsigned short v92 = 3;
unsigned short v91 = 2;

signed char v27 (unsigned char v94, unsigned char v95, unsigned short v96, unsigned int v97)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
unsigned char v100 = 0;
unsigned char v99 = 1;
signed char v98 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (unsigned char v101, unsigned char v102, signed int v103)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed int v106 = 1;
signed char v105 = 2;
unsigned char v104 = 1;
trace++;
switch (trace)
{
case 2: 
return 1U;
case 4: 
{
unsigned short v107;
signed char v108;
unsigned short v109;
unsigned short v110;
unsigned short v111;
v107 = 0 + 0;
v108 = 1 - v105;
v109 = 2 - 6;
v110 = 6 - 2;
v111 = v25 (v107, v108, v109, v110);
history[history_index++] = (int)v111;
}
break;
case 6: 
{
unsigned short v112;
signed char v113;
unsigned short v114;
unsigned short v115;
unsigned short v116;
v112 = 0 - 7;
v113 = -4 + 1;
v114 = 0 + 2;
v115 = 4 + 7;
v116 = v25 (v112, v113, v114, v115);
history[history_index++] = (int)v116;
}
break;
case 8: 
return 3U;
case 10: 
{
unsigned short v117;
signed char v118;
unsigned short v119;
unsigned short v120;
unsigned short v121;
v117 = 2 + 6;
v118 = v105 - -4;
v119 = 2 - 6;
v120 = 4 + 3;
v121 = v25 (v117, v118, v119, v120);
history[history_index++] = (int)v121;
}
break;
case 12: 
return 7U;
default: abort ();
}
}
}
}

signed short v17 (signed int v122, signed short v123, signed int v124)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
signed char v127 = 2;
unsigned char v126 = 0;
signed char v125 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (signed short v128, signed char v129)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned char v132 = 2;
unsigned short v131 = 4;
unsigned int v130 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (unsigned char v133)
{
history[history_index++] = (int)v133;
{
for (;;) {
signed short v136 = 1;
unsigned char v135 = 1;
signed char v134 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
