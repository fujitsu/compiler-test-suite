#include <stdlib.h>
signed short v1 (signed int);
signed short (*v2) (signed int) = v1;
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern signed char v5 (unsigned int);
extern signed char (*v6) (unsigned int);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern void v9 (unsigned int, unsigned int);
extern void (*v10) (unsigned int, unsigned int);
extern void v13 (signed int, signed char, unsigned char, signed int);
extern void (*v14) (signed int, signed char, unsigned char, signed int);
extern signed short v15 (signed short, unsigned int);
extern signed short (*v16) (signed short, unsigned int);
signed char v17 (signed short, signed char, unsigned char);
signed char (*v18) (signed short, signed char, unsigned char) = v17;
signed int v19 (signed short);
signed int (*v20) (signed short) = v19;
signed short v21 (unsigned short);
signed short (*v22) (unsigned short) = v21;
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern unsigned int v25 (unsigned short);
extern unsigned int (*v26) (unsigned short);
extern signed char v27 (unsigned char, unsigned int, unsigned short);
extern signed char (*v28) (unsigned char, unsigned int, unsigned short);
unsigned int v29 (unsigned char, signed char, unsigned char);
unsigned int (*v30) (unsigned char, signed char, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v103 = 1;
signed char v102 = 1;
unsigned short v101 = 0;

unsigned int v29 (unsigned char v104, signed char v105, unsigned char v106)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
unsigned char v109 = 3;
signed short v108 = -4;
signed char v107 = -1;
trace++;
switch (trace)
{
case 8: 
return 2U;
default: abort ();
}
}
}
}

signed short v21 (unsigned short v110)
{
history[history_index++] = (int)v110;
{
for (;;) {
signed short v113 = 3;
signed char v112 = 2;
signed char v111 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (signed short v114)
{
history[history_index++] = (int)v114;
{
for (;;) {
signed int v117 = -4;
unsigned char v116 = 3;
signed short v115 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (signed short v118, signed char v119, unsigned char v120)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
signed char v123 = 3;
signed short v122 = 2;
signed char v121 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed int v124)
{
history[history_index++] = (int)v124;
{
for (;;) {
signed int v127 = 3;
unsigned char v126 = 7;
signed short v125 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v128;
v128 = v3 ();
history[history_index++] = (int)v128;
}
break;
case 10: 
{
unsigned int v129;
unsigned int v130;
v129 = 0U + 6U;
v130 = 4U - 3U;
v9 (v129, v130);
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}
