#include <stdlib.h>
extern void v1 (unsigned short, unsigned int, unsigned int, signed short);
extern void (*v2) (unsigned short, unsigned int, unsigned int, signed short);
extern void v3 (signed short, signed short, unsigned char);
extern void (*v4) (signed short, signed short, unsigned char);
unsigned char v5 (unsigned int, signed short);
unsigned char (*v6) (unsigned int, signed short) = v5;
extern signed int v7 (signed char, signed char, unsigned short, signed char);
extern signed int (*v8) (signed char, signed char, unsigned short, signed char);
extern void v9 (signed short, unsigned int, unsigned int, unsigned int);
extern void (*v10) (signed short, unsigned int, unsigned int, unsigned int);
extern signed short v11 (unsigned int, signed short);
extern signed short (*v12) (unsigned int, signed short);
extern unsigned int v13 (signed int, unsigned short, unsigned int);
extern unsigned int (*v14) (signed int, unsigned short, unsigned int);
unsigned char v15 (signed int, unsigned char, unsigned int, unsigned short);
unsigned char (*v16) (signed int, unsigned char, unsigned int, unsigned short) = v15;
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
unsigned char v19 (signed char, signed char, unsigned int);
unsigned char (*v20) (signed char, signed char, unsigned int) = v19;
extern signed short v21 (signed short, unsigned int, unsigned short);
extern signed short (*v22) (signed short, unsigned int, unsigned short);
extern void v23 (void);
extern void (*v24) (void);
unsigned short v25 (signed char, unsigned char);
unsigned short (*v26) (signed char, unsigned char) = v25;
extern unsigned int v27 (unsigned short, signed short);
extern unsigned int (*v28) (unsigned short, signed short);
extern unsigned char v29 (unsigned char, unsigned char, unsigned int, signed short);
extern unsigned char (*v30) (unsigned char, unsigned char, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v98 = 4;
signed int v97 = -1;
signed char v96 = 3;

unsigned short v25 (signed char v99, unsigned char v100)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed char v103 = 2;
signed char v102 = 0;
signed short v101 = -1;
trace++;
switch (trace)
{
case 2: 
return 1;
case 4: 
{
unsigned short v104;
signed short v105;
unsigned int v106;
v104 = 7 - 2;
v105 = v101 - -2;
v106 = v27 (v104, v105);
history[history_index++] = (int)v106;
}
break;
case 6: 
{
unsigned short v107;
signed short v108;
unsigned int v109;
v107 = 1 - 2;
v108 = 2 - v101;
v109 = v27 (v107, v108);
history[history_index++] = (int)v109;
}
break;
case 8: 
return 5;
case 10: 
{
unsigned short v110;
signed short v111;
unsigned int v112;
v110 = 2 + 3;
v111 = -2 - -4;
v112 = v27 (v110, v111);
history[history_index++] = (int)v112;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}

unsigned char v19 (signed char v113, signed char v114, unsigned int v115)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned char v118 = 1;
signed short v117 = -3;
unsigned short v116 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (signed int v119, unsigned char v120, unsigned int v121, unsigned short v122)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
signed int v125 = -3;
signed char v124 = -1;
signed char v123 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned int v126, signed short v127)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
unsigned int v130 = 5U;
signed short v129 = 3;
unsigned int v128 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
