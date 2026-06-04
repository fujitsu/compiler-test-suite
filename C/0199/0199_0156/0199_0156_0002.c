#include <stdlib.h>
extern unsigned char v1 (unsigned char, signed short, signed short);
extern unsigned char (*v2) (unsigned char, signed short, signed short);
signed char v3 (unsigned int, signed int, signed int);
signed char (*v4) (unsigned int, signed int, signed int) = v3;
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern signed short v7 (unsigned short, signed short);
extern signed short (*v8) (unsigned short, signed short);
extern unsigned int v9 (signed char, unsigned char);
extern unsigned int (*v10) (signed char, unsigned char);
extern void v11 (signed char, signed short, signed int);
extern void (*v12) (signed char, signed short, signed int);
extern signed int v13 (void);
extern signed int (*v14) (void);
extern unsigned short v15 (signed char, unsigned char, signed int, unsigned short);
extern unsigned short (*v16) (signed char, unsigned char, signed int, unsigned short);
signed char v17 (unsigned short, signed char, signed int);
signed char (*v18) (unsigned short, signed char, signed int) = v17;
extern unsigned short v19 (unsigned char, signed char, unsigned char);
extern unsigned short (*v20) (unsigned char, signed char, unsigned char);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern signed char v23 (void);
extern signed char (*v24) (void);
extern unsigned int v25 (unsigned short, signed short, signed short, signed char);
extern unsigned int (*v26) (unsigned short, signed short, signed short, signed char);
unsigned short v27 (signed short, signed int, signed char, signed int);
unsigned short (*v28) (signed short, signed int, signed char, signed int) = v27;
signed int v29 (signed char, unsigned short, unsigned short, signed short);
signed int (*v30) (signed char, unsigned short, unsigned short, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v88 = 6;
unsigned short v87 = 6;
signed char v86 = -1;

signed int v29 (signed char v89, unsigned short v90, unsigned short v91, signed short v92)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned int v95 = 4U;
unsigned int v94 = 4U;
signed char v93 = 0;
trace++;
switch (trace)
{
case 9: 
return -1;
default: abort ();
}
}
}
}

unsigned short v27 (signed short v96, signed int v97, signed char v98, signed int v99)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
signed char v102 = 3;
unsigned int v101 = 3U;
unsigned char v100 = 7;
trace++;
switch (trace)
{
case 2: 
{
unsigned short v103;
signed short v104;
signed short v105;
signed char v106;
unsigned int v107;
v103 = 2 + 2;
v104 = v96 - -2;
v105 = -3 + 0;
v106 = v102 - 3;
v107 = v25 (v103, v104, v105, v106);
history[history_index++] = (int)v107;
}
break;
case 4: 
return 3;
default: abort ();
}
}
}
}

signed char v17 (unsigned short v108, signed char v109, signed int v110)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed int v113 = -4;
unsigned short v112 = 6;
signed int v111 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (unsigned int v114, signed int v115, signed int v116)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
signed char v119 = -3;
signed char v118 = 0;
signed int v117 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
