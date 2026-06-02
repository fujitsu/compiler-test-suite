#include <stdlib.h>
void v1 (unsigned char, signed short, unsigned char);
void (*v2) (unsigned char, signed short, unsigned char) = v1;
extern signed char v3 (signed int);
extern signed char (*v4) (signed int);
signed int v5 (void);
signed int (*v6) (void) = v5;
extern signed int v7 (signed int, signed int);
extern signed int (*v8) (signed int, signed int);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern signed short v11 (signed char, unsigned int);
extern signed short (*v12) (signed char, unsigned int);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern signed int v15 (unsigned int);
extern signed int (*v16) (unsigned int);
void v17 (signed int);
void (*v18) (signed int) = v17;
static signed int v19 (unsigned int, unsigned int, signed char, unsigned char);
static signed int (*v20) (unsigned int, unsigned int, signed char, unsigned char) = v19;
extern unsigned short v21 (unsigned char, signed short);
extern unsigned short (*v22) (unsigned char, signed short);
extern signed int v23 (unsigned char);
extern signed int (*v24) (unsigned char);
static signed int v25 (unsigned char);
static signed int (*v26) (unsigned char) = v25;
extern void v27 (unsigned char, signed char);
extern void (*v28) (unsigned char, signed char);
extern void v29 (unsigned short, signed int);
extern void (*v30) (unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v98 = 6;
signed char v97 = 1;
signed short v96 = -2;

static signed int v25 (unsigned char v99)
{
history[history_index++] = (int)v99;
{
for (;;) {
unsigned int v102 = 3U;
unsigned char v101 = 0;
unsigned short v100 = 1;
trace++;
switch (trace)
{
case 2: 
return -2;
default: abort ();
}
}
}
}

static signed int v19 (unsigned int v103, unsigned int v104, signed char v105, unsigned char v106)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed int v109 = -4;
signed char v108 = -3;
unsigned int v107 = 5U;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v110;
signed int v111;
v110 = 7 - 5;
v111 = v25 (v110);
history[history_index++] = (int)v111;
}
break;
case 3: 
return v109;
default: abort ();
}
}
}
}

void v17 (signed int v112)
{
history[history_index++] = (int)v112;
{
for (;;) {
signed char v115 = 1;
unsigned int v114 = 4U;
signed int v113 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (void)
{
{
for (;;) {
unsigned int v118 = 0U;
unsigned char v117 = 3;
signed int v116 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (unsigned char v119, signed short v120, unsigned char v121)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
signed int v124 = -3;
unsigned char v123 = 2;
unsigned int v122 = 6U;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v125;
unsigned int v126;
signed char v127;
unsigned char v128;
signed int v129;
v125 = v122 + v122;
v126 = v122 - v122;
v127 = 2 + -3;
v128 = 6 + v119;
v129 = v19 (v125, v126, v127, v128);
history[history_index++] = (int)v129;
}
break;
case 4: 
{
signed short v130;
v130 = v13 ();
history[history_index++] = (int)v130;
}
break;
case 6: 
{
signed char v131;
unsigned int v132;
signed short v133;
v131 = -1 - 1;
v132 = 7U - 3U;
v133 = v11 (v131, v132);
history[history_index++] = (int)v133;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
