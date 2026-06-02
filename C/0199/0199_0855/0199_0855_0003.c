#include <stdlib.h>
signed char v1 (unsigned char);
signed char (*v2) (unsigned char) = v1;
extern unsigned int v3 (unsigned short, signed int, unsigned short, signed short);
extern unsigned int (*v4) (unsigned short, signed int, unsigned short, signed short);
extern signed short v5 (signed int, unsigned short, unsigned int);
extern signed short (*v6) (signed int, unsigned short, unsigned int);
extern void v7 (unsigned char);
extern void (*v8) (unsigned char);
extern signed char v9 (signed int, unsigned char);
extern signed char (*v10) (signed int, unsigned char);
static signed short v11 (signed short);
static signed short (*v12) (signed short) = v11;
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
signed int v15 (void);
signed int (*v16) (void) = v15;
extern signed char v17 (unsigned char);
extern signed char (*v18) (unsigned char);
extern unsigned char v19 (unsigned short, unsigned int);
extern unsigned char (*v20) (unsigned short, unsigned int);
extern unsigned char v21 (signed short, signed short);
extern unsigned char (*v22) (signed short, signed short);
signed int v25 (signed int, unsigned short);
signed int (*v26) (signed int, unsigned short) = v25;
extern unsigned short v27 (unsigned short, unsigned short);
extern unsigned short (*v28) (unsigned short, unsigned short);
extern void v29 (unsigned char, signed int, unsigned char, unsigned int);
extern void (*v30) (unsigned char, signed int, unsigned char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v100 = 0;
signed short v99 = 2;
signed char v98 = -3;

signed int v25 (signed int v101, unsigned short v102)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed short v105 = 2;
unsigned short v104 = 5;
signed int v103 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (void)
{
{
for (;;) {
unsigned short v108 = 1;
signed short v107 = 1;
unsigned char v106 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v11 (signed short v109)
{
history[history_index++] = (int)v109;
{
for (;;) {
unsigned char v112 = 5;
signed int v111 = -4;
unsigned short v110 = 2;
trace++;
switch (trace)
{
case 3: 
{
signed short v113;
signed short v114;
unsigned char v115;
v113 = -2 - 0;
v114 = -4 - -4;
v115 = v21 (v113, v114);
history[history_index++] = (int)v115;
}
break;
case 5: 
{
unsigned char v116;
signed char v117;
v116 = 7 - 3;
v117 = v17 (v116);
history[history_index++] = (int)v117;
}
break;
case 7: 
{
signed short v118;
signed short v119;
unsigned char v120;
v118 = v109 - 3;
v119 = 0 - v109;
v120 = v21 (v118, v119);
history[history_index++] = (int)v120;
}
break;
case 15: 
return v109;
default: abort ();
}
}
}
}

signed char v1 (unsigned char v121)
{
history[history_index++] = (int)v121;
{
for (;;) {
unsigned char v124 = 3;
unsigned short v123 = 7;
unsigned short v122 = 6;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v125;
signed char v126;
v125 = v121 - 4;
v126 = v17 (v125);
history[history_index++] = (int)v126;
}
break;
case 2: 
{
signed short v127;
signed short v128;
v127 = 0 - 1;
v128 = v11 (v127);
history[history_index++] = (int)v128;
}
break;
case 16: 
return -1;
default: abort ();
}
}
}
}
