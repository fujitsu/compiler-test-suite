#include <stdlib.h>
signed int v1 (unsigned char, unsigned char, unsigned char, unsigned int);
signed int (*v2) (unsigned char, unsigned char, unsigned char, unsigned int) = v1;
unsigned short v3 (unsigned char, signed short, unsigned char);
unsigned short (*v4) (unsigned char, signed short, unsigned char) = v3;
extern signed int v5 (signed short);
extern signed int (*v6) (signed short);
extern signed short v7 (signed int, signed int, signed short, unsigned short);
extern signed short (*v8) (signed int, signed int, signed short, unsigned short);
extern signed short v9 (unsigned int, signed char);
extern signed short (*v10) (unsigned int, signed char);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern signed char v13 (signed int);
extern signed char (*v14) (signed int);
extern signed int v15 (signed char, unsigned short, unsigned short, unsigned int);
extern signed int (*v16) (signed char, unsigned short, unsigned short, unsigned int);
extern signed int v17 (unsigned char, signed int, signed char);
extern signed int (*v18) (unsigned char, signed int, signed char);
extern void v19 (unsigned int, signed int, signed int);
extern void (*v20) (unsigned int, signed int, signed int);
extern unsigned char v21 (signed int, unsigned short, signed char);
extern unsigned char (*v22) (signed int, unsigned short, signed char);
signed short v23 (unsigned int, signed char, unsigned short);
signed short (*v24) (unsigned int, signed char, unsigned short) = v23;
extern void v25 (unsigned char, signed short, unsigned char);
extern void (*v26) (unsigned char, signed short, unsigned char);
extern unsigned char v27 (signed short, unsigned char, signed short);
extern unsigned char (*v28) (signed short, unsigned char, signed short);
extern unsigned char v29 (signed int);
extern unsigned char (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v87 = 6;
unsigned char v86 = 6;
unsigned int v85 = 6U;

signed short v23 (unsigned int v88, signed char v89, unsigned short v90)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed char v93 = 1;
unsigned char v92 = 7;
unsigned int v91 = 5U;
trace++;
switch (trace)
{
case 4: 
return 3;
case 6: 
return 0;
default: abort ();
}
}
}
}

unsigned short v3 (unsigned char v94, signed short v95, unsigned char v96)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed short v99 = -1;
unsigned char v98 = 5;
signed int v97 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (unsigned char v100, unsigned char v101, unsigned char v102, unsigned int v103)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed char v106 = 3;
unsigned short v105 = 1;
unsigned short v104 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed int v107;
signed int v108;
signed short v109;
unsigned short v110;
signed short v111;
v107 = 2 - 0;
v108 = 2 - -3;
v109 = -1 + 3;
v110 = 0 - v105;
v111 = v7 (v107, v108, v109, v110);
history[history_index++] = (int)v111;
}
break;
case 8: 
{
signed int v112;
unsigned short v113;
signed char v114;
unsigned char v115;
v112 = -4 + -2;
v113 = v104 + 5;
v114 = v106 - v106;
v115 = v21 (v112, v113, v114);
history[history_index++] = (int)v115;
}
break;
case 10: 
{
signed int v116;
unsigned short v117;
signed char v118;
unsigned char v119;
v116 = 3 - 2;
v117 = v104 - v105;
v118 = v106 + 3;
v119 = v21 (v116, v117, v118);
history[history_index++] = (int)v119;
}
break;
case 12: 
return 0;
default: abort ();
}
}
}
}
