#include <stdlib.h>
extern unsigned short v1 (unsigned short, unsigned char);
extern unsigned short (*v2) (unsigned short, unsigned char);
signed char v3 (unsigned short, unsigned char);
signed char (*v4) (unsigned short, unsigned char) = v3;
extern unsigned char v5 (signed short);
extern unsigned char (*v6) (signed short);
unsigned short v9 (unsigned int, unsigned short);
unsigned short (*v10) (unsigned int, unsigned short) = v9;
unsigned short v11 (unsigned short, signed int);
unsigned short (*v12) (unsigned short, signed int) = v11;
extern unsigned char v13 (unsigned char, signed int, unsigned short);
extern unsigned char (*v14) (unsigned char, signed int, unsigned short);
extern signed int v15 (void);
extern signed int (*v16) (void);
static signed char v17 (unsigned int, signed char, signed int);
static signed char (*v18) (unsigned int, signed char, signed int) = v17;
unsigned int v19 (signed short);
unsigned int (*v20) (signed short) = v19;
extern void v21 (unsigned short, signed short, unsigned short);
extern void (*v22) (unsigned short, signed short, unsigned short);
extern signed short v23 (unsigned short);
extern signed short (*v24) (unsigned short);
extern unsigned char v25 (unsigned char);
extern unsigned char (*v26) (unsigned char);
extern signed int v29 (signed int, signed short);
extern signed int (*v30) (signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v82 = 1;
signed char v81 = -4;
unsigned short v80 = 0;

unsigned int v19 (signed short v83)
{
history[history_index++] = (int)v83;
{
for (;;) {
unsigned char v86 = 6;
signed short v85 = 1;
unsigned int v84 = 0U;
trace++;
switch (trace)
{
case 1: 
return 2U;
default: abort ();
}
}
}
}

static signed char v17 (unsigned int v87, signed char v88, signed int v89)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned short v92 = 3;
signed int v91 = -4;
signed char v90 = 2;
trace++;
switch (trace)
{
case 8: 
{
unsigned short v93;
signed short v94;
unsigned short v95;
v93 = v92 + 3;
v94 = 2 - 0;
v95 = v92 + 3;
v21 (v93, v94, v95);
}
break;
case 10: 
{
unsigned short v96;
signed short v97;
unsigned short v98;
v96 = 0 + v92;
v97 = -4 - 1;
v98 = 1 - v92;
v21 (v96, v97, v98);
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}

unsigned short v11 (unsigned short v99, signed int v100)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
unsigned short v103 = 5;
signed short v102 = -2;
unsigned char v101 = 4;
trace++;
switch (trace)
{
case 7: 
{
unsigned int v104;
signed char v105;
signed int v106;
signed char v107;
v104 = 7U - 4U;
v105 = 2 - -1;
v106 = v100 - -4;
v107 = v17 (v104, v105, v106);
history[history_index++] = (int)v107;
}
break;
case 13: 
return v99;
default: abort ();
}
}
}
}

unsigned short v9 (unsigned int v108, unsigned short v109)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned short v112 = 5;
signed char v111 = -1;
signed int v110 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (unsigned short v113, unsigned char v114)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
unsigned char v117 = 1;
signed short v116 = -3;
unsigned short v115 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
