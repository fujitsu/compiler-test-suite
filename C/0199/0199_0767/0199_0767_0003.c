#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern void v9 (signed short, signed char);
extern void (*v10) (signed short, signed char);
signed int v11 (signed short, signed char, signed char);
signed int (*v12) (signed short, signed char, signed char) = v11;
extern unsigned char v13 (signed int, unsigned short, signed short, unsigned int);
extern unsigned char (*v14) (signed int, unsigned short, signed short, unsigned int);
extern signed short v15 (signed short, signed short);
extern signed short (*v16) (signed short, signed short);
static signed char v17 (signed int, signed char, unsigned int, signed int);
static signed char (*v18) (signed int, signed char, unsigned int, signed int) = v17;
signed int v19 (signed short, unsigned short, signed short);
signed int (*v20) (signed short, unsigned short, signed short) = v19;
extern unsigned int v21 (unsigned char, unsigned short);
extern unsigned int (*v22) (unsigned char, unsigned short);
signed int v23 (void);
signed int (*v24) (void) = v23;
extern signed short v25 (void);
extern signed short (*v26) (void);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern unsigned short v29 (unsigned char, unsigned short);
extern unsigned short (*v30) (unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v88 = -1;
signed short v87 = -3;
unsigned short v86 = 5;

signed int v23 (void)
{
{
for (;;) {
signed int v91 = -2;
unsigned int v90 = 3U;
unsigned char v89 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (signed short v92, unsigned short v93, signed short v94)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
signed int v97 = -1;
unsigned short v96 = 7;
signed int v95 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v17 (signed int v98, signed char v99, unsigned int v100, signed int v101)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
unsigned int v104 = 7U;
unsigned char v103 = 5;
unsigned char v102 = 0;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v105;
v105 = v27 ();
history[history_index++] = (int)v105;
}
break;
case 5: 
{
unsigned short v106;
v106 = v27 ();
history[history_index++] = (int)v106;
}
break;
case 7: 
{
unsigned short v107;
v107 = v27 ();
history[history_index++] = (int)v107;
}
break;
case 9: 
{
unsigned short v108;
v108 = v27 ();
history[history_index++] = (int)v108;
}
break;
case 11: 
return -4;
default: abort ();
}
}
}
}

signed int v11 (signed short v109, signed char v110, signed char v111)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
signed int v114 = -2;
unsigned short v113 = 1;
signed char v112 = -3;
trace++;
switch (trace)
{
case 2: 
{
signed int v115;
signed char v116;
unsigned int v117;
signed int v118;
signed char v119;
v115 = v114 + v114;
v116 = v112 + v111;
v117 = 6U - 2U;
v118 = v114 + -3;
v119 = v17 (v115, v116, v117, v118);
history[history_index++] = (int)v119;
}
break;
case 12: 
return v114;
default: abort ();
}
}
}
}
