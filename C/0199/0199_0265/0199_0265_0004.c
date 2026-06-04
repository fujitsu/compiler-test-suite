#include <stdlib.h>
void v1 (unsigned int);
void (*v2) (unsigned int) = v1;
extern signed int v3 (signed short, signed short, unsigned short);
extern signed int (*v4) (signed short, signed short, unsigned short);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern unsigned char v9 (unsigned char, signed char, signed int);
extern unsigned char (*v10) (unsigned char, signed char, signed int);
extern unsigned int v11 (signed short);
extern unsigned int (*v12) (signed short);
extern unsigned int v13 (unsigned short, unsigned int);
extern unsigned int (*v14) (unsigned short, unsigned int);
extern signed int v15 (unsigned short);
extern signed int (*v16) (unsigned short);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern void v21 (unsigned int);
extern void (*v22) (unsigned int);
extern signed int v23 (signed char, unsigned int, unsigned char, signed int);
extern signed int (*v24) (signed char, unsigned int, unsigned char, signed int);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern signed int v27 (signed short, signed int, unsigned int);
extern signed int (*v28) (signed short, signed int, unsigned int);
static unsigned char v29 (unsigned short, unsigned int, signed short);
static unsigned char (*v30) (unsigned short, unsigned int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v112 = -1;
unsigned short v111 = 7;
unsigned int v110 = 6U;

static unsigned char v29 (unsigned short v113, unsigned int v114, signed short v115)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned char v118 = 2;
signed int v117 = -2;
unsigned char v116 = 6;
trace++;
switch (trace)
{
case 3: 
return v118;
default: abort ();
}
}
}
}

void v1 (unsigned int v119)
{
history[history_index++] = (int)v119;
{
for (;;) {
unsigned int v122 = 7U;
unsigned int v121 = 3U;
signed short v120 = -1;
trace++;
switch (trace)
{
case 0: 
{
signed short v123;
signed int v124;
unsigned int v125;
signed int v126;
v123 = v120 + v120;
v124 = 3 + -4;
v125 = v121 - v119;
v126 = v27 (v123, v124, v125);
history[history_index++] = (int)v126;
}
break;
case 2: 
{
unsigned short v127;
unsigned int v128;
signed short v129;
unsigned char v130;
v127 = 4 - 7;
v128 = v119 + v119;
v129 = v120 + 0;
v130 = v29 (v127, v128, v129);
history[history_index++] = (int)v130;
}
break;
case 4: 
{
signed char v131;
v131 = v5 ();
history[history_index++] = (int)v131;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
