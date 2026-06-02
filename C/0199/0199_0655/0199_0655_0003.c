#include <stdlib.h>
extern signed short v1 (unsigned char, unsigned char, unsigned int);
extern signed short (*v2) (unsigned char, unsigned char, unsigned int);
extern unsigned short v3 (signed char, unsigned char, signed char, signed short);
extern unsigned short (*v4) (signed char, unsigned char, signed char, signed short);
extern unsigned short v5 (signed short, unsigned char, unsigned short, signed char);
extern unsigned short (*v6) (signed short, unsigned char, unsigned short, signed char);
extern signed char v7 (unsigned short, signed short, unsigned char);
extern signed char (*v8) (unsigned short, signed short, unsigned char);
signed short v9 (unsigned char);
signed short (*v10) (unsigned char) = v9;
signed int v11 (unsigned char, unsigned char, signed int, signed short);
signed int (*v12) (unsigned char, unsigned char, signed int, signed short) = v11;
signed char v13 (signed short, signed char);
signed char (*v14) (signed short, signed char) = v13;
extern void v15 (unsigned char, signed char);
extern void (*v16) (unsigned char, signed char);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern signed int v21 (unsigned short, signed int, unsigned char);
extern signed int (*v22) (unsigned short, signed int, unsigned char);
extern signed int v23 (unsigned int, unsigned int, signed int);
extern signed int (*v24) (unsigned int, unsigned int, signed int);
extern signed short v25 (unsigned short);
extern signed short (*v26) (unsigned short);
extern signed int v27 (unsigned int, unsigned int, unsigned int);
extern signed int (*v28) (unsigned int, unsigned int, unsigned int);
extern unsigned short v29 (signed int);
extern unsigned short (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v110 = 1;
unsigned short v109 = 0;
unsigned short v108 = 6;

signed char v13 (signed short v111, signed char v112)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned short v115 = 2;
unsigned int v114 = 0U;
signed short v113 = -3;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v116;
signed short v117;
v116 = 2 + 1;
v117 = v25 (v116);
history[history_index++] = (int)v117;
}
break;
case 5: 
{
unsigned int v118;
unsigned int v119;
signed int v120;
signed int v121;
v118 = v114 - 3U;
v119 = 4U + v114;
v120 = 2 - -2;
v121 = v23 (v118, v119, v120);
history[history_index++] = (int)v121;
}
break;
case 13: 
return -2;
default: abort ();
}
}
}
}

signed int v11 (unsigned char v122, unsigned char v123, signed int v124, signed short v125)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
unsigned int v128 = 5U;
signed int v127 = 3;
signed char v126 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (unsigned char v129)
{
history[history_index++] = (int)v129;
{
for (;;) {
signed int v132 = 0;
signed int v131 = -2;
signed int v130 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
