#include <stdlib.h>
extern signed short v1 (unsigned short, unsigned short);
extern signed short (*v2) (unsigned short, unsigned short);
extern signed char v3 (signed int, unsigned int, signed short);
extern signed char (*v4) (signed int, unsigned int, signed short);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern void v7 (signed char, signed short, unsigned short, unsigned short);
extern void (*v8) (signed char, signed short, unsigned short, unsigned short);
extern signed int v9 (signed short);
extern signed int (*v10) (signed short);
extern unsigned char v11 (signed short);
extern unsigned char (*v12) (signed short);
extern unsigned int v13 (signed int);
extern unsigned int (*v14) (signed int);
extern signed short v15 (signed char);
extern signed short (*v16) (signed char);
extern unsigned short v17 (unsigned char);
extern unsigned short (*v18) (unsigned char);
extern signed int v19 (unsigned int);
extern signed int (*v20) (unsigned int);
static unsigned int v21 (signed char, unsigned short, unsigned char);
static unsigned int (*v22) (signed char, unsigned short, unsigned char) = v21;
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed short v25 (void);
extern signed short (*v26) (void);
signed short v27 (void);
signed short (*v28) (void) = v27;
extern unsigned char v29 (unsigned char, signed short, signed char);
extern unsigned char (*v30) (unsigned char, signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v114 = 3;
signed short v113 = -3;
signed short v112 = 2;

signed short v27 (void)
{
{
for (;;) {
unsigned char v117 = 0;
signed int v116 = 1;
signed int v115 = 1;
trace++;
switch (trace)
{
case 1: 
{
signed char v118;
unsigned short v119;
unsigned char v120;
unsigned int v121;
v118 = 2 + 3;
v119 = 6 - 0;
v120 = 4 + v117;
v121 = v21 (v118, v119, v120);
history[history_index++] = (int)v121;
}
break;
case 5: 
return 3;
case 8: 
return -4;
default: abort ();
}
}
}
}

static unsigned int v21 (signed char v122, unsigned short v123, unsigned char v124)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned int v127 = 7U;
unsigned short v126 = 2;
signed int v125 = -4;
trace++;
switch (trace)
{
case 2: 
{
unsigned char v128;
signed short v129;
signed char v130;
unsigned char v131;
v128 = 4 - 3;
v129 = 2 - 3;
v130 = 3 + 0;
v131 = v29 (v128, v129, v130);
history[history_index++] = (int)v131;
}
break;
case 4: 
return v127;
default: abort ();
}
}
}
}
