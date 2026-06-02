#include <stdlib.h>
unsigned short v1 (signed int, signed char, unsigned short, signed short);
unsigned short (*v2) (signed int, signed char, unsigned short, signed short) = v1;
unsigned char v3 (unsigned short, signed int, unsigned int, unsigned short);
unsigned char (*v4) (unsigned short, signed int, unsigned int, unsigned short) = v3;
signed short v5 (signed char);
signed short (*v6) (signed char) = v5;
extern unsigned char v9 (unsigned char, unsigned short, unsigned short);
extern unsigned char (*v10) (unsigned char, unsigned short, unsigned short);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
static signed int v13 (unsigned char, signed short);
static signed int (*v14) (unsigned char, signed short) = v13;
unsigned short v15 (void);
unsigned short (*v16) (void) = v15;
extern void v17 (unsigned short, unsigned char, unsigned char);
extern void (*v18) (unsigned short, unsigned char, unsigned char);
signed int v19 (unsigned char, unsigned short);
signed int (*v20) (unsigned char, unsigned short) = v19;
static unsigned int v21 (signed int, signed char, unsigned short, signed int);
static unsigned int (*v22) (signed int, signed char, unsigned short, signed int) = v21;
extern void v23 (unsigned int, unsigned char, signed int);
extern void (*v24) (unsigned int, unsigned char, signed int);
extern signed char v25 (void);
extern signed char (*v26) (void);
unsigned short v27 (void);
unsigned short (*v28) (void) = v27;
extern unsigned char v29 (unsigned int, unsigned short, signed short, signed short);
extern unsigned char (*v30) (unsigned int, unsigned short, signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v78 = 0;
unsigned short v77 = 5;
signed short v76 = 3;

unsigned short v27 (void)
{
{
for (;;) {
signed char v81 = -2;
unsigned char v80 = 6;
unsigned char v79 = 4;
trace++;
switch (trace)
{
case 4: 
{
unsigned char v82;
signed short v83;
signed int v84;
v82 = v79 + 5;
v83 = -2 - -4;
v84 = v13 (v82, v83);
history[history_index++] = (int)v84;
}
break;
case 14: 
return 3;
default: abort ();
}
}
}
}

static unsigned int v21 (signed int v85, signed char v86, unsigned short v87, signed int v88)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
unsigned int v91 = 1U;
unsigned int v90 = 0U;
signed char v89 = -2;
trace++;
switch (trace)
{
case 6: 
{
signed char v92;
v92 = v25 ();
history[history_index++] = (int)v92;
}
break;
case 8: 
{
signed char v93;
v93 = v25 ();
history[history_index++] = (int)v93;
}
break;
case 10: 
{
signed char v94;
v94 = v25 ();
history[history_index++] = (int)v94;
}
break;
case 12: 
return v91;
default: abort ();
}
}
}
}

signed int v19 (unsigned char v95, unsigned short v96)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
unsigned int v99 = 6U;
unsigned char v98 = 5;
signed char v97 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (void)
{
{
for (;;) {
unsigned short v102 = 1;
signed char v101 = 2;
signed char v100 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v13 (unsigned char v103, signed short v104)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
unsigned int v107 = 0U;
signed short v106 = -3;
unsigned short v105 = 3;
trace++;
switch (trace)
{
case 5: 
{
signed int v108;
signed char v109;
unsigned short v110;
signed int v111;
unsigned int v112;
v108 = -3 - 2;
v109 = -4 + 3;
v110 = 6 + 7;
v111 = -3 + 3;
v112 = v21 (v108, v109, v110, v111);
history[history_index++] = (int)v112;
}
break;
case 13: 
return 0;
default: abort ();
}
}
}
}

signed short v5 (signed char v113)
{
history[history_index++] = (int)v113;
{
for (;;) {
unsigned short v116 = 7;
signed int v115 = 2;
unsigned char v114 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (unsigned short v117, signed int v118, unsigned int v119, unsigned short v120)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
unsigned char v123 = 7;
unsigned int v122 = 3U;
signed int v121 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (signed int v124, signed char v125, unsigned short v126, signed short v127)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
signed char v130 = -3;
signed int v129 = 3;
signed int v128 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v131;
v131 = v11 ();
history[history_index++] = (int)v131;
}
break;
case 18: 
return v126;
default: abort ();
}
}
}
}
