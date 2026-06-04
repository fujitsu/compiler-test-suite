#include <stdlib.h>
signed short v1 (unsigned char, unsigned char, unsigned int);
signed short (*v2) (unsigned char, unsigned char, unsigned int) = v1;
extern signed int v3 (unsigned char, signed char);
extern signed int (*v4) (unsigned char, signed char);
extern unsigned char v5 (signed int, unsigned char, signed int);
extern unsigned char (*v6) (signed int, unsigned char, signed int);
extern signed short v7 (unsigned char, signed char);
extern signed short (*v8) (unsigned char, signed char);
extern unsigned short v9 (unsigned int, signed int);
extern unsigned short (*v10) (unsigned int, signed int);
extern signed short v11 (unsigned char);
extern signed short (*v12) (unsigned char);
extern unsigned int v13 (unsigned short, unsigned short);
extern unsigned int (*v14) (unsigned short, unsigned short);
signed short v15 (void);
signed short (*v16) (void) = v15;
extern signed short v17 (unsigned int, signed short);
extern signed short (*v18) (unsigned int, signed short);
extern signed int v19 (signed short, unsigned int);
extern signed int (*v20) (signed short, unsigned int);
extern void v21 (unsigned short, unsigned short);
extern void (*v22) (unsigned short, unsigned short);
extern signed int v23 (void);
extern signed int (*v24) (void);
signed int v25 (void);
signed int (*v26) (void) = v25;
extern signed int v27 (void);
extern signed int (*v28) (void);
static unsigned int v29 (signed short, unsigned char, unsigned short);
static unsigned int (*v30) (signed short, unsigned char, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v82 = 2;
signed short v81 = 2;
signed short v80 = 0;

static unsigned int v29 (signed short v83, unsigned char v84, unsigned short v85)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed char v88 = 0;
unsigned char v87 = 0;
signed int v86 = 3;
trace++;
switch (trace)
{
case 11: 
return 7U;
default: abort ();
}
}
}
}

signed int v25 (void)
{
{
for (;;) {
unsigned short v91 = 4;
unsigned char v90 = 7;
unsigned short v89 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (void)
{
{
for (;;) {
unsigned short v94 = 3;
unsigned int v93 = 5U;
unsigned int v92 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (unsigned char v95, unsigned char v96, unsigned int v97)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
unsigned short v100 = 4;
signed short v99 = 2;
unsigned short v98 = 7;
trace++;
switch (trace)
{
case 0: 
{
signed short v101;
unsigned int v102;
signed int v103;
v101 = v99 + 2;
v102 = v97 - 5U;
v103 = v19 (v101, v102);
history[history_index++] = (int)v103;
}
break;
case 2: 
{
unsigned short v104;
unsigned short v105;
unsigned int v106;
v104 = v98 + 4;
v105 = 1 - v98;
v106 = v13 (v104, v105);
history[history_index++] = (int)v106;
}
break;
case 4: 
{
signed int v107;
unsigned char v108;
signed int v109;
unsigned char v110;
v107 = -2 + 3;
v108 = 6 + v95;
v109 = 3 + -3;
v110 = v5 (v107, v108, v109);
history[history_index++] = (int)v110;
}
break;
case 6: 
{
unsigned char v111;
signed short v112;
v111 = v96 - v96;
v112 = v11 (v111);
history[history_index++] = (int)v112;
}
break;
case 8: 
{
unsigned char v113;
signed char v114;
signed short v115;
v113 = v95 - v96;
v114 = -4 - 0;
v115 = v7 (v113, v114);
history[history_index++] = (int)v115;
}
break;
case 10: 
{
signed short v116;
unsigned char v117;
unsigned short v118;
unsigned int v119;
v116 = v99 + v99;
v117 = v96 - v96;
v118 = 5 - 3;
v119 = v29 (v116, v117, v118);
history[history_index++] = (int)v119;
}
break;
case 12: 
return 3;
case 14: 
return -4;
default: abort ();
}
}
}
}
