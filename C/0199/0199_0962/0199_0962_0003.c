#include <stdlib.h>
extern signed char v3 (signed short, signed char);
extern signed char (*v4) (signed short, signed char);
unsigned int v5 (unsigned int, signed char, signed short, signed short);
unsigned int (*v6) (unsigned int, signed char, signed short, signed short) = v5;
extern unsigned short v7 (unsigned int, unsigned short, unsigned char, unsigned char);
extern unsigned short (*v8) (unsigned int, unsigned short, unsigned char, unsigned char);
extern void v9 (void);
extern void (*v10) (void);
extern unsigned short v11 (signed short, signed short, signed short, unsigned short);
extern unsigned short (*v12) (signed short, signed short, signed short, unsigned short);
extern signed int v13 (signed char, unsigned int, unsigned char);
extern signed int (*v14) (signed char, unsigned int, unsigned char);
extern unsigned short v15 (signed int);
extern unsigned short (*v16) (signed int);
static signed char v17 (unsigned char, signed int, signed int, signed short);
static signed char (*v18) (unsigned char, signed int, signed int, signed short) = v17;
extern signed int v19 (signed short, unsigned short);
extern signed int (*v20) (signed short, unsigned short);
unsigned char v21 (unsigned int, signed short, signed char);
unsigned char (*v22) (unsigned int, signed short, signed char) = v21;
extern signed char v23 (signed int, unsigned int, unsigned int, unsigned short);
extern signed char (*v24) (signed int, unsigned int, unsigned int, unsigned short);
signed short v25 (void);
signed short (*v26) (void) = v25;
extern signed char v27 (signed short, unsigned short, unsigned short, unsigned short);
extern signed char (*v28) (signed short, unsigned short, unsigned short, unsigned short);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v99 = 2;
unsigned char v98 = 7;
signed char v97 = 1;

signed short v25 (void)
{
{
for (;;) {
signed short v102 = 1;
signed short v101 = 0;
unsigned int v100 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v21 (unsigned int v103, signed short v104, signed char v105)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed int v108 = -3;
signed int v107 = -2;
unsigned char v106 = 1;
trace++;
switch (trace)
{
case 1: 
{
signed short v109;
v109 = v29 ();
history[history_index++] = (int)v109;
}
break;
case 3: 
return v106;
default: abort ();
}
}
}
}

static signed char v17 (unsigned char v110, signed int v111, signed int v112, signed short v113)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
signed char v116 = 2;
unsigned int v115 = 0U;
signed int v114 = -3;
trace++;
switch (trace)
{
case 8: 
return v116;
default: abort ();
}
}
}
}

unsigned int v5 (unsigned int v117, signed char v118, signed short v119, signed short v120)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
unsigned short v123 = 0;
unsigned short v122 = 7;
signed char v121 = -4;
trace++;
switch (trace)
{
case 5: 
{
signed int v124;
unsigned short v125;
v124 = -4 - -3;
v125 = v15 (v124);
history[history_index++] = (int)v125;
}
break;
case 7: 
{
unsigned char v126;
signed int v127;
signed int v128;
signed short v129;
signed char v130;
v126 = 6 + 0;
v127 = 2 + 1;
v128 = 0 + -2;
v129 = v119 - v120;
v130 = v17 (v126, v127, v128, v129);
history[history_index++] = (int)v130;
}
break;
case 9: 
{
signed short v131;
v131 = v29 ();
history[history_index++] = (int)v131;
}
break;
case 11: 
return 2U;
default: abort ();
}
}
}
}
