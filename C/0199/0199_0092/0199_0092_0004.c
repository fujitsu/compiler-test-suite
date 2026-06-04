#include <stdlib.h>
unsigned short v1 (void);
unsigned short (*v2) (void) = v1;
extern signed short v3 (signed int);
extern signed short (*v4) (signed int);
extern signed char v5 (unsigned int, unsigned short, signed char);
extern signed char (*v6) (unsigned int, unsigned short, signed char);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern signed int v9 (signed short, signed int, unsigned char);
extern signed int (*v10) (signed short, signed int, unsigned char);
extern signed short v11 (unsigned short, signed char, signed int);
extern signed short (*v12) (unsigned short, signed char, signed int);
extern void v13 (void);
extern void (*v14) (void);
signed int v15 (unsigned int, signed char, unsigned char);
signed int (*v16) (unsigned int, signed char, unsigned char) = v15;
extern signed short v17 (void);
extern signed short (*v18) (void);
extern unsigned char v19 (signed int, unsigned char, unsigned int, unsigned char);
extern unsigned char (*v20) (signed int, unsigned char, unsigned int, unsigned char);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern unsigned int v23 (signed short, unsigned char, unsigned short, signed int);
extern unsigned int (*v24) (signed short, unsigned char, unsigned short, signed int);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
void v27 (signed int);
void (*v28) (signed int) = v27;
extern void v29 (signed char);
extern void (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v106 = -3;
signed short v105 = 1;
unsigned char v104 = 0;

void v27 (signed int v107)
{
history[history_index++] = (int)v107;
{
for (;;) {
signed short v110 = -2;
signed char v109 = 0;
unsigned int v108 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (unsigned int v111, signed char v112, unsigned char v113)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
unsigned char v116 = 0;
unsigned char v115 = 7;
unsigned int v114 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (void)
{
{
for (;;) {
unsigned int v119 = 4U;
unsigned short v118 = 5;
signed int v117 = -4;
trace++;
switch (trace)
{
case 0: 
{
signed short v120;
v120 = v21 ();
history[history_index++] = (int)v120;
}
break;
case 4: 
{
signed short v121;
unsigned char v122;
unsigned short v123;
signed int v124;
unsigned int v125;
v121 = -1 + -4;
v122 = 1 + 1;
v123 = 0 + 4;
v124 = 0 - v117;
v125 = v23 (v121, v122, v123, v124);
history[history_index++] = (int)v125;
}
break;
case 6: 
{
unsigned short v126;
signed char v127;
signed int v128;
signed short v129;
v126 = v118 + 3;
v127 = 0 - 0;
v128 = -1 - v117;
v129 = v11 (v126, v127, v128);
history[history_index++] = (int)v129;
}
break;
case 12: 
return v118;
default: abort ();
}
}
}
}
