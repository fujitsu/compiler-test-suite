#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
unsigned int v3 (signed char, unsigned char, signed char, signed char);
unsigned int (*v4) (signed char, unsigned char, signed char, signed char) = v3;
extern void v5 (unsigned short, unsigned short, signed int);
extern void (*v6) (unsigned short, unsigned short, signed int);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned char v11 (signed short);
extern unsigned char (*v12) (signed short);
extern signed char v13 (signed char);
extern signed char (*v14) (signed char);
extern unsigned short v15 (signed char, signed char, unsigned char);
extern unsigned short (*v16) (signed char, signed char, unsigned char);
extern signed short v17 (unsigned int);
extern signed short (*v18) (unsigned int);
void v19 (signed short, unsigned int);
void (*v20) (signed short, unsigned int) = v19;
void v21 (unsigned short, signed char, signed int, unsigned char);
void (*v22) (unsigned short, signed char, signed int, unsigned char) = v21;
extern signed int v23 (void);
extern signed int (*v24) (void);
extern void v25 (signed int, unsigned short, unsigned short);
extern void (*v26) (signed int, unsigned short, unsigned short);
extern unsigned int v27 (unsigned char, signed short, signed char, unsigned int);
extern unsigned int (*v28) (unsigned char, signed short, signed char, unsigned int);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v110 = 7;
signed short v109 = -4;
signed short v108 = -2;

void v21 (unsigned short v111, signed char v112, signed int v113, unsigned char v114)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
signed char v117 = 0;
unsigned int v116 = 1U;
unsigned int v115 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (signed short v118, unsigned int v119)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
signed char v122 = -3;
unsigned int v121 = 0U;
signed int v120 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (signed char v123, unsigned char v124, signed char v125, signed char v126)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
signed int v129 = -1;
unsigned short v128 = 5;
unsigned short v127 = 3;
trace++;
switch (trace)
{
case 3: 
{
signed int v130;
v130 = v23 ();
history[history_index++] = (int)v130;
}
break;
case 5: 
{
signed char v131;
signed char v132;
unsigned char v133;
unsigned short v134;
v131 = v125 - v126;
v132 = v126 + v126;
v133 = 2 - 3;
v134 = v15 (v131, v132, v133);
history[history_index++] = (int)v134;
}
break;
case 7: 
{
unsigned char v135;
v135 = v1 ();
history[history_index++] = (int)v135;
}
break;
case 13: 
return 3U;
default: abort ();
}
}
}
}
