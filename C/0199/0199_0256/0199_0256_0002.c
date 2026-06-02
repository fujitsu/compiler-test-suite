#include <stdlib.h>
unsigned char v1 (unsigned char);
unsigned char (*v2) (unsigned char) = v1;
extern signed int v3 (unsigned short, signed short);
extern signed int (*v4) (unsigned short, signed short);
unsigned int v5 (signed char, signed short, signed char, unsigned int);
unsigned int (*v6) (signed char, signed short, signed char, unsigned int) = v5;
extern signed short v7 (void);
extern signed short (*v8) (void);
extern void v9 (signed char, unsigned char);
extern void (*v10) (signed char, unsigned char);
unsigned int v11 (signed int, unsigned short);
unsigned int (*v12) (signed int, unsigned short) = v11;
extern void v13 (void);
extern void (*v14) (void);
static unsigned int v15 (unsigned int, unsigned short, signed int);
static unsigned int (*v16) (unsigned int, unsigned short, signed int) = v15;
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern unsigned short v19 (signed short);
extern unsigned short (*v20) (signed short);
unsigned short v21 (unsigned char, signed short);
unsigned short (*v22) (unsigned char, signed short) = v21;
extern signed short v23 (unsigned int);
extern signed short (*v24) (unsigned int);
signed char v25 (unsigned short);
signed char (*v26) (unsigned short) = v25;
extern signed char v27 (unsigned short);
extern signed char (*v28) (unsigned short);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v70 = 2;
unsigned int v69 = 3U;
signed char v68 = -4;

signed char v25 (unsigned short v71)
{
history[history_index++] = (int)v71;
{
for (;;) {
unsigned char v74 = 1;
unsigned short v73 = 5;
unsigned short v72 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (unsigned char v75, signed short v76)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
signed char v79 = -3;
signed int v78 = 0;
signed short v77 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v15 (unsigned int v80, unsigned short v81, signed int v82)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
signed char v85 = 3;
signed int v84 = -3;
signed char v83 = -3;
trace++;
switch (trace)
{
case 9: 
return v80;
default: abort ();
}
}
}
}

unsigned int v11 (signed int v86, unsigned short v87)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
unsigned char v90 = 6;
signed short v89 = -2;
unsigned int v88 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (signed char v91, signed short v92, signed char v93, unsigned int v94)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
signed short v97 = -2;
unsigned short v96 = 3;
signed short v95 = -1;
trace++;
switch (trace)
{
case 2: 
{
unsigned short v98;
signed char v99;
v98 = 7 + 2;
v99 = v27 (v98);
history[history_index++] = (int)v99;
}
break;
case 4: 
{
unsigned short v100;
signed char v101;
v100 = 4 + v96;
v101 = v27 (v100);
history[history_index++] = (int)v101;
}
break;
case 6: 
{
unsigned int v102;
signed short v103;
v102 = 5U + 0U;
v103 = v23 (v102);
history[history_index++] = (int)v103;
}
break;
case 8: 
{
unsigned int v104;
unsigned short v105;
signed int v106;
unsigned int v107;
v104 = v94 - 5U;
v105 = 0 - v96;
v106 = 0 - -2;
v107 = v15 (v104, v105, v106);
history[history_index++] = (int)v107;
}
break;
case 10: 
{
unsigned char v108;
v108 = v17 ();
history[history_index++] = (int)v108;
}
break;
case 12: 
return 4U;
default: abort ();
}
}
}
}

unsigned char v1 (unsigned char v109)
{
history[history_index++] = (int)v109;
{
for (;;) {
signed int v112 = -3;
unsigned int v111 = 5U;
signed char v110 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed char v113;
unsigned char v114;
v113 = 0 + 2;
v114 = 2 + v109;
v9 (v113, v114);
}
break;
case 14: 
return 4;
default: abort ();
}
}
}
}
