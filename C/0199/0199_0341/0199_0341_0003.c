#include <stdlib.h>
signed int v1 (unsigned short, signed int);
signed int (*v2) (unsigned short, signed int) = v1;
extern signed char v3 (void);
extern signed char (*v4) (void);
signed int v5 (unsigned short, unsigned int, unsigned char, signed int);
signed int (*v6) (unsigned short, unsigned int, unsigned char, signed int) = v5;
extern void v7 (signed char, signed char, signed short, unsigned short);
extern void (*v8) (signed char, signed char, signed short, unsigned short);
void v9 (signed short, unsigned char);
void (*v10) (signed short, unsigned char) = v9;
extern void v11 (unsigned int, unsigned int, unsigned char, unsigned int);
extern void (*v12) (unsigned int, unsigned int, unsigned char, unsigned int);
extern unsigned int v13 (signed int, unsigned char);
extern unsigned int (*v14) (signed int, unsigned char);
extern void v15 (void);
extern void (*v16) (void);
extern unsigned short v17 (signed char, unsigned short, signed int, signed short);
extern unsigned short (*v18) (signed char, unsigned short, signed int, signed short);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern signed char v23 (signed int, unsigned char);
extern signed char (*v24) (signed int, unsigned char);
extern unsigned int v25 (unsigned short, unsigned char);
extern unsigned int (*v26) (unsigned short, unsigned char);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v104 = 1;
signed short v103 = -1;
signed short v102 = 1;

void v9 (signed short v105, unsigned char v106)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed int v109 = -2;
unsigned int v108 = 5U;
signed char v107 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (unsigned short v110, unsigned int v111, unsigned char v112, signed int v113)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
unsigned char v116 = 7;
unsigned char v115 = 1;
signed int v114 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (unsigned short v117, signed int v118)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
unsigned int v121 = 6U;
unsigned char v120 = 4;
signed short v119 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed char v122;
signed char v123;
signed short v124;
unsigned short v125;
v122 = -3 + -3;
v123 = -1 - -4;
v124 = -2 + v119;
v125 = 2 - v117;
v7 (v122, v123, v124, v125);
}
break;
case 6: 
{
signed char v126;
signed char v127;
signed short v128;
unsigned short v129;
v126 = 2 + 2;
v127 = -2 + 3;
v128 = -4 + 0;
v129 = v117 + 5;
v7 (v126, v127, v128, v129);
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}
