#include <stdlib.h>
extern unsigned int v1 (signed char, unsigned int, unsigned char);
extern unsigned int (*v2) (signed char, unsigned int, unsigned char);
extern signed char v3 (unsigned short, unsigned char, signed int, signed int);
extern signed char (*v4) (unsigned short, unsigned char, signed int, signed int);
signed int v5 (signed int, signed int, signed short, unsigned char);
signed int (*v6) (signed int, signed int, signed short, unsigned char) = v5;
extern signed char v7 (unsigned char, signed char);
extern signed char (*v8) (unsigned char, signed char);
signed int v9 (void);
signed int (*v10) (void) = v9;
unsigned short v11 (signed int, unsigned short);
unsigned short (*v12) (signed int, unsigned short) = v11;
extern signed short v13 (unsigned short, unsigned int, signed short);
extern signed short (*v14) (unsigned short, unsigned int, signed short);
signed short v15 (unsigned char, unsigned int);
signed short (*v16) (unsigned char, unsigned int) = v15;
extern signed char v17 (void);
extern signed char (*v18) (void);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
unsigned short v21 (signed short, unsigned char, unsigned short, signed short);
unsigned short (*v22) (signed short, unsigned char, unsigned short, signed short) = v21;
extern signed short v23 (signed char);
extern signed short (*v24) (signed char);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern unsigned short v27 (unsigned short, signed int, signed int, signed int);
extern unsigned short (*v28) (unsigned short, signed int, signed int, signed int);
extern unsigned int v29 (signed short, unsigned short, signed char, signed int);
extern unsigned int (*v30) (signed short, unsigned short, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v104 = 3;
signed short v103 = -2;
signed int v102 = -2;

unsigned short v21 (signed short v105, unsigned char v106, unsigned short v107, signed short v108)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed int v111 = 0;
unsigned short v110 = 4;
signed short v109 = 0;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v112;
v112 = v19 ();
history[history_index++] = (int)v112;
}
break;
case 5: 
{
unsigned char v113;
v113 = v19 ();
history[history_index++] = (int)v113;
}
break;
case 15: 
return v107;
default: abort ();
}
}
}
}

signed short v15 (unsigned char v114, unsigned int v115)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned char v118 = 2;
unsigned int v117 = 1U;
unsigned char v116 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (signed int v119, unsigned short v120)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
signed char v123 = -2;
signed char v122 = -1;
signed char v121 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (void)
{
{
for (;;) {
unsigned short v126 = 6;
signed char v125 = 3;
unsigned int v124 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (signed int v127, signed int v128, signed short v129, unsigned char v130)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
unsigned char v133 = 0;
unsigned char v132 = 7;
signed short v131 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
