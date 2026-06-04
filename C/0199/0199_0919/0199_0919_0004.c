#include <stdlib.h>
void v1 (signed short);
void (*v2) (signed short) = v1;
extern unsigned short v3 (unsigned short, unsigned char, signed char);
extern unsigned short (*v4) (unsigned short, unsigned char, signed char);
extern signed char v5 (unsigned short, unsigned char);
extern signed char (*v6) (unsigned short, unsigned char);
extern void v7 (void);
extern void (*v8) (void);
extern signed short v9 (signed short, signed int, signed int, unsigned char);
extern signed short (*v10) (signed short, signed int, signed int, unsigned char);
extern void v11 (unsigned char, unsigned char, signed char);
extern void (*v12) (unsigned char, unsigned char, signed char);
static void v13 (void);
static void (*v14) (void) = v13;
extern unsigned short v15 (unsigned int, unsigned int, signed char, signed int);
extern unsigned short (*v16) (unsigned int, unsigned int, signed char, signed int);
extern unsigned int v17 (signed short, unsigned short, unsigned short);
extern unsigned int (*v18) (signed short, unsigned short, unsigned short);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern signed char v21 (unsigned short, unsigned short);
extern signed char (*v22) (unsigned short, unsigned short);
extern unsigned char v23 (signed char);
extern unsigned char (*v24) (signed char);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern unsigned char v27 (unsigned int, signed short);
extern unsigned char (*v28) (unsigned int, signed short);
extern void v29 (signed char, signed short);
extern void (*v30) (signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v113 = -1;
signed short v112 = 0;
unsigned char v111 = 2;

static void v13 (void)
{
{
for (;;) {
unsigned char v116 = 3;
unsigned short v115 = 2;
unsigned short v114 = 6;
trace++;
switch (trace)
{
case 5: 
{
unsigned int v117;
unsigned int v118;
signed char v119;
signed int v120;
unsigned short v121;
v117 = 5U - 7U;
v118 = 0U + 4U;
v119 = 2 - -1;
v120 = -3 - 2;
v121 = v15 (v117, v118, v119, v120);
history[history_index++] = (int)v121;
}
break;
case 7: 
{
unsigned int v122;
unsigned int v123;
signed char v124;
signed int v125;
unsigned short v126;
v122 = 5U + 0U;
v123 = 5U + 4U;
v124 = -1 + 1;
v125 = -1 - 2;
v126 = v15 (v122, v123, v124, v125);
history[history_index++] = (int)v126;
}
break;
case 9: 
{
unsigned short v127;
unsigned short v128;
signed char v129;
v127 = v114 - 0;
v128 = v114 - 4;
v129 = v21 (v127, v128);
history[history_index++] = (int)v129;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}

void v1 (signed short v130)
{
history[history_index++] = (int)v130;
{
for (;;) {
signed int v133 = 3;
unsigned short v132 = 0;
signed char v131 = -3;
trace++;
switch (trace)
{
case 0: 
{
signed char v134;
unsigned char v135;
v134 = v131 - -1;
v135 = v23 (v134);
history[history_index++] = (int)v135;
}
break;
case 2: 
{
signed short v136;
unsigned short v137;
unsigned short v138;
unsigned int v139;
v136 = v130 - v130;
v137 = v132 + 0;
v138 = 7 - 7;
v139 = v17 (v136, v137, v138);
history[history_index++] = (int)v139;
}
break;
case 4: 
{
v13 ();
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
