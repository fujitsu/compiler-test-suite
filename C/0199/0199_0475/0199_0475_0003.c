#include <stdlib.h>
unsigned char v1 (unsigned char, unsigned int, unsigned char, signed char);
unsigned char (*v2) (unsigned char, unsigned int, unsigned char, signed char) = v1;
extern unsigned int v3 (unsigned short, signed short, signed int);
extern unsigned int (*v4) (unsigned short, signed short, signed int);
extern signed char v5 (signed char, unsigned char, signed char);
extern signed char (*v6) (signed char, unsigned char, signed char);
extern unsigned char v7 (signed int);
extern unsigned char (*v8) (signed int);
extern signed char v9 (signed short, signed char, unsigned int, signed short);
extern signed char (*v10) (signed short, signed char, unsigned int, signed short);
extern unsigned char v11 (unsigned int, unsigned int);
extern unsigned char (*v12) (unsigned int, unsigned int);
extern signed int v13 (signed short);
extern signed int (*v14) (signed short);
extern unsigned int v15 (unsigned short, unsigned short, signed int, signed int);
extern unsigned int (*v16) (unsigned short, unsigned short, signed int, signed int);
extern signed char v17 (unsigned short, signed int, unsigned short);
extern signed char (*v18) (unsigned short, signed int, unsigned short);
extern unsigned short v19 (unsigned char, unsigned short);
extern unsigned short (*v20) (unsigned char, unsigned short);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
void v23 (signed char, unsigned short);
void (*v24) (signed char, unsigned short) = v23;
extern unsigned short v25 (signed int, signed int, unsigned short);
extern unsigned short (*v26) (signed int, signed int, unsigned short);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v111 = -3;
unsigned short v110 = 6;
signed int v109 = -2;

void v23 (signed char v112, unsigned short v113)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
signed short v116 = -2;
signed int v115 = -3;
signed int v114 = 0;
trace++;
switch (trace)
{
case 4: 
{
signed int v117;
signed int v118;
unsigned short v119;
unsigned short v120;
v117 = v114 - v114;
v118 = -4 + -1;
v119 = v113 - v113;
v120 = v25 (v117, v118, v119);
history[history_index++] = (int)v120;
}
break;
case 6: 
return;
case 8: 
return;
default: abort ();
}
}
}
}

unsigned char v1 (unsigned char v121, unsigned int v122, unsigned char v123, signed char v124)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
signed char v127 = 3;
signed int v126 = 2;
unsigned short v125 = 5;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v128;
signed short v129;
signed int v130;
unsigned int v131;
v128 = 3 + 5;
v129 = -4 + 0;
v130 = v126 + v126;
v131 = v3 (v128, v129, v130);
history[history_index++] = (int)v131;
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}
