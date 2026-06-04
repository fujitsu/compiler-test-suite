#include <stdlib.h>
extern signed int v3 (signed char, signed short);
extern signed int (*v4) (signed char, signed short);
extern void v5 (void);
extern void (*v6) (void);
void v7 (void);
void (*v8) (void) = v7;
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern void v13 (void);
extern void (*v14) (void);
extern signed int v15 (signed char, signed int, signed short, unsigned int);
extern signed int (*v16) (signed char, signed int, signed short, unsigned int);
signed int v17 (signed char, unsigned char, signed int, unsigned int);
signed int (*v18) (signed char, unsigned char, signed int, unsigned int) = v17;
static void v19 (void);
static void (*v20) (void) = v19;
extern unsigned int v21 (unsigned short, unsigned short);
extern unsigned int (*v22) (unsigned short, unsigned short);
extern signed int v23 (signed char, unsigned char, signed char);
extern signed int (*v24) (signed char, unsigned char, signed char);
extern unsigned char v25 (signed short, signed int, unsigned char, signed int);
extern unsigned char (*v26) (signed short, signed int, unsigned char, signed int);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v111 = 0;
unsigned char v110 = 5;
signed short v109 = 3;

static void v19 (void)
{
{
for (;;) {
signed short v114 = 3;
unsigned int v113 = 3U;
unsigned int v112 = 3U;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v115;
unsigned short v116;
unsigned int v117;
v115 = 4 + 2;
v116 = 6 - 6;
v117 = v21 (v115, v116);
history[history_index++] = (int)v117;
}
break;
case 7: 
{
unsigned short v118;
unsigned short v119;
unsigned int v120;
v118 = 2 + 6;
v119 = 6 + 6;
v120 = v21 (v118, v119);
history[history_index++] = (int)v120;
}
break;
case 9: 
{
unsigned char v121;
v121 = v29 ();
history[history_index++] = (int)v121;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}

signed int v17 (signed char v122, unsigned char v123, signed int v124, unsigned int v125)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
signed short v128 = 0;
unsigned char v127 = 1;
unsigned char v126 = 1;
trace++;
switch (trace)
{
case 2: 
{
signed char v129;
unsigned char v130;
signed char v131;
signed int v132;
v129 = -1 + 1;
v130 = v126 - v127;
v131 = 3 + v122;
v132 = v23 (v129, v130, v131);
history[history_index++] = (int)v132;
}
break;
case 4: 
{
v19 ();
}
break;
case 12: 
return v124;
default: abort ();
}
}
}
}

void v7 (void)
{
{
for (;;) {
unsigned char v135 = 1;
signed int v134 = -1;
unsigned short v133 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
