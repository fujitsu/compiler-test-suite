#include <stdlib.h>
unsigned char v1 (unsigned int, signed short);
unsigned char (*v2) (unsigned int, signed short) = v1;
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern signed short v5 (unsigned char, unsigned int, unsigned short);
extern signed short (*v6) (unsigned char, unsigned int, unsigned short);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern void v9 (signed int, unsigned short, unsigned char, signed char);
extern void (*v10) (signed int, unsigned short, unsigned char, signed char);
extern signed char v11 (unsigned short);
extern signed char (*v12) (unsigned short);
signed int v13 (unsigned char, unsigned int);
signed int (*v14) (unsigned char, unsigned int) = v13;
extern void v15 (unsigned short);
extern void (*v16) (unsigned short);
unsigned char v17 (unsigned short, unsigned int);
unsigned char (*v18) (unsigned short, unsigned int) = v17;
extern signed int v19 (unsigned char, signed int, unsigned short, signed int);
extern signed int (*v20) (unsigned char, signed int, unsigned short, signed int);
extern signed short v23 (signed char, unsigned short);
extern signed short (*v24) (signed char, unsigned short);
unsigned int v25 (signed char, signed int, signed char, signed short);
unsigned int (*v26) (signed char, signed int, signed char, signed short) = v25;
extern signed char v27 (void);
extern signed char (*v28) (void);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v98 = 4U;
signed short v97 = 0;
unsigned char v96 = 6;

unsigned int v25 (signed char v99, signed int v100, signed char v101, signed short v102)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed int v105 = 1;
unsigned char v104 = 2;
unsigned char v103 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (unsigned short v106, unsigned int v107)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
unsigned int v110 = 7U;
unsigned short v109 = 7;
unsigned int v108 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (unsigned char v111, unsigned int v112)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned int v115 = 3U;
signed short v114 = 2;
unsigned short v113 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned int v116, signed short v117)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
unsigned char v120 = 2;
unsigned short v119 = 6;
unsigned char v118 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v121;
signed int v122;
unsigned short v123;
signed int v124;
signed int v125;
v121 = v118 + v120;
v122 = -2 - 2;
v123 = 1 + v119;
v124 = 2 + 3;
v125 = v19 (v121, v122, v123, v124);
history[history_index++] = (int)v125;
}
break;
case 2: 
{
signed char v126;
v126 = v27 ();
history[history_index++] = (int)v126;
}
break;
case 10: 
{
unsigned short v127;
v127 = v119 + v119;
v15 (v127);
}
break;
case 12: 
return v118;
default: abort ();
}
}
}
}
