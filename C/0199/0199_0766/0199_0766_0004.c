#include <stdlib.h>
signed short v1 (void);
signed short (*v2) (void) = v1;
extern unsigned short v3 (unsigned short, unsigned char, unsigned char, signed char);
extern unsigned short (*v4) (unsigned short, unsigned char, unsigned char, signed char);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned short v11 (unsigned int, unsigned char);
extern unsigned short (*v12) (unsigned int, unsigned char);
extern void v13 (void);
extern void (*v14) (void);
extern signed char v15 (unsigned char, signed char, signed short, unsigned char);
extern signed char (*v16) (unsigned char, signed char, signed short, unsigned char);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern signed int v23 (unsigned int, unsigned int, unsigned char, unsigned short);
extern signed int (*v24) (unsigned int, unsigned int, unsigned char, unsigned short);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern void v27 (void);
extern void (*v28) (void);
extern unsigned short v29 (signed short, unsigned char, signed short);
extern unsigned short (*v30) (signed short, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v110 = 4;
unsigned int v109 = 0U;
unsigned int v108 = 1U;

signed short v1 (void)
{
{
for (;;) {
signed int v113 = 3;
signed int v112 = -3;
signed int v111 = -1;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v114;
v114 = v9 ();
history[history_index++] = (int)v114;
}
break;
case 2: 
{
unsigned short v115;
unsigned char v116;
unsigned char v117;
signed char v118;
unsigned short v119;
v115 = 6 - 6;
v116 = 7 + 7;
v117 = 7 - 5;
v118 = 0 + -3;
v119 = v3 (v115, v116, v117, v118);
history[history_index++] = (int)v119;
}
break;
case 4: 
{
signed short v120;
unsigned char v121;
signed short v122;
unsigned short v123;
v120 = -4 + -2;
v121 = 5 - 0;
v122 = -1 + -3;
v123 = v29 (v120, v121, v122);
history[history_index++] = (int)v123;
}
break;
case 6: 
{
unsigned int v124;
unsigned char v125;
unsigned short v126;
v124 = 6U - 7U;
v125 = 7 - 4;
v126 = v11 (v124, v125);
history[history_index++] = (int)v126;
}
break;
case 8: 
{
unsigned short v127;
unsigned char v128;
unsigned char v129;
signed char v130;
unsigned short v131;
v127 = 7 + 6;
v128 = 7 + 3;
v129 = 2 - 0;
v130 = 2 - -3;
v131 = v3 (v127, v128, v129, v130);
history[history_index++] = (int)v131;
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}
