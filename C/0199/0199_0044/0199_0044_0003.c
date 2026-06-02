#include <stdlib.h>
unsigned int v1 (unsigned short, unsigned char, unsigned short);
unsigned int (*v2) (unsigned short, unsigned char, unsigned short) = v1;
extern signed int v3 (unsigned int, unsigned int, unsigned short);
extern signed int (*v4) (unsigned int, unsigned int, unsigned short);
unsigned char v5 (void);
unsigned char (*v6) (void) = v5;
extern unsigned int v7 (signed int, signed int, unsigned short);
extern unsigned int (*v8) (signed int, signed int, unsigned short);
extern signed char v9 (unsigned char);
extern signed char (*v10) (unsigned char);
static unsigned int v11 (signed short, unsigned int, unsigned short);
static unsigned int (*v12) (signed short, unsigned int, unsigned short) = v11;
extern unsigned char v13 (unsigned short, unsigned short, signed int, signed int);
extern unsigned char (*v14) (unsigned short, unsigned short, signed int, signed int);
extern signed short v15 (signed char, unsigned short, signed short);
extern signed short (*v16) (signed char, unsigned short, signed short);
extern signed int v17 (signed int, signed int, unsigned int);
extern signed int (*v18) (signed int, signed int, unsigned int);
unsigned int v19 (signed char);
unsigned int (*v20) (signed char) = v19;
extern signed int v21 (void);
extern signed int (*v22) (void);
extern unsigned int v23 (unsigned char);
extern unsigned int (*v24) (unsigned char);
extern unsigned short v25 (signed char, unsigned short, unsigned short);
extern unsigned short (*v26) (signed char, unsigned short, unsigned short);
extern unsigned char v27 (unsigned char, unsigned int, signed short);
extern unsigned char (*v28) (unsigned char, unsigned int, signed short);
extern signed int v29 (signed char, signed short);
extern signed int (*v30) (signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v95 = 2;
signed char v94 = 1;
signed int v93 = -1;

unsigned int v19 (signed char v96)
{
history[history_index++] = (int)v96;
{
for (;;) {
unsigned short v99 = 0;
unsigned short v98 = 4;
signed short v97 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v11 (signed short v100, unsigned int v101, unsigned short v102)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed char v105 = 1;
signed short v104 = -1;
unsigned int v103 = 3U;
trace++;
switch (trace)
{
case 1: 
return v103;
default: abort ();
}
}
}
}

unsigned char v5 (void)
{
{
for (;;) {
unsigned int v108 = 2U;
unsigned char v107 = 5;
signed short v106 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (unsigned short v109, unsigned char v110, unsigned short v111)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
unsigned char v114 = 3;
signed int v113 = -3;
signed short v112 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed short v115;
unsigned int v116;
unsigned short v117;
unsigned int v118;
v115 = v112 + -1;
v116 = 6U + 4U;
v117 = 1 + v109;
v118 = v11 (v115, v116, v117);
history[history_index++] = (int)v118;
}
break;
case 2: 
{
signed int v119;
v119 = v21 ();
history[history_index++] = (int)v119;
}
break;
case 14: 
return 5U;
default: abort ();
}
}
}
}
