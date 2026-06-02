#include <stdlib.h>
extern unsigned int v1 (unsigned char, unsigned char, signed char);
extern unsigned int (*v2) (unsigned char, unsigned char, signed char);
extern signed char v3 (signed char);
extern signed char (*v4) (signed char);
extern unsigned int v5 (signed short, signed short, unsigned char, signed short);
extern unsigned int (*v6) (signed short, signed short, unsigned char, signed short);
extern signed short v9 (unsigned short, unsigned short);
extern signed short (*v10) (unsigned short, unsigned short);
extern void v11 (void);
extern void (*v12) (void);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern unsigned short v15 (unsigned short, unsigned short, unsigned char);
extern unsigned short (*v16) (unsigned short, unsigned short, unsigned char);
extern signed char v17 (void);
extern signed char (*v18) (void);
void v21 (signed int, unsigned char);
void (*v22) (signed int, unsigned char) = v21;
void v23 (unsigned char, unsigned short, unsigned char, unsigned int);
void (*v24) (unsigned char, unsigned short, unsigned char, unsigned int) = v23;
extern unsigned char v25 (signed int, unsigned short);
extern unsigned char (*v26) (signed int, unsigned short);
unsigned char v27 (unsigned short);
unsigned char (*v28) (unsigned short) = v27;
void v29 (void);
void (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v108 = 4U;
unsigned short v107 = 4;
signed short v106 = -4;

void v29 (void)
{
{
for (;;) {
unsigned short v111 = 0;
signed char v110 = -2;
unsigned short v109 = 4;
trace++;
switch (trace)
{
case 11: 
return;
default: abort ();
}
}
}
}

unsigned char v27 (unsigned short v112)
{
history[history_index++] = (int)v112;
{
for (;;) {
unsigned int v115 = 0U;
unsigned char v114 = 7;
unsigned short v113 = 6;
trace++;
switch (trace)
{
case 4: 
{
signed short v116;
signed short v117;
unsigned char v118;
signed short v119;
unsigned int v120;
v116 = -4 - -1;
v117 = -3 + 3;
v118 = 3 - 0;
v119 = -3 + 0;
v120 = v5 (v116, v117, v118, v119);
history[history_index++] = (int)v120;
}
break;
case 8: 
{
signed short v121;
signed short v122;
unsigned char v123;
signed short v124;
unsigned int v125;
v121 = 0 - -3;
v122 = -3 - -1;
v123 = 7 + 5;
v124 = -1 + -3;
v125 = v5 (v121, v122, v123, v124);
history[history_index++] = (int)v125;
}
break;
case 14: 
return 6;
default: abort ();
}
}
}
}

void v23 (unsigned char v126, unsigned short v127, unsigned char v128, unsigned int v129)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned short v132 = 4;
unsigned char v131 = 4;
signed char v130 = 0;
trace++;
switch (trace)
{
case 6: 
return;
default: abort ();
}
}
}
}

void v21 (signed int v133, unsigned char v134)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
unsigned short v137 = 2;
signed char v136 = 2;
unsigned int v135 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
