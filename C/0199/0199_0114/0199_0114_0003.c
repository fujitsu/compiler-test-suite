#include <stdlib.h>
extern signed short v1 (signed short, unsigned int);
extern signed short (*v2) (signed short, unsigned int);
extern void v3 (unsigned int, signed short, unsigned char, unsigned short);
extern void (*v4) (unsigned int, signed short, unsigned char, unsigned short);
unsigned int v5 (signed short, signed char, signed int);
unsigned int (*v6) (signed short, signed char, signed int) = v5;
unsigned short v7 (signed int, unsigned short);
unsigned short (*v8) (signed int, unsigned short) = v7;
extern unsigned short v9 (signed char, unsigned short, unsigned int, signed int);
extern unsigned short (*v10) (signed char, unsigned short, unsigned int, signed int);
signed char v11 (signed short, signed short, unsigned short, unsigned short);
signed char (*v12) (signed short, signed short, unsigned short, unsigned short) = v11;
signed int v13 (unsigned char, signed int, unsigned int, signed int);
signed int (*v14) (unsigned char, signed int, unsigned int, signed int) = v13;
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern signed short v17 (unsigned int);
extern signed short (*v18) (unsigned int);
extern unsigned short v19 (unsigned char, unsigned char);
extern unsigned short (*v20) (unsigned char, unsigned char);
static signed short v21 (unsigned int, unsigned short, signed int);
static signed short (*v22) (unsigned int, unsigned short, signed int) = v21;
unsigned int v23 (void);
unsigned int (*v24) (void) = v23;
extern signed char v25 (unsigned char);
extern signed char (*v26) (unsigned char);
signed int v27 (unsigned char);
signed int (*v28) (unsigned char) = v27;
extern void v29 (signed int, unsigned short);
extern void (*v30) (signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v79 = 2;
signed char v78 = 0;
signed short v77 = -3;

signed int v27 (unsigned char v80)
{
history[history_index++] = (int)v80;
{
for (;;) {
unsigned char v83 = 4;
unsigned short v82 = 5;
signed short v81 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v23 (void)
{
{
for (;;) {
unsigned int v86 = 6U;
signed short v85 = 1;
signed char v84 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v21 (unsigned int v87, unsigned short v88, signed int v89)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned int v92 = 4U;
unsigned int v91 = 7U;
unsigned short v90 = 1;
trace++;
switch (trace)
{
case 3: 
return -1;
case 5: 
return -2;
case 7: 
return 3;
default: abort ();
}
}
}
}

signed int v13 (unsigned char v93, signed int v94, unsigned int v95, signed int v96)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed int v99 = 2;
signed short v98 = 2;
unsigned short v97 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (signed short v100, signed short v101, unsigned short v102, unsigned short v103)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
unsigned char v106 = 1;
signed char v105 = -2;
unsigned int v104 = 2U;
trace++;
switch (trace)
{
case 2: 
{
unsigned int v107;
unsigned short v108;
signed int v109;
signed short v110;
v107 = 1U + 6U;
v108 = v102 - 2;
v109 = 3 - 1;
v110 = v21 (v107, v108, v109);
history[history_index++] = (int)v110;
}
break;
case 4: 
{
unsigned int v111;
unsigned short v112;
signed int v113;
signed short v114;
v111 = 4U - v104;
v112 = v103 - 3;
v113 = -1 - 1;
v114 = v21 (v111, v112, v113);
history[history_index++] = (int)v114;
}
break;
case 6: 
{
unsigned int v115;
unsigned short v116;
signed int v117;
signed short v118;
v115 = 0U + 1U;
v116 = v102 + v103;
v117 = 1 + 1;
v118 = v21 (v115, v116, v117);
history[history_index++] = (int)v118;
}
break;
case 8: 
return v105;
case 10: 
{
unsigned short v119;
v119 = v15 ();
history[history_index++] = (int)v119;
}
break;
case 12: 
return -1;
default: abort ();
}
}
}
}

unsigned short v7 (signed int v120, unsigned short v121)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
signed short v124 = 1;
unsigned char v123 = 5;
unsigned short v122 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (signed short v125, signed char v126, signed int v127)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
signed char v130 = -2;
unsigned char v129 = 0;
signed char v128 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
