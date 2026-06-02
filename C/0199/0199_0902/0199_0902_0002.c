#include <stdlib.h>
extern unsigned short v3 (unsigned int, unsigned int, unsigned char);
extern unsigned short (*v4) (unsigned int, unsigned int, unsigned char);
extern signed int v5 (signed char, unsigned char, signed int);
extern signed int (*v6) (signed char, unsigned char, signed int);
unsigned int v7 (unsigned char, signed short, unsigned char, signed char);
unsigned int (*v8) (unsigned char, signed short, unsigned char, signed char) = v7;
extern unsigned short v9 (unsigned int, unsigned int, signed int);
extern unsigned short (*v10) (unsigned int, unsigned int, signed int);
extern void v11 (unsigned int, unsigned short, signed int);
extern void (*v12) (unsigned int, unsigned short, signed int);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
signed char v15 (signed int, unsigned int, unsigned int, unsigned short);
signed char (*v16) (signed int, unsigned int, unsigned int, unsigned short) = v15;
extern signed int v17 (unsigned int, signed short, unsigned int);
extern signed int (*v18) (unsigned int, signed short, unsigned int);
extern unsigned short v19 (signed char, unsigned short, unsigned short);
extern unsigned short (*v20) (signed char, unsigned short, unsigned short);
extern unsigned int v21 (signed int, signed char, unsigned short);
extern unsigned int (*v22) (signed int, signed char, unsigned short);
unsigned short v23 (signed short, unsigned char);
unsigned short (*v24) (signed short, unsigned char) = v23;
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
static unsigned short v27 (signed short, signed short, signed short);
static unsigned short (*v28) (signed short, signed short, signed short) = v27;
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v81 = -1;
unsigned char v80 = 2;
unsigned short v79 = 6;

static unsigned short v27 (signed short v82, signed short v83, signed short v84)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
signed int v87 = 1;
unsigned char v86 = 0;
unsigned int v85 = 6U;
trace++;
switch (trace)
{
case 2: 
return 3;
case 4: 
{
signed char v88;
v88 = v29 ();
history[history_index++] = (int)v88;
}
break;
case 6: 
{
signed char v89;
v89 = v29 ();
history[history_index++] = (int)v89;
}
break;
case 8: 
return 5;
case 10: 
{
signed char v90;
v90 = v29 ();
history[history_index++] = (int)v90;
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}

unsigned short v23 (signed short v91, unsigned char v92)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned int v95 = 0U;
signed char v94 = 2;
unsigned int v93 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (signed int v96, unsigned int v97, unsigned int v98, unsigned short v99)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
signed int v102 = 0;
unsigned int v101 = 1U;
signed short v100 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (unsigned char v103, signed short v104, unsigned char v105, signed char v106)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
unsigned int v109 = 7U;
signed short v108 = 1;
signed int v107 = -4;
trace++;
switch (trace)
{
case 1: 
{
signed short v110;
signed short v111;
signed short v112;
unsigned short v113;
v110 = v104 - v104;
v111 = v108 - v104;
v112 = -1 - v108;
v113 = v27 (v110, v111, v112);
history[history_index++] = (int)v113;
}
break;
case 3: 
{
signed short v114;
signed short v115;
signed short v116;
unsigned short v117;
v114 = v104 - v104;
v115 = 1 + v104;
v116 = v108 - v104;
v117 = v27 (v114, v115, v116);
history[history_index++] = (int)v117;
}
break;
case 9: 
{
signed short v118;
signed short v119;
signed short v120;
unsigned short v121;
v118 = 1 + v104;
v119 = v108 + -2;
v120 = v108 - v104;
v121 = v27 (v118, v119, v120);
history[history_index++] = (int)v121;
}
break;
case 13: 
return 4U;
default: abort ();
}
}
}
}
