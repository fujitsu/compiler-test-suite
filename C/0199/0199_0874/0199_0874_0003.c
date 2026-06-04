#include <stdlib.h>
unsigned int v1 (signed short);
unsigned int (*v2) (signed short) = v1;
unsigned short v3 (signed int);
unsigned short (*v4) (signed int) = v3;
extern unsigned short v5 (signed int, signed char, unsigned int);
extern unsigned short (*v6) (signed int, signed char, unsigned int);
extern void v7 (signed short, unsigned int);
extern void (*v8) (signed short, unsigned int);
extern void v9 (void);
extern void (*v10) (void);
extern signed char v11 (signed short, unsigned char);
extern signed char (*v12) (signed short, unsigned char);
extern unsigned int v13 (signed char, unsigned int, signed char, signed char);
extern unsigned int (*v14) (signed char, unsigned int, signed char, signed char);
extern signed char v15 (unsigned int, signed int, signed char, signed short);
extern signed char (*v16) (unsigned int, signed int, signed char, signed short);
static signed short v17 (signed int, unsigned int);
static signed short (*v18) (signed int, unsigned int) = v17;
extern unsigned short v19 (signed int, unsigned int, unsigned short);
extern unsigned short (*v20) (signed int, unsigned int, unsigned short);
extern signed short v21 (signed short);
extern signed short (*v22) (signed short);
extern signed char v23 (signed char, unsigned int);
extern signed char (*v24) (signed char, unsigned int);
extern unsigned int v25 (signed short);
extern unsigned int (*v26) (signed short);
extern unsigned int v27 (unsigned int, unsigned short);
extern unsigned int (*v28) (unsigned int, unsigned short);
signed short v29 (unsigned short);
signed short (*v30) (unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v89 = 2;
unsigned char v88 = 2;
signed short v87 = -3;

signed short v29 (unsigned short v90)
{
history[history_index++] = (int)v90;
{
for (;;) {
unsigned short v93 = 4;
signed char v92 = -4;
signed int v91 = 3;
trace++;
switch (trace)
{
case 6: 
return 3;
case 8: 
return 1;
default: abort ();
}
}
}
}

static signed short v17 (signed int v94, unsigned int v95)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
signed int v98 = 2;
unsigned short v97 = 1;
unsigned int v96 = 4U;
trace++;
switch (trace)
{
case 1: 
return -2;
case 3: 
return 2;
default: abort ();
}
}
}
}

unsigned short v3 (signed int v99)
{
history[history_index++] = (int)v99;
{
for (;;) {
unsigned int v102 = 0U;
unsigned int v101 = 6U;
signed char v100 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (signed short v103)
{
history[history_index++] = (int)v103;
{
for (;;) {
signed int v106 = 3;
signed char v105 = -1;
unsigned int v104 = 1U;
trace++;
switch (trace)
{
case 0: 
{
signed int v107;
unsigned int v108;
signed short v109;
v107 = v106 - v106;
v108 = 6U + v104;
v109 = v17 (v107, v108);
history[history_index++] = (int)v109;
}
break;
case 2: 
{
signed int v110;
unsigned int v111;
signed short v112;
v110 = -2 + 3;
v111 = v104 - v104;
v112 = v17 (v110, v111);
history[history_index++] = (int)v112;
}
break;
case 4: 
{
signed char v113;
unsigned int v114;
signed char v115;
v113 = 0 - -2;
v114 = v104 + v104;
v115 = v23 (v113, v114);
history[history_index++] = (int)v115;
}
break;
case 10: 
{
signed int v116;
signed char v117;
unsigned int v118;
unsigned short v119;
v116 = -3 - v106;
v117 = -3 + v105;
v118 = 7U + v104;
v119 = v5 (v116, v117, v118);
history[history_index++] = (int)v119;
}
break;
case 12: 
return 1U;
default: abort ();
}
}
}
}
