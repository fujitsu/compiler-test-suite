#include <stdlib.h>
extern unsigned char v1 (signed char, unsigned int, unsigned int, unsigned int);
extern unsigned char (*v2) (signed char, unsigned int, unsigned int, unsigned int);
extern signed char v3 (signed int, unsigned char, unsigned int, unsigned char);
extern signed char (*v4) (signed int, unsigned char, unsigned int, unsigned char);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern signed char v7 (signed short, unsigned short);
extern signed char (*v8) (signed short, unsigned short);
signed char v9 (signed char, unsigned short, unsigned int);
signed char (*v10) (signed char, unsigned short, unsigned int) = v9;
extern unsigned short v13 (unsigned char, signed short, unsigned char);
extern unsigned short (*v14) (unsigned char, signed short, unsigned char);
extern signed short v15 (signed char, signed short);
extern signed short (*v16) (signed char, signed short);
signed char v17 (signed short, unsigned char);
signed char (*v18) (signed short, unsigned char) = v17;
unsigned short v19 (signed int, signed char, signed short, unsigned short);
unsigned short (*v20) (signed int, signed char, signed short, unsigned short) = v19;
signed char v21 (void);
signed char (*v22) (void) = v21;
unsigned int v23 (signed int, unsigned short);
unsigned int (*v24) (signed int, unsigned short) = v23;
extern void v25 (void);
extern void (*v26) (void);
extern unsigned short v27 (signed char);
extern unsigned short (*v28) (signed char);
static unsigned int v29 (signed char, signed int, signed short, unsigned int);
static unsigned int (*v30) (signed char, signed int, signed short, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v76 = 7U;
signed int v75 = 1;
unsigned int v74 = 4U;

static unsigned int v29 (signed char v77, signed int v78, signed short v79, unsigned int v80)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
signed char v83 = 2;
signed char v82 = 3;
signed int v81 = -1;
trace++;
switch (trace)
{
case 6: 
return v80;
case 8: 
return 5U;
default: abort ();
}
}
}
}

unsigned int v23 (signed int v84, unsigned short v85)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
unsigned short v88 = 7;
unsigned int v87 = 0U;
signed int v86 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v21 (void)
{
{
for (;;) {
unsigned short v91 = 1;
signed char v90 = -1;
signed char v89 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (signed int v92, signed char v93, signed short v94, unsigned short v95)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned int v98 = 1U;
unsigned int v97 = 5U;
unsigned short v96 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (signed short v99, unsigned char v100)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
unsigned char v103 = 0;
unsigned char v102 = 2;
unsigned short v101 = 6;
trace++;
switch (trace)
{
case 5: 
{
signed char v104;
signed int v105;
signed short v106;
unsigned int v107;
unsigned int v108;
v104 = -2 - 1;
v105 = 0 - -2;
v106 = -4 + v99;
v107 = 7U - 2U;
v108 = v29 (v104, v105, v106, v107);
history[history_index++] = (int)v108;
}
break;
case 7: 
{
signed char v109;
signed int v110;
signed short v111;
unsigned int v112;
unsigned int v113;
v109 = 2 + -4;
v110 = -2 + -3;
v111 = v99 + v99;
v112 = 2U + 4U;
v113 = v29 (v109, v110, v111, v112);
history[history_index++] = (int)v113;
}
break;
case 9: 
return -2;
case 11: 
return 2;
default: abort ();
}
}
}
}

signed char v9 (signed char v114, unsigned short v115, unsigned int v116)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
signed int v119 = -3;
signed int v118 = 0;
unsigned short v117 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
