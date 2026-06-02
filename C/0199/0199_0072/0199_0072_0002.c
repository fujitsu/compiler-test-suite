#include <stdlib.h>
extern signed int v1 (unsigned char, signed short, signed int, unsigned short);
extern signed int (*v2) (unsigned char, signed short, signed int, unsigned short);
unsigned int v3 (unsigned short, unsigned int);
unsigned int (*v4) (unsigned short, unsigned int) = v3;
extern unsigned char v5 (signed int, unsigned char, unsigned int);
extern unsigned char (*v6) (signed int, unsigned char, unsigned int);
extern unsigned char v7 (signed int, unsigned char, signed char, signed short);
extern unsigned char (*v8) (signed int, unsigned char, signed char, signed short);
extern unsigned char v9 (unsigned int, signed char, unsigned char, unsigned int);
extern unsigned char (*v10) (unsigned int, signed char, unsigned char, unsigned int);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern void v15 (unsigned char, unsigned char, signed int);
extern void (*v16) (unsigned char, unsigned char, signed int);
extern unsigned char v17 (signed int);
extern unsigned char (*v18) (signed int);
signed short v19 (unsigned char, unsigned char, signed short, unsigned int);
signed short (*v20) (unsigned char, unsigned char, signed short, unsigned int) = v19;
extern unsigned int v21 (unsigned char, signed short, unsigned short);
extern unsigned int (*v22) (unsigned char, signed short, unsigned short);
extern unsigned short v23 (signed short, unsigned int);
extern unsigned short (*v24) (signed short, unsigned int);
unsigned int v25 (signed char, signed short, unsigned int, signed char);
unsigned int (*v26) (signed char, signed short, unsigned int, signed char) = v25;
extern signed char v27 (signed short);
extern signed char (*v28) (signed short);
extern signed int v29 (unsigned int, unsigned char, signed short, unsigned int);
extern signed int (*v30) (unsigned int, unsigned char, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v77 = -2;
signed char v76 = 2;
unsigned char v75 = 3;

unsigned int v25 (signed char v78, signed short v79, unsigned int v80, signed char v81)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
signed int v84 = 1;
unsigned short v83 = 1;
signed int v82 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (unsigned char v85, unsigned char v86, signed short v87, unsigned int v88)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
signed char v91 = -3;
unsigned short v90 = 2;
signed char v89 = 1;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v92;
signed char v93;
unsigned char v94;
unsigned int v95;
unsigned char v96;
v92 = v88 + v88;
v93 = v89 - v89;
v94 = 3 - v86;
v95 = 0U - 1U;
v96 = v9 (v92, v93, v94, v95);
history[history_index++] = (int)v96;
}
break;
case 3: 
{
unsigned int v97;
signed char v98;
unsigned char v99;
unsigned int v100;
unsigned char v101;
v97 = v88 - 3U;
v98 = v91 - v89;
v99 = 2 + v85;
v100 = 7U + v88;
v101 = v9 (v97, v98, v99, v100);
history[history_index++] = (int)v101;
}
break;
case 5: 
{
unsigned int v102;
signed char v103;
unsigned char v104;
unsigned int v105;
unsigned char v106;
v102 = v88 - 0U;
v103 = v89 - v89;
v104 = v86 - v86;
v105 = 5U - v88;
v106 = v9 (v102, v103, v104, v105);
history[history_index++] = (int)v106;
}
break;
case 7: 
{
unsigned int v107;
signed char v108;
unsigned char v109;
unsigned int v110;
unsigned char v111;
v107 = 5U - v88;
v108 = -2 + v91;
v109 = 2 + 0;
v110 = 2U + 6U;
v111 = v9 (v107, v108, v109, v110);
history[history_index++] = (int)v111;
}
break;
case 9: 
{
unsigned int v112;
signed char v113;
unsigned char v114;
unsigned int v115;
unsigned char v116;
v112 = v88 - v88;
v113 = v91 - 2;
v114 = 3 - v86;
v115 = v88 - v88;
v116 = v9 (v112, v113, v114, v115);
history[history_index++] = (int)v116;
}
break;
case 11: 
return v87;
default: abort ();
}
}
}
}

unsigned int v3 (unsigned short v117, unsigned int v118)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
signed char v121 = 2;
signed short v120 = -1;
unsigned short v119 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
