#include <stdlib.h>
unsigned char v1 (signed int);
unsigned char (*v2) (signed int) = v1;
extern void v3 (void);
extern void (*v4) (void);
void v5 (void);
void (*v6) (void) = v5;
extern void v7 (unsigned short, unsigned char, signed char);
extern void (*v8) (unsigned short, unsigned char, signed char);
extern void v9 (void);
extern void (*v10) (void);
static unsigned short v11 (signed int);
static unsigned short (*v12) (signed int) = v11;
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern void v17 (unsigned int, unsigned int, unsigned int);
extern void (*v18) (unsigned int, unsigned int, unsigned int);
extern unsigned int v19 (unsigned int, signed int);
extern unsigned int (*v20) (unsigned int, signed int);
extern signed int v21 (unsigned int);
extern signed int (*v22) (unsigned int);
extern void v23 (signed short, signed int, signed int, unsigned int);
extern void (*v24) (signed short, signed int, signed int, unsigned int);
extern unsigned char v25 (unsigned int, signed int);
extern unsigned char (*v26) (unsigned int, signed int);
extern signed char v27 (void);
extern signed char (*v28) (void);
unsigned int v29 (unsigned int, signed int);
unsigned int (*v30) (unsigned int, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v113 = -3;
unsigned short v112 = 0;
signed char v111 = 2;

unsigned int v29 (unsigned int v114, signed int v115)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned char v118 = 2;
unsigned int v117 = 3U;
signed int v116 = -3;
trace++;
switch (trace)
{
case 6: 
return v114;
case 8: 
return v117;
default: abort ();
}
}
}
}

static unsigned short v11 (signed int v119)
{
history[history_index++] = (int)v119;
{
for (;;) {
signed short v122 = -4;
unsigned short v121 = 7;
unsigned short v120 = 6;
trace++;
switch (trace)
{
case 4: 
{
unsigned int v123;
unsigned int v124;
unsigned int v125;
v123 = 6U - 6U;
v124 = 5U + 1U;
v125 = 6U - 5U;
v17 (v123, v124, v125);
}
break;
case 14: 
return v120;
default: abort ();
}
}
}
}

void v5 (void)
{
{
for (;;) {
signed int v128 = -4;
unsigned int v127 = 5U;
unsigned char v126 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (signed int v129)
{
history[history_index++] = (int)v129;
{
for (;;) {
signed short v132 = -3;
signed short v131 = 1;
signed int v130 = -1;
trace++;
switch (trace)
{
case 0: 
return 4;
case 1: 
{
signed char v133;
v133 = v27 ();
history[history_index++] = (int)v133;
}
break;
case 3: 
{
signed int v134;
unsigned short v135;
v134 = v129 + v130;
v135 = v11 (v134);
history[history_index++] = (int)v135;
}
break;
case 15: 
return 1;
default: abort ();
}
}
}
}
