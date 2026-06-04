#include <stdlib.h>
extern signed char v3 (unsigned short, signed int, unsigned char);
extern signed char (*v4) (unsigned short, signed int, unsigned char);
extern void v5 (void);
extern void (*v6) (void);
extern unsigned char v7 (unsigned short, signed short, signed char, unsigned char);
extern unsigned char (*v8) (unsigned short, signed short, signed char, unsigned char);
extern unsigned char v9 (signed short, signed char, unsigned char);
extern unsigned char (*v10) (signed short, signed char, unsigned char);
extern unsigned short v11 (signed short, signed short);
extern unsigned short (*v12) (signed short, signed short);
unsigned char v13 (void);
unsigned char (*v14) (void) = v13;
extern signed short v15 (void);
extern signed short (*v16) (void);
extern signed int v17 (signed short);
extern signed int (*v18) (signed short);
extern signed short v19 (signed short, unsigned short, signed short, unsigned short);
extern signed short (*v20) (signed short, unsigned short, signed short, unsigned short);
extern unsigned char v21 (signed char);
extern unsigned char (*v22) (signed char);
extern unsigned short v23 (signed int, unsigned char, signed short, signed char);
extern unsigned short (*v24) (signed int, unsigned char, signed short, signed char);
extern signed int v25 (unsigned int, unsigned short);
extern signed int (*v26) (unsigned int, unsigned short);
extern signed short v27 (unsigned short, unsigned int, unsigned int, signed char);
extern signed short (*v28) (unsigned short, unsigned int, unsigned int, signed char);
extern signed short v29 (signed char);
extern signed short (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v108 = 1;
unsigned char v107 = 2;
unsigned char v106 = 6;

unsigned char v13 (void)
{
{
for (;;) {
unsigned char v111 = 4;
signed short v110 = -1;
signed short v109 = 1;
trace++;
switch (trace)
{
case 3: 
{
signed int v112;
unsigned char v113;
signed short v114;
signed char v115;
unsigned short v116;
v112 = 1 + 1;
v113 = 6 - 6;
v114 = v109 - 0;
v115 = 1 - 1;
v116 = v23 (v112, v113, v114, v115);
history[history_index++] = (int)v116;
}
break;
case 5: 
{
unsigned short v117;
unsigned int v118;
unsigned int v119;
signed char v120;
signed short v121;
v117 = 4 - 2;
v118 = 4U - 1U;
v119 = 3U - 1U;
v120 = 2 - 1;
v121 = v27 (v117, v118, v119, v120);
history[history_index++] = (int)v121;
}
break;
case 7: 
{
signed int v122;
unsigned char v123;
signed short v124;
signed char v125;
unsigned short v126;
v122 = 2 + 3;
v123 = v111 + v111;
v124 = v110 + v109;
v125 = 3 - -1;
v126 = v23 (v122, v123, v124, v125);
history[history_index++] = (int)v126;
}
break;
case 9: 
{
signed short v127;
signed int v128;
v127 = v110 - v109;
v128 = v17 (v127);
history[history_index++] = (int)v128;
}
break;
case 13: 
return v111;
default: abort ();
}
}
}
}
