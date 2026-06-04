#include <stdlib.h>
signed int v1 (signed short, signed int, signed int);
signed int (*v2) (signed short, signed int, signed int) = v1;
extern signed short v3 (signed int, unsigned char, unsigned int, unsigned char);
extern signed short (*v4) (signed int, unsigned char, unsigned int, unsigned char);
extern void v7 (void);
extern void (*v8) (void);
extern unsigned char v9 (unsigned int, unsigned char, unsigned short);
extern unsigned char (*v10) (unsigned int, unsigned char, unsigned short);
extern signed short v11 (signed char, unsigned short, unsigned char, unsigned int);
extern signed short (*v12) (signed char, unsigned short, unsigned char, unsigned int);
extern signed short v13 (unsigned short, signed int);
extern signed short (*v14) (unsigned short, signed int);
extern signed short v15 (unsigned int);
extern signed short (*v16) (unsigned int);
extern unsigned int v17 (signed char, unsigned int, signed char, unsigned int);
extern unsigned int (*v18) (signed char, unsigned int, signed char, unsigned int);
extern signed int v19 (unsigned char, unsigned short, signed char, unsigned char);
extern signed int (*v20) (unsigned char, unsigned short, signed char, unsigned char);
extern unsigned int v21 (signed char, signed int);
extern unsigned int (*v22) (signed char, signed int);
extern signed short v23 (signed int, unsigned short, signed int, unsigned short);
extern signed short (*v24) (signed int, unsigned short, signed int, unsigned short);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern unsigned short v27 (unsigned int, signed short, signed int);
extern unsigned short (*v28) (unsigned int, signed short, signed int);
unsigned char v29 (void);
unsigned char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v109 = 0;
unsigned short v108 = 3;
signed char v107 = -2;

unsigned char v29 (void)
{
{
for (;;) {
signed short v112 = 2;
unsigned short v111 = 5;
signed char v110 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (signed short v113, signed int v114, signed int v115)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
signed short v118 = 0;
unsigned char v117 = 1;
signed int v116 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v119;
unsigned char v120;
unsigned short v121;
unsigned char v122;
v119 = 6U - 1U;
v120 = 6 - v117;
v121 = 3 - 1;
v122 = v9 (v119, v120, v121);
history[history_index++] = (int)v122;
}
break;
case 2: 
{
signed int v123;
unsigned char v124;
unsigned int v125;
unsigned char v126;
signed short v127;
v123 = 2 + v115;
v124 = 5 + 4;
v125 = 3U - 5U;
v126 = v117 - v117;
v127 = v3 (v123, v124, v125, v126);
history[history_index++] = (int)v127;
}
break;
case 16: 
return v116;
default: abort ();
}
}
}
}
