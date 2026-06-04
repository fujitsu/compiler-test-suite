#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed int v5 (signed short, unsigned char, signed short);
extern signed int (*v6) (signed short, unsigned char, signed short);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern unsigned int v9 (unsigned short, unsigned int);
extern unsigned int (*v10) (unsigned short, unsigned int);
extern signed char v11 (signed char, signed char, unsigned int);
extern signed char (*v12) (signed char, signed char, unsigned int);
extern void v13 (signed int, unsigned char, unsigned char, signed int);
extern void (*v14) (signed int, unsigned char, unsigned char, signed int);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern signed short v17 (signed short, signed short, unsigned short);
extern signed short (*v18) (signed short, signed short, unsigned short);
extern signed char v19 (signed char, unsigned short);
extern signed char (*v20) (signed char, unsigned short);
void v21 (void);
void (*v22) (void) = v21;
unsigned int v23 (unsigned short);
unsigned int (*v24) (unsigned short) = v23;
extern signed char v25 (unsigned int);
extern signed char (*v26) (unsigned int);
static unsigned short v27 (void);
static unsigned short (*v28) (void) = v27;
extern signed short v29 (unsigned int, signed char, unsigned char, signed int);
extern signed short (*v30) (unsigned int, signed char, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v107 = -3;
signed short v106 = 1;
unsigned int v105 = 6U;

static unsigned short v27 (void)
{
{
for (;;) {
signed char v110 = -1;
signed int v109 = -2;
unsigned int v108 = 4U;
trace++;
switch (trace)
{
case 9: 
return 7;
case 11: 
return 6;
default: abort ();
}
}
}
}

unsigned int v23 (unsigned short v111)
{
history[history_index++] = (int)v111;
{
for (;;) {
signed char v114 = -3;
signed short v113 = -4;
unsigned char v112 = 7;
trace++;
switch (trace)
{
case 2: 
{
unsigned int v115;
signed char v116;
unsigned char v117;
signed int v118;
signed short v119;
v115 = 3U + 5U;
v116 = v114 + 0;
v117 = v112 - 1;
v118 = 3 + -4;
v119 = v29 (v115, v116, v117, v118);
history[history_index++] = (int)v119;
}
break;
case 4: 
{
unsigned int v120;
signed char v121;
unsigned char v122;
signed int v123;
signed short v124;
v120 = 7U - 2U;
v121 = -1 + -1;
v122 = v112 - v112;
v123 = 1 + 1;
v124 = v29 (v120, v121, v122, v123);
history[history_index++] = (int)v124;
}
break;
case 6: 
{
unsigned int v125;
signed char v126;
unsigned char v127;
signed int v128;
signed short v129;
v125 = 3U - 7U;
v126 = v114 - 1;
v127 = 7 - v112;
v128 = -2 - 2;
v129 = v29 (v125, v126, v127, v128);
history[history_index++] = (int)v129;
}
break;
case 8: 
{
unsigned short v130;
v130 = v27 ();
history[history_index++] = (int)v130;
}
break;
case 10: 
{
unsigned short v131;
v131 = v27 ();
history[history_index++] = (int)v131;
}
break;
case 12: 
return 5U;
default: abort ();
}
}
}
}

void v21 (void)
{
{
for (;;) {
signed short v134 = -3;
unsigned short v133 = 0;
signed short v132 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
