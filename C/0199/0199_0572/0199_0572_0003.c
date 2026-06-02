#include <stdlib.h>
extern unsigned int v1 (unsigned short, signed short, unsigned char);
extern unsigned int (*v2) (unsigned short, signed short, unsigned char);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern signed short v7 (signed int, unsigned char, signed short, unsigned int);
extern signed short (*v8) (signed int, unsigned char, signed short, unsigned int);
extern signed char v9 (unsigned short);
extern signed char (*v10) (unsigned short);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern signed short v13 (signed char, unsigned short, unsigned int, unsigned int);
extern signed short (*v14) (signed char, unsigned short, unsigned int, unsigned int);
extern unsigned char v15 (signed int, signed char, signed short);
extern unsigned char (*v16) (signed int, signed char, signed short);
extern signed short v17 (unsigned int, signed char, signed short, unsigned char);
extern signed short (*v18) (unsigned int, signed char, signed short, unsigned char);
unsigned char v19 (signed short, unsigned short, signed int, unsigned char);
unsigned char (*v20) (signed short, unsigned short, signed int, unsigned char) = v19;
static void v21 (signed short, signed char, signed int, unsigned short);
static void (*v22) (signed short, signed char, signed int, unsigned short) = v21;
extern unsigned short v23 (signed char, signed short);
extern unsigned short (*v24) (signed char, signed short);
extern unsigned int v25 (signed int, signed int);
extern unsigned int (*v26) (signed int, signed int);
extern signed short v27 (unsigned int, unsigned int, unsigned short);
extern signed short (*v28) (unsigned int, unsigned int, unsigned short);
extern unsigned char v29 (unsigned short, unsigned short);
extern unsigned char (*v30) (unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v104 = 2U;
signed int v103 = -4;
unsigned char v102 = 2;

static void v21 (signed short v105, signed char v106, signed int v107, unsigned short v108)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed int v111 = 3;
unsigned char v110 = 7;
unsigned char v109 = 0;
trace++;
switch (trace)
{
case 7: 
return;
case 11: 
return;
default: abort ();
}
}
}
}

unsigned char v19 (signed short v112, unsigned short v113, signed int v114, unsigned char v115)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned short v118 = 5;
signed short v117 = -3;
signed short v116 = 1;
trace++;
switch (trace)
{
case 6: 
{
signed short v119;
signed char v120;
signed int v121;
unsigned short v122;
v119 = v112 + v112;
v120 = -1 + 0;
v121 = v114 + -4;
v122 = v113 - v118;
v21 (v119, v120, v121, v122);
}
break;
case 8: 
{
unsigned int v123;
unsigned int v124;
unsigned short v125;
signed short v126;
v123 = 5U - 6U;
v124 = 7U - 2U;
v125 = 2 + v118;
v126 = v27 (v123, v124, v125);
history[history_index++] = (int)v126;
}
break;
case 10: 
{
signed short v127;
signed char v128;
signed int v129;
unsigned short v130;
v127 = v117 + v116;
v128 = -1 + -3;
v129 = v114 + v114;
v130 = v113 - v113;
v21 (v127, v128, v129, v130);
}
break;
case 12: 
return 0;
default: abort ();
}
}
}
}
