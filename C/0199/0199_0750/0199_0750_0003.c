#include <stdlib.h>
extern unsigned int v1 (unsigned int, unsigned short);
extern unsigned int (*v2) (unsigned int, unsigned short);
extern signed int v3 (unsigned short, signed short, signed char);
extern signed int (*v4) (unsigned short, signed short, signed char);
signed short v5 (signed short, unsigned short, unsigned char, unsigned int);
signed short (*v6) (signed short, unsigned short, unsigned char, unsigned int) = v5;
signed short v7 (unsigned int);
signed short (*v8) (unsigned int) = v7;
extern void v9 (void);
extern void (*v10) (void);
signed short v11 (unsigned char, unsigned char, unsigned short);
signed short (*v12) (unsigned char, unsigned char, unsigned short) = v11;
extern signed int v13 (signed short, signed int, signed char, unsigned char);
extern signed int (*v14) (signed short, signed int, signed char, unsigned char);
extern void v15 (unsigned char, unsigned short);
extern void (*v16) (unsigned char, unsigned short);
extern unsigned char v17 (signed int, unsigned char, signed char, unsigned char);
extern unsigned char (*v18) (signed int, unsigned char, signed char, unsigned char);
extern signed short v19 (signed int);
extern signed short (*v20) (signed int);
unsigned int v21 (void);
unsigned int (*v22) (void) = v21;
extern signed short v23 (signed int, unsigned char, unsigned short);
extern signed short (*v24) (signed int, unsigned char, unsigned short);
extern signed short v25 (signed char);
extern signed short (*v26) (signed char);
extern signed char v27 (signed char, unsigned short);
extern signed char (*v28) (signed char, unsigned short);
extern unsigned short v29 (unsigned int);
extern unsigned short (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v92 = 4;
signed short v91 = -2;
signed int v90 = -2;

unsigned int v21 (void)
{
{
for (;;) {
signed int v95 = 3;
unsigned short v94 = 0;
unsigned int v93 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (unsigned char v96, unsigned char v97, unsigned short v98)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed char v101 = 1;
signed int v100 = 0;
signed int v99 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (unsigned int v102)
{
history[history_index++] = (int)v102;
{
for (;;) {
unsigned int v105 = 4U;
unsigned int v104 = 3U;
signed int v103 = -4;
trace++;
switch (trace)
{
case 1: 
{
signed short v106;
signed int v107;
signed char v108;
unsigned char v109;
signed int v110;
v106 = -4 - -3;
v107 = v103 - -4;
v108 = 1 - 3;
v109 = 4 - 1;
v110 = v13 (v106, v107, v108, v109);
history[history_index++] = (int)v110;
}
break;
case 3: 
{
signed short v111;
signed int v112;
signed char v113;
unsigned char v114;
signed int v115;
v111 = -2 + -3;
v112 = -4 + -1;
v113 = 1 - -1;
v114 = 7 + 2;
v115 = v13 (v111, v112, v113, v114);
history[history_index++] = (int)v115;
}
break;
case 9: 
{
signed short v116;
signed int v117;
signed char v118;
unsigned char v119;
signed int v120;
v116 = -3 + 3;
v117 = v103 + v103;
v118 = -1 + -2;
v119 = 1 + 6;
v120 = v13 (v116, v117, v118, v119);
history[history_index++] = (int)v120;
}
break;
case 13: 
return -1;
default: abort ();
}
}
}
}

signed short v5 (signed short v121, unsigned short v122, unsigned char v123, unsigned int v124)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
signed short v127 = 1;
unsigned char v126 = 6;
unsigned int v125 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
