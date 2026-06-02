#include <stdlib.h>
extern signed short v1 (unsigned short, signed short, unsigned char);
extern signed short (*v2) (unsigned short, signed short, unsigned char);
extern signed int v3 (signed int, signed short, unsigned short);
extern signed int (*v4) (signed int, signed short, unsigned short);
extern void v5 (unsigned short, signed char);
extern void (*v6) (unsigned short, signed char);
extern unsigned int v7 (signed short, unsigned int);
extern unsigned int (*v8) (signed short, unsigned int);
extern unsigned short v9 (unsigned int, signed char);
extern unsigned short (*v10) (unsigned int, signed char);
extern signed char v11 (signed char, signed char);
extern signed char (*v12) (signed char, signed char);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern unsigned short v15 (unsigned short);
extern unsigned short (*v16) (unsigned short);
signed int v17 (unsigned short, signed int);
signed int (*v18) (unsigned short, signed int) = v17;
extern signed char v19 (signed int, signed int);
extern signed char (*v20) (signed int, signed int);
extern unsigned int v21 (unsigned char, signed char, unsigned int);
extern unsigned int (*v22) (unsigned char, signed char, unsigned int);
extern void v23 (signed short, unsigned int, signed short);
extern void (*v24) (signed short, unsigned int, signed short);
signed char v25 (unsigned short, unsigned char, signed char, signed int);
signed char (*v26) (unsigned short, unsigned char, signed char, signed int) = v25;
static unsigned char v27 (signed short, signed char, unsigned char);
static unsigned char (*v28) (signed short, signed char, unsigned char) = v27;
extern signed short v29 (signed char, unsigned char);
extern signed short (*v30) (signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v99 = -1;
unsigned int v98 = 7U;
unsigned char v97 = 0;

static unsigned char v27 (signed short v100, signed char v101, unsigned char v102)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed char v105 = 0;
signed int v104 = -2;
signed char v103 = 1;
trace++;
switch (trace)
{
case 3: 
{
signed char v106;
unsigned char v107;
signed short v108;
v106 = v101 + 1;
v107 = v102 + v102;
v108 = v29 (v106, v107);
history[history_index++] = (int)v108;
}
break;
case 5: 
{
signed char v109;
unsigned char v110;
signed short v111;
v109 = v103 - v101;
v110 = 2 - v102;
v111 = v29 (v109, v110);
history[history_index++] = (int)v111;
}
break;
case 7: 
{
signed char v112;
unsigned char v113;
signed short v114;
v112 = v101 - 1;
v113 = v102 + v102;
v114 = v29 (v112, v113);
history[history_index++] = (int)v114;
}
break;
case 9: 
{
signed char v115;
unsigned char v116;
signed short v117;
v115 = -4 + v101;
v116 = v102 - v102;
v117 = v29 (v115, v116);
history[history_index++] = (int)v117;
}
break;
case 11: 
return 1;
default: abort ();
}
}
}
}

signed char v25 (unsigned short v118, unsigned char v119, signed char v120, signed int v121)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
signed int v124 = 3;
unsigned char v123 = 4;
unsigned short v122 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (unsigned short v125, signed int v126)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
signed char v129 = -1;
unsigned int v128 = 6U;
signed short v127 = -2;
trace++;
switch (trace)
{
case 2: 
{
signed short v130;
signed char v131;
unsigned char v132;
unsigned char v133;
v130 = v127 - -3;
v131 = v129 + v129;
v132 = 6 + 0;
v133 = v27 (v130, v131, v132);
history[history_index++] = (int)v133;
}
break;
case 12: 
return v126;
default: abort ();
}
}
}
}
