#include <stdlib.h>
signed char v1 (signed char, signed short);
signed char (*v2) (signed char, signed short) = v1;
void v3 (signed char, unsigned char, signed short, signed char);
void (*v4) (signed char, unsigned char, signed short, signed char) = v3;
void v5 (signed short, unsigned char, unsigned int);
void (*v6) (signed short, unsigned char, unsigned int) = v5;
extern void v7 (void);
extern void (*v8) (void);
extern unsigned int v9 (signed int, unsigned short, unsigned int);
extern unsigned int (*v10) (signed int, unsigned short, unsigned int);
static unsigned short v11 (unsigned int, unsigned char, signed int);
static unsigned short (*v12) (unsigned int, unsigned char, signed int) = v11;
extern unsigned char v13 (unsigned short, signed int);
extern unsigned char (*v14) (unsigned short, signed int);
extern signed short v15 (unsigned int, signed int, signed short);
extern signed short (*v16) (unsigned int, signed int, signed short);
extern signed short v17 (signed short, signed int);
extern signed short (*v18) (signed short, signed int);
extern unsigned char v19 (unsigned short, unsigned short);
extern unsigned char (*v20) (unsigned short, unsigned short);
extern void v21 (signed int, signed int, unsigned int);
extern void (*v22) (signed int, signed int, unsigned int);
extern void v25 (signed short, signed short, unsigned char);
extern void (*v26) (signed short, signed short, unsigned char);
signed short v27 (signed int, unsigned char, unsigned short);
signed short (*v28) (signed int, unsigned char, unsigned short) = v27;
extern unsigned short v29 (unsigned char, signed char);
extern unsigned short (*v30) (unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v93 = 0U;
signed int v92 = 1;
unsigned short v91 = 1;

signed short v27 (signed int v94, unsigned char v95, unsigned short v96)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed short v99 = 0;
unsigned short v98 = 2;
unsigned char v97 = 7;
trace++;
switch (trace)
{
case 6: 
return 2;
default: abort ();
}
}
}
}

static unsigned short v11 (unsigned int v100, unsigned char v101, signed int v102)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed short v105 = -4;
unsigned char v104 = 3;
unsigned short v103 = 3;
trace++;
switch (trace)
{
case 1: 
{
signed short v106;
signed int v107;
signed short v108;
v106 = v105 + 3;
v107 = -4 + 1;
v108 = v17 (v106, v107);
history[history_index++] = (int)v108;
}
break;
case 3: 
{
signed short v109;
signed int v110;
signed short v111;
v109 = v105 + 1;
v110 = v102 + -2;
v111 = v17 (v109, v110);
history[history_index++] = (int)v111;
}
break;
case 11: 
return 6;
default: abort ();
}
}
}
}

void v5 (signed short v112, unsigned char v113, unsigned int v114)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
unsigned char v117 = 6;
signed int v116 = 3;
unsigned short v115 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (signed char v118, unsigned char v119, signed short v120, signed char v121)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned short v124 = 1;
signed int v123 = 2;
unsigned char v122 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (signed char v125, signed short v126)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
signed short v129 = -1;
unsigned char v128 = 6;
signed char v127 = -4;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v130;
unsigned char v131;
signed int v132;
unsigned short v133;
v130 = 5U + 3U;
v131 = v128 - 3;
v132 = 0 + -3;
v133 = v11 (v130, v131, v132);
history[history_index++] = (int)v133;
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}
