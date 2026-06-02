#include <stdlib.h>
extern unsigned char v1 (unsigned int, signed char);
extern unsigned char (*v2) (unsigned int, signed char);
extern void v3 (void);
extern void (*v4) (void);
signed int v5 (unsigned short, unsigned char, signed char, unsigned char);
signed int (*v6) (unsigned short, unsigned char, signed char, unsigned char) = v5;
extern void v7 (signed char, unsigned short, signed int, signed short);
extern void (*v8) (signed char, unsigned short, signed int, signed short);
signed int v11 (void);
signed int (*v12) (void) = v11;
extern unsigned int v13 (signed short, signed char, unsigned int, unsigned int);
extern unsigned int (*v14) (signed short, signed char, unsigned int, unsigned int);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
static signed int v17 (unsigned char, signed char, unsigned int);
static signed int (*v18) (unsigned char, signed char, unsigned int) = v17;
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern signed int v23 (unsigned int, unsigned int, signed short, signed int);
extern signed int (*v24) (unsigned int, unsigned int, signed short, signed int);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern void v27 (signed short);
extern void (*v28) (signed short);
extern void v29 (signed char);
extern void (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v107 = -3;
unsigned short v106 = 3;
signed int v105 = 3;

static signed int v17 (unsigned char v108, signed char v109, unsigned int v110)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed short v113 = 0;
unsigned short v112 = 0;
signed char v111 = 1;
trace++;
switch (trace)
{
case 3: 
{
unsigned char v114;
v114 = v21 ();
history[history_index++] = (int)v114;
}
break;
case 5: 
return 3;
case 7: 
{
unsigned char v115;
v115 = v21 ();
history[history_index++] = (int)v115;
}
break;
case 13: 
return -3;
default: abort ();
}
}
}
}

signed int v11 (void)
{
{
for (;;) {
unsigned short v118 = 4;
unsigned int v117 = 1U;
signed char v116 = -4;
trace++;
switch (trace)
{
case 2: 
{
unsigned char v119;
signed char v120;
unsigned int v121;
signed int v122;
v119 = 5 + 2;
v120 = 2 - v116;
v121 = 4U + 4U;
v122 = v17 (v119, v120, v121);
history[history_index++] = (int)v122;
}
break;
case 6: 
{
unsigned char v123;
signed char v124;
unsigned int v125;
signed int v126;
v123 = 2 - 0;
v124 = v116 + -2;
v125 = 0U - v117;
v126 = v17 (v123, v124, v125);
history[history_index++] = (int)v126;
}
break;
case 14: 
return -3;
default: abort ();
}
}
}
}

signed int v5 (unsigned short v127, unsigned char v128, signed char v129, unsigned char v130)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
signed char v133 = 1;
unsigned int v132 = 3U;
unsigned int v131 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
