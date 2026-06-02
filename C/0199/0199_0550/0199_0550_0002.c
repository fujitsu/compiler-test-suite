#include <stdlib.h>
extern signed char v1 (unsigned int);
extern signed char (*v2) (unsigned int);
extern signed int v3 (signed short, signed char);
extern signed int (*v4) (signed short, signed char);
unsigned int v5 (signed short, signed short, unsigned char, unsigned short);
unsigned int (*v6) (signed short, signed short, unsigned char, unsigned short) = v5;
extern unsigned short v7 (signed short, signed char);
extern unsigned short (*v8) (signed short, signed char);
extern void v9 (signed int, unsigned int, signed int);
extern void (*v10) (signed int, unsigned int, signed int);
extern signed short v11 (unsigned short, unsigned short);
extern signed short (*v12) (unsigned short, unsigned short);
extern void v13 (signed short, signed int);
extern void (*v14) (signed short, signed int);
signed short v15 (unsigned char, signed int, signed int, signed char);
signed short (*v16) (unsigned char, signed int, signed int, signed char) = v15;
static signed short v17 (unsigned char, signed char, signed short);
static signed short (*v18) (unsigned char, signed char, signed short) = v17;
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed int v21 (signed short, signed int, unsigned char, unsigned short);
extern signed int (*v22) (signed short, signed int, unsigned char, unsigned short);
extern signed short v23 (void);
extern signed short (*v24) (void);
unsigned int v25 (void);
unsigned int (*v26) (void) = v25;
extern signed int v27 (void);
extern signed int (*v28) (void);
extern signed int v29 (signed short, signed short, signed short, signed short);
extern signed int (*v30) (signed short, signed short, signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v88 = 2;
unsigned char v87 = 6;
signed char v86 = 1;

unsigned int v25 (void)
{
{
for (;;) {
unsigned short v91 = 2;
signed short v90 = 2;
signed int v89 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v17 (unsigned char v92, signed char v93, signed short v94)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
signed char v97 = -2;
unsigned short v96 = 6;
signed short v95 = -2;
trace++;
switch (trace)
{
case 4: 
{
signed short v98;
signed char v99;
unsigned short v100;
v98 = v95 - v94;
v99 = 1 + -2;
v100 = v7 (v98, v99);
history[history_index++] = (int)v100;
}
break;
case 6: 
return v95;
case 10: 
{
signed short v101;
signed char v102;
unsigned short v103;
v101 = v94 - 0;
v102 = v93 - v93;
v103 = v7 (v101, v102);
history[history_index++] = (int)v103;
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}

signed short v15 (unsigned char v104, signed int v105, signed int v106, signed char v107)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
signed short v110 = -1;
unsigned short v109 = 2;
signed char v108 = 1;
trace++;
switch (trace)
{
case 3: 
{
unsigned char v111;
signed char v112;
signed short v113;
signed short v114;
v111 = 0 - v104;
v112 = v107 - v107;
v113 = v110 + 0;
v114 = v17 (v111, v112, v113);
history[history_index++] = (int)v114;
}
break;
case 7: 
{
signed short v115;
v115 = v23 ();
history[history_index++] = (int)v115;
}
break;
case 9: 
{
unsigned char v116;
signed char v117;
signed short v118;
signed short v119;
v116 = 1 + 0;
v117 = v107 - v107;
v118 = -2 + v110;
v119 = v17 (v116, v117, v118);
history[history_index++] = (int)v119;
}
break;
case 13: 
return v110;
default: abort ();
}
}
}
}

unsigned int v5 (signed short v120, signed short v121, unsigned char v122, unsigned short v123)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
unsigned short v126 = 0;
unsigned short v125 = 6;
signed short v124 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
