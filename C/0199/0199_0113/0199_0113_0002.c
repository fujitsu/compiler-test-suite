#include <stdlib.h>
extern signed char v1 (unsigned char, unsigned short, signed int, signed int);
extern signed char (*v2) (unsigned char, unsigned short, signed int, signed int);
extern signed int v3 (signed int, unsigned int, signed int, unsigned int);
extern signed int (*v4) (signed int, unsigned int, signed int, unsigned int);
extern void v5 (unsigned short, signed int, unsigned char);
extern void (*v6) (unsigned short, signed int, unsigned char);
extern void v7 (signed int, signed short, unsigned short, unsigned int);
extern void (*v8) (signed int, signed short, unsigned short, unsigned int);
extern signed int v9 (signed int, unsigned char, unsigned char, unsigned char);
extern signed int (*v10) (signed int, unsigned char, unsigned char, unsigned char);
extern unsigned int v11 (unsigned int, signed int);
extern unsigned int (*v12) (unsigned int, signed int);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern void v15 (signed short, unsigned short);
extern void (*v16) (signed short, unsigned short);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
unsigned int v19 (unsigned short, unsigned int);
unsigned int (*v20) (unsigned short, unsigned int) = v19;
extern unsigned int v21 (unsigned char, signed int, signed char, unsigned int);
extern unsigned int (*v22) (unsigned char, signed int, signed char, unsigned int);
extern unsigned int v23 (unsigned short, signed short, signed char, unsigned char);
extern unsigned int (*v24) (unsigned short, signed short, signed char, unsigned char);
signed char v25 (void);
signed char (*v26) (void) = v25;
extern signed short v27 (unsigned short, signed int, unsigned short, unsigned char);
extern signed short (*v28) (unsigned short, signed int, unsigned short, unsigned char);
unsigned int v29 (unsigned char, unsigned short, unsigned short, unsigned char);
unsigned int (*v30) (unsigned char, unsigned short, unsigned short, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v85 = 1U;
signed int v84 = 1;
unsigned char v83 = 4;

unsigned int v29 (unsigned char v86, unsigned short v87, unsigned short v88, unsigned char v89)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
signed char v92 = -3;
unsigned int v91 = 2U;
signed short v90 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v25 (void)
{
{
for (;;) {
signed short v95 = 1;
signed int v94 = -4;
signed char v93 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (unsigned short v96, unsigned int v97)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed char v100 = 2;
signed short v99 = 3;
unsigned short v98 = 4;
trace++;
switch (trace)
{
case 4: 
{
unsigned short v101;
signed int v102;
unsigned short v103;
unsigned char v104;
signed short v105;
v101 = 6 - v96;
v102 = -3 + -1;
v103 = 3 - v96;
v104 = 6 - 1;
v105 = v27 (v101, v102, v103, v104);
history[history_index++] = (int)v105;
}
break;
case 6: 
{
unsigned short v106;
signed int v107;
unsigned short v108;
unsigned char v109;
signed short v110;
v106 = v96 - v96;
v107 = 3 - 1;
v108 = v98 + v98;
v109 = 7 - 4;
v110 = v27 (v106, v107, v108, v109);
history[history_index++] = (int)v110;
}
break;
case 8: 
{
unsigned short v111;
signed int v112;
unsigned short v113;
unsigned char v114;
signed short v115;
v111 = 5 - v96;
v112 = -4 + -1;
v113 = 6 - v96;
v114 = 4 - 1;
v115 = v27 (v111, v112, v113, v114);
history[history_index++] = (int)v115;
}
break;
case 10: 
{
unsigned short v116;
signed short v117;
signed char v118;
unsigned char v119;
unsigned int v120;
v116 = v98 - 6;
v117 = -4 - 3;
v118 = -4 + v100;
v119 = 2 + 1;
v120 = v23 (v116, v117, v118, v119);
history[history_index++] = (int)v120;
}
break;
case 12: 
return 2U;
default: abort ();
}
}
}
}
