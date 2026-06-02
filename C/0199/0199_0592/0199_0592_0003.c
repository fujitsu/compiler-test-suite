#include <stdlib.h>
unsigned int v1 (unsigned int, unsigned short, unsigned int);
unsigned int (*v2) (unsigned int, unsigned short, unsigned int) = v1;
extern unsigned char v3 (signed int, unsigned char, signed short);
extern unsigned char (*v4) (signed int, unsigned char, signed short);
void v5 (signed char, signed int, unsigned int, signed int);
void (*v6) (signed char, signed int, unsigned int, signed int) = v5;
extern signed short v7 (signed int, unsigned char, signed char);
extern signed short (*v8) (signed int, unsigned char, signed char);
extern signed short v9 (signed short);
extern signed short (*v10) (signed short);
extern signed short v11 (unsigned short);
extern signed short (*v12) (unsigned short);
signed char v13 (signed short, signed short, unsigned short);
signed char (*v14) (signed short, signed short, unsigned short) = v13;
extern void v15 (signed int, signed char, signed short, unsigned int);
extern void (*v16) (signed int, signed char, signed short, unsigned int);
extern signed char v17 (void);
extern signed char (*v18) (void);
unsigned int v19 (signed char, signed int, unsigned int);
unsigned int (*v20) (signed char, signed int, unsigned int) = v19;
extern void v21 (unsigned int, unsigned short);
extern void (*v22) (unsigned int, unsigned short);
extern signed int v23 (signed char, signed short, signed char);
extern signed int (*v24) (signed char, signed short, signed char);
extern signed short v25 (signed char, signed char, unsigned short);
extern signed short (*v26) (signed char, signed char, unsigned short);
extern void v27 (unsigned char);
extern void (*v28) (unsigned char);
extern signed char v29 (signed short, unsigned char, signed int, signed int);
extern signed char (*v30) (signed short, unsigned char, signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v104 = 0U;
signed int v103 = -2;
unsigned int v102 = 7U;

unsigned int v19 (signed char v105, signed int v106, unsigned int v107)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
signed int v110 = -1;
unsigned char v109 = 2;
signed int v108 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (signed short v111, signed short v112, unsigned short v113)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
unsigned char v116 = 2;
signed char v115 = 0;
unsigned int v114 = 5U;
trace++;
switch (trace)
{
case 10: 
return 0;
default: abort ();
}
}
}
}

void v5 (signed char v117, signed int v118, unsigned int v119, signed int v120)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
unsigned short v123 = 1;
unsigned char v122 = 4;
signed int v121 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (unsigned int v124, unsigned short v125, unsigned int v126)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
unsigned char v129 = 6;
signed char v128 = 0;
unsigned int v127 = 0U;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v130;
unsigned short v131;
v130 = v126 + v127;
v131 = 7 + v125;
v21 (v130, v131);
}
break;
case 8: 
{
signed short v132;
signed short v133;
v132 = 0 - -1;
v133 = v9 (v132);
history[history_index++] = (int)v133;
}
break;
case 12: 
return v127;
default: abort ();
}
}
}
}
