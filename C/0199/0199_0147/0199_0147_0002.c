#include <stdlib.h>
signed char v3 (signed char, signed int);
signed char (*v4) (signed char, signed int) = v3;
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned char v7 (unsigned char, signed char, signed int);
extern unsigned char (*v8) (unsigned char, signed char, signed int);
extern unsigned char v9 (signed char);
extern unsigned char (*v10) (signed char);
extern signed short v11 (signed char, signed short);
extern signed short (*v12) (signed char, signed short);
extern signed short v13 (unsigned short);
extern signed short (*v14) (unsigned short);
extern unsigned int v15 (signed int, signed short, signed short);
extern unsigned int (*v16) (signed int, signed short, signed short);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern signed short v19 (signed short, unsigned int, unsigned short, signed char);
extern signed short (*v20) (signed short, unsigned int, unsigned short, signed char);
extern unsigned int v21 (unsigned char, unsigned int, signed char);
extern unsigned int (*v22) (unsigned char, unsigned int, signed char);
signed short v23 (signed short);
signed short (*v24) (signed short) = v23;
unsigned int v25 (signed short, signed char, signed short, unsigned short);
unsigned int (*v26) (signed short, signed char, signed short, unsigned short) = v25;
extern signed char v27 (unsigned short, signed short, unsigned int, unsigned char);
extern signed char (*v28) (unsigned short, signed short, unsigned int, unsigned char);
extern signed char v29 (signed char);
extern signed char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v102 = -2;
unsigned short v101 = 1;
signed int v100 = 2;

unsigned int v25 (signed short v103, signed char v104, signed short v105, unsigned short v106)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
unsigned int v109 = 4U;
signed short v108 = 3;
signed int v107 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v23 (signed short v110)
{
history[history_index++] = (int)v110;
{
for (;;) {
unsigned short v113 = 6;
signed short v112 = 3;
signed char v111 = 2;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v114;
signed short v115;
unsigned int v116;
unsigned char v117;
signed char v118;
v114 = 5 + 6;
v115 = -2 + -3;
v116 = 3U + 2U;
v117 = 4 - 3;
v118 = v27 (v114, v115, v116, v117);
history[history_index++] = (int)v118;
}
break;
case 3: 
return v112;
case 9: 
{
unsigned short v119;
signed short v120;
unsigned int v121;
unsigned char v122;
signed char v123;
v119 = 7 - v113;
v120 = v110 - v110;
v121 = 0U + 7U;
v122 = 6 + 2;
v123 = v27 (v119, v120, v121, v122);
history[history_index++] = (int)v123;
}
break;
case 11: 
return v112;
default: abort ();
}
}
}
}

signed char v3 (signed char v124, signed int v125)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
signed int v128 = 3;
signed int v127 = -1;
signed short v126 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
