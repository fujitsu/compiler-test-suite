#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern signed int v3 (unsigned char, unsigned char, signed int);
extern signed int (*v4) (unsigned char, unsigned char, signed int);
signed int v5 (unsigned int);
signed int (*v6) (unsigned int) = v5;
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern signed short v9 (signed int);
extern signed short (*v10) (signed int);
extern signed int v11 (signed int, unsigned int);
extern signed int (*v12) (signed int, unsigned int);
extern unsigned int v13 (unsigned short, unsigned int, signed int);
extern unsigned int (*v14) (unsigned short, unsigned int, signed int);
signed int v15 (unsigned char, signed char, signed int, signed int);
signed int (*v16) (unsigned char, signed char, signed int, signed int) = v15;
extern unsigned char v17 (signed char, signed int, unsigned int);
extern unsigned char (*v18) (signed char, signed int, unsigned int);
extern signed short v19 (unsigned int, unsigned short, signed short);
extern signed short (*v20) (unsigned int, unsigned short, signed short);
unsigned short v21 (signed short, unsigned int, signed short);
unsigned short (*v22) (signed short, unsigned int, signed short) = v21;
extern unsigned char v23 (signed short, unsigned char, signed char);
extern unsigned char (*v24) (signed short, unsigned char, signed char);
extern unsigned int v25 (signed int, unsigned short, unsigned short);
extern unsigned int (*v26) (signed int, unsigned short, unsigned short);
extern unsigned char v27 (unsigned char);
extern unsigned char (*v28) (unsigned char);
extern void v29 (unsigned short, unsigned short);
extern void (*v30) (unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v105 = -3;
unsigned short v104 = 5;
unsigned short v103 = 1;

unsigned short v21 (signed short v106, unsigned int v107, signed short v108)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed short v111 = -3;
unsigned char v110 = 5;
unsigned char v109 = 4;
trace++;
switch (trace)
{
case 2: 
return 1;
default: abort ();
}
}
}
}

signed int v15 (unsigned char v112, signed char v113, signed int v114, signed int v115)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
signed int v118 = 2;
signed short v117 = -2;
signed short v116 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (unsigned int v119)
{
history[history_index++] = (int)v119;
{
for (;;) {
signed char v122 = -1;
unsigned short v121 = 1;
signed char v120 = 0;
trace++;
switch (trace)
{
case 7: 
{
unsigned short v123;
unsigned int v124;
signed int v125;
unsigned int v126;
v123 = 1 + v121;
v124 = 0U + 1U;
v125 = 2 - -4;
v126 = v13 (v123, v124, v125);
history[history_index++] = (int)v126;
}
break;
case 9: 
{
unsigned short v127;
unsigned int v128;
signed int v129;
unsigned int v130;
v127 = v121 + v121;
v128 = v119 + 5U;
v129 = -2 - 2;
v130 = v13 (v127, v128, v129);
history[history_index++] = (int)v130;
}
break;
case 11: 
return 1;
default: abort ();
}
}
}
}
