#include <stdlib.h>
unsigned short v1 (unsigned char, signed char, unsigned char);
unsigned short (*v2) (unsigned char, signed char, unsigned char) = v1;
extern signed int v3 (void);
extern signed int (*v4) (void);
static void v5 (signed short, signed char);
static void (*v6) (signed short, signed char) = v5;
extern signed char v7 (unsigned char, signed int);
extern signed char (*v8) (unsigned char, signed int);
extern signed char v9 (signed char);
extern signed char (*v10) (signed char);
extern signed short v11 (unsigned short);
extern signed short (*v12) (unsigned short);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
static signed int v19 (unsigned short, signed char, signed char);
static signed int (*v20) (unsigned short, signed char, signed char) = v19;
signed short v21 (void);
signed short (*v22) (void) = v21;
extern void v23 (unsigned int, signed int);
extern void (*v24) (unsigned int, signed int);
extern unsigned short v25 (unsigned short, unsigned short);
extern unsigned short (*v26) (unsigned short, unsigned short);
extern signed short v27 (signed char);
extern signed short (*v28) (signed char);
extern unsigned char v29 (signed short, signed int, unsigned short, unsigned short);
extern unsigned char (*v30) (signed short, signed int, unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v77 = 3;
signed int v76 = -4;
unsigned char v75 = 2;

signed short v21 (void)
{
{
for (;;) {
unsigned int v80 = 1U;
unsigned short v79 = 5;
unsigned int v78 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v19 (unsigned short v81, signed char v82, signed char v83)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
signed char v86 = -3;
signed int v85 = 1;
unsigned short v84 = 4;
trace++;
switch (trace)
{
case 1: 
{
signed short v87;
signed int v88;
unsigned short v89;
unsigned short v90;
unsigned char v91;
v87 = 2 - 1;
v88 = -3 + 1;
v89 = 0 + 4;
v90 = v84 + v84;
v91 = v29 (v87, v88, v89, v90);
history[history_index++] = (int)v91;
}
break;
case 3: 
{
signed short v92;
signed int v93;
unsigned short v94;
unsigned short v95;
unsigned char v96;
v92 = -4 + -3;
v93 = 1 - v85;
v94 = v81 - v81;
v95 = v81 - v84;
v96 = v29 (v92, v93, v94, v95);
history[history_index++] = (int)v96;
}
break;
case 5: 
return v85;
default: abort ();
}
}
}
}

static void v5 (signed short v97, signed char v98)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
unsigned char v101 = 0;
unsigned int v100 = 1U;
unsigned char v99 = 3;
trace++;
switch (trace)
{
case 9: 
{
signed char v102;
signed short v103;
v102 = 1 - -1;
v103 = v27 (v102);
history[history_index++] = (int)v103;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}

unsigned short v1 (unsigned char v104, signed char v105, unsigned char v106)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
unsigned short v109 = 5;
unsigned short v108 = 5;
signed char v107 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v110;
signed char v111;
signed char v112;
signed int v113;
v110 = 6 + v108;
v111 = 2 + v105;
v112 = v105 - v107;
v113 = v19 (v110, v111, v112);
history[history_index++] = (int)v113;
}
break;
case 6: 
{
unsigned char v114;
signed int v115;
signed char v116;
v114 = v106 + 4;
v115 = -2 - 0;
v116 = v7 (v114, v115);
history[history_index++] = (int)v116;
}
break;
case 8: 
{
signed short v117;
signed char v118;
v117 = 2 - -3;
v118 = v107 + v105;
v5 (v117, v118);
}
break;
case 12: 
return v109;
default: abort ();
}
}
}
}
