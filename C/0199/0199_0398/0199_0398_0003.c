#include <stdlib.h>
extern signed short v1 (signed int, unsigned short, unsigned short);
extern signed short (*v2) (signed int, unsigned short, unsigned short);
extern unsigned char v3 (unsigned int);
extern unsigned char (*v4) (unsigned int);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned short v7 (unsigned short, signed char);
extern unsigned short (*v8) (unsigned short, signed char);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern unsigned int v13 (unsigned int, signed char);
extern unsigned int (*v14) (unsigned int, signed char);
extern unsigned int v15 (signed int, signed short, unsigned int, unsigned short);
extern unsigned int (*v16) (signed int, signed short, unsigned int, unsigned short);
extern void v17 (unsigned short);
extern void (*v18) (unsigned short);
unsigned short v19 (unsigned short, unsigned int, unsigned char);
unsigned short (*v20) (unsigned short, unsigned int, unsigned char) = v19;
extern signed short v21 (unsigned char, unsigned char, unsigned int, signed short);
extern signed short (*v22) (unsigned char, unsigned char, unsigned int, signed short);
unsigned char v23 (signed int, unsigned char, signed int);
unsigned char (*v24) (signed int, unsigned char, signed int) = v23;
unsigned int v25 (signed char, unsigned char, unsigned int, signed short);
unsigned int (*v26) (signed char, unsigned char, unsigned int, signed short) = v25;
extern unsigned int v27 (signed int, unsigned short, unsigned short);
extern unsigned int (*v28) (signed int, unsigned short, unsigned short);
extern signed short v29 (signed int, unsigned char);
extern signed short (*v30) (signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v105 = -3;
unsigned short v104 = 5;
unsigned int v103 = 2U;

unsigned int v25 (signed char v106, unsigned char v107, unsigned int v108, signed short v109)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
signed char v112 = -2;
signed char v111 = -1;
unsigned int v110 = 3U;
trace++;
switch (trace)
{
case 6: 
{
signed int v113;
unsigned char v114;
signed short v115;
v113 = -3 - -3;
v114 = v107 - v107;
v115 = v29 (v113, v114);
history[history_index++] = (int)v115;
}
break;
case 8: 
{
signed int v116;
unsigned short v117;
unsigned short v118;
unsigned int v119;
v116 = -3 - -1;
v117 = 6 - 7;
v118 = 6 - 3;
v119 = v27 (v116, v117, v118);
history[history_index++] = (int)v119;
}
break;
case 10: 
return v110;
default: abort ();
}
}
}
}

unsigned char v23 (signed int v120, unsigned char v121, signed int v122)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
unsigned char v125 = 7;
unsigned char v124 = 2;
unsigned short v123 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (unsigned short v126, unsigned int v127, unsigned char v128)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
unsigned int v131 = 4U;
signed int v130 = 0;
signed char v129 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
