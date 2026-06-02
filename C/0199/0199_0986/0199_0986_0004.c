#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern signed short v3 (unsigned short);
extern signed short (*v4) (unsigned short);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
signed int v9 (signed short, unsigned short, unsigned int);
signed int (*v10) (signed short, unsigned short, unsigned int) = v9;
extern signed short v11 (void);
extern signed short (*v12) (void);
extern unsigned char v13 (unsigned char, signed short, signed short, unsigned char);
extern unsigned char (*v14) (unsigned char, signed short, signed short, unsigned char);
extern unsigned char v15 (signed char, unsigned int, unsigned short);
extern unsigned char (*v16) (signed char, unsigned int, unsigned short);
extern unsigned short v17 (signed char);
extern unsigned short (*v18) (signed char);
extern signed short v19 (unsigned int);
extern signed short (*v20) (unsigned int);
unsigned char v21 (signed char, unsigned char);
unsigned char (*v22) (signed char, unsigned char) = v21;
extern unsigned int v23 (unsigned char, signed int, unsigned int);
extern unsigned int (*v24) (unsigned char, signed int, unsigned int);
extern unsigned char v25 (signed int, signed char);
extern unsigned char (*v26) (signed int, signed char);
extern signed char v27 (signed short, unsigned short);
extern signed char (*v28) (signed short, unsigned short);
extern unsigned char v29 (signed char);
extern unsigned char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v110 = 7U;
unsigned int v109 = 1U;
signed char v108 = 2;

unsigned char v21 (signed char v111, unsigned char v112)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned char v115 = 2;
unsigned int v114 = 4U;
unsigned short v113 = 0;
trace++;
switch (trace)
{
case 4: 
{
signed char v116;
unsigned char v117;
v116 = 3 + v111;
v117 = v29 (v116);
history[history_index++] = (int)v117;
}
break;
case 6: 
{
signed char v118;
unsigned char v119;
v118 = 2 + v111;
v119 = v29 (v118);
history[history_index++] = (int)v119;
}
break;
case 8: 
{
signed char v120;
unsigned char v121;
v120 = -2 - -2;
v121 = v29 (v120);
history[history_index++] = (int)v121;
}
break;
case 10: 
{
signed char v122;
unsigned char v123;
v122 = v111 - 0;
v123 = v29 (v122);
history[history_index++] = (int)v123;
}
break;
case 12: 
return v112;
default: abort ();
}
}
}
}

signed int v9 (signed short v124, unsigned short v125, unsigned int v126)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
unsigned char v129 = 7;
signed int v128 = -4;
unsigned char v127 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
