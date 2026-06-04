#include <stdlib.h>
extern void v1 (unsigned int);
extern void (*v2) (unsigned int);
extern signed int v3 (unsigned short);
extern signed int (*v4) (unsigned short);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern signed char v7 (signed int, signed short, unsigned short, signed int);
extern signed char (*v8) (signed int, signed short, unsigned short, signed int);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned short v11 (unsigned int, signed char);
extern unsigned short (*v12) (unsigned int, signed char);
extern signed char v13 (unsigned int, unsigned short, signed short, unsigned int);
extern signed char (*v14) (unsigned int, unsigned short, signed short, unsigned int);
void v15 (signed int);
void (*v16) (signed int) = v15;
extern signed int v17 (unsigned short, unsigned short, unsigned char);
extern signed int (*v18) (unsigned short, unsigned short, unsigned char);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
unsigned int v23 (unsigned char, signed int, signed short);
unsigned int (*v24) (unsigned char, signed int, signed short) = v23;
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern unsigned char v27 (signed char, unsigned int, unsigned int, unsigned int);
extern unsigned char (*v28) (signed char, unsigned int, unsigned int, unsigned int);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v109 = 3;
signed short v108 = 0;
unsigned short v107 = 5;

unsigned int v23 (unsigned char v110, signed int v111, signed short v112)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned short v115 = 3;
unsigned char v114 = 2;
signed short v113 = -2;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v116;
unsigned short v117;
signed short v118;
unsigned int v119;
signed char v120;
v116 = 2U - 7U;
v117 = v115 - v115;
v118 = v113 - v113;
v119 = 6U + 3U;
v120 = v13 (v116, v117, v118, v119);
history[history_index++] = (int)v120;
}
break;
case 3: 
{
signed short v121;
v121 = v29 ();
history[history_index++] = (int)v121;
}
break;
case 6: 
{
unsigned int v122;
unsigned short v123;
signed short v124;
unsigned int v125;
signed char v126;
v122 = 5U + 0U;
v123 = v115 + v115;
v124 = 1 - -1;
v125 = 2U + 5U;
v126 = v13 (v122, v123, v124, v125);
history[history_index++] = (int)v126;
}
break;
case 8: 
{
unsigned int v127;
unsigned short v128;
signed short v129;
unsigned int v130;
signed char v131;
v127 = 2U + 6U;
v128 = v115 + 2;
v129 = v113 - v113;
v130 = 3U - 7U;
v131 = v13 (v127, v128, v129, v130);
history[history_index++] = (int)v131;
}
break;
case 10: 
return 6U;
case 13: 
return 5U;
default: abort ();
}
}
}
}

void v15 (signed int v132)
{
history[history_index++] = (int)v132;
{
for (;;) {
signed char v135 = 1;
unsigned int v134 = 1U;
signed char v133 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
