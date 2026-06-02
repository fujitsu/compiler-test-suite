#include <stdlib.h>
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
unsigned int v5 (signed int);
unsigned int (*v6) (signed int) = v5;
signed short v7 (signed short);
signed short (*v8) (signed short) = v7;
extern unsigned short v9 (signed int, signed int);
extern unsigned short (*v10) (signed int, signed int);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern signed short v13 (signed int, unsigned char);
extern signed short (*v14) (signed int, unsigned char);
extern unsigned int v15 (unsigned char);
extern unsigned int (*v16) (unsigned char);
unsigned int v17 (unsigned int, unsigned short, signed short, unsigned short);
unsigned int (*v18) (unsigned int, unsigned short, signed short, unsigned short) = v17;
extern unsigned int v19 (signed char, unsigned short, unsigned short);
extern unsigned int (*v20) (signed char, unsigned short, unsigned short);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern unsigned int v23 (unsigned char, unsigned int, signed int, unsigned int);
extern unsigned int (*v24) (unsigned char, unsigned int, signed int, unsigned int);
extern signed int v25 (unsigned char, unsigned int, signed short, unsigned short);
extern signed int (*v26) (unsigned char, unsigned int, signed short, unsigned short);
void v27 (unsigned int, unsigned short);
void (*v28) (unsigned int, unsigned short) = v27;
extern void v29 (unsigned int, unsigned char);
extern void (*v30) (unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v89 = 3;
unsigned int v88 = 0U;
signed int v87 = 2;

void v27 (unsigned int v90, unsigned short v91)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
unsigned char v94 = 6;
signed short v93 = 1;
signed short v92 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (unsigned int v95, unsigned short v96, signed short v97, unsigned short v98)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed int v101 = -3;
signed char v100 = 2;
unsigned int v99 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (signed short v102)
{
history[history_index++] = (int)v102;
{
for (;;) {
signed short v105 = 0;
unsigned short v104 = 6;
unsigned int v103 = 3U;
trace++;
switch (trace)
{
case 1: 
{
signed int v106;
unsigned char v107;
signed short v108;
v106 = 3 - 1;
v107 = 3 + 6;
v108 = v13 (v106, v107);
history[history_index++] = (int)v108;
}
break;
case 3: 
{
signed int v109;
unsigned char v110;
signed short v111;
v109 = -1 + 0;
v110 = 4 - 4;
v111 = v13 (v109, v110);
history[history_index++] = (int)v111;
}
break;
case 5: 
{
signed int v112;
unsigned char v113;
signed short v114;
v112 = 0 - 2;
v113 = 0 + 5;
v114 = v13 (v112, v113);
history[history_index++] = (int)v114;
}
break;
case 7: 
{
signed int v115;
unsigned char v116;
signed short v117;
v115 = -3 + 0;
v116 = 2 + 5;
v117 = v13 (v115, v116);
history[history_index++] = (int)v117;
}
break;
case 9: 
{
signed int v118;
unsigned char v119;
signed short v120;
v118 = -1 - -3;
v119 = 2 + 4;
v120 = v13 (v118, v119);
history[history_index++] = (int)v120;
}
break;
case 13: 
return v102;
default: abort ();
}
}
}
}

unsigned int v5 (signed int v121)
{
history[history_index++] = (int)v121;
{
for (;;) {
unsigned int v124 = 2U;
signed int v123 = -4;
unsigned int v122 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
