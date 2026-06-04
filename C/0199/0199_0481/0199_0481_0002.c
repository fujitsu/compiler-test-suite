#include <stdlib.h>
unsigned short v1 (signed char, signed int, signed char);
unsigned short (*v2) (signed char, signed int, signed char) = v1;
extern signed char v3 (unsigned int);
extern signed char (*v4) (unsigned int);
extern unsigned short v5 (unsigned char);
extern unsigned short (*v6) (unsigned char);
extern signed int v9 (signed char, signed char);
extern signed int (*v10) (signed char, signed char);
extern void v11 (signed char);
extern void (*v12) (signed char);
signed char v13 (void);
signed char (*v14) (void) = v13;
unsigned char v15 (signed short, signed int, signed short);
unsigned char (*v16) (signed short, signed int, signed short) = v15;
unsigned char v17 (signed short, signed char, signed short, unsigned int);
unsigned char (*v18) (signed short, signed char, signed short, unsigned int) = v17;
extern unsigned char v19 (signed int);
extern unsigned char (*v20) (signed int);
extern signed short v21 (signed short, unsigned short);
extern signed short (*v22) (signed short, unsigned short);
extern void v23 (unsigned short, unsigned short, signed char, signed short);
extern void (*v24) (unsigned short, unsigned short, signed char, signed short);
extern unsigned char v25 (unsigned short, unsigned short, signed int, unsigned short);
extern unsigned char (*v26) (unsigned short, unsigned short, signed int, unsigned short);
extern signed char v27 (unsigned int, unsigned short);
extern signed char (*v28) (unsigned int, unsigned short);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v88 = 1;
signed char v87 = 2;
unsigned short v86 = 5;

unsigned char v17 (signed short v89, signed char v90, signed short v91, unsigned int v92)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned short v95 = 3;
signed char v94 = -2;
signed char v93 = 3;
trace++;
switch (trace)
{
case 8: 
{
signed int v96;
v96 = v29 ();
history[history_index++] = (int)v96;
}
break;
case 10: 
{
signed int v97;
unsigned char v98;
v97 = -2 + 3;
v98 = v19 (v97);
history[history_index++] = (int)v98;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}

unsigned char v15 (signed short v99, signed int v100, signed short v101)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
signed char v104 = -2;
unsigned short v103 = 1;
unsigned char v102 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (void)
{
{
for (;;) {
signed short v107 = 1;
signed short v106 = -2;
signed char v105 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (signed char v108, signed int v109, signed char v110)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
unsigned int v113 = 1U;
signed int v112 = -4;
unsigned int v111 = 7U;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v114;
unsigned short v115;
signed char v116;
v114 = v113 - 7U;
v115 = 3 - 5;
v116 = v27 (v114, v115);
history[history_index++] = (int)v116;
}
break;
case 2: 
{
signed char v117;
v117 = 0 - v108;
v11 (v117);
}
break;
case 4: 
{
unsigned int v118;
signed char v119;
v118 = 1U + 2U;
v119 = v3 (v118);
history[history_index++] = (int)v119;
}
break;
case 16: 
return 4;
default: abort ();
}
}
}
}
