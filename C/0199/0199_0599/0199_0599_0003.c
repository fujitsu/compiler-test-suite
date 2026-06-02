#include <stdlib.h>
extern void v1 (signed char, unsigned short, unsigned short, signed short);
extern void (*v2) (signed char, unsigned short, unsigned short, signed short);
extern void v3 (unsigned char);
extern void (*v4) (unsigned char);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern signed char v7 (void);
extern signed char (*v8) (void);
unsigned char v9 (unsigned short, signed int, unsigned char, signed char);
unsigned char (*v10) (unsigned short, signed int, unsigned char, signed char) = v9;
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern unsigned char v15 (signed short, unsigned short, unsigned short);
extern unsigned char (*v16) (signed short, unsigned short, unsigned short);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
static unsigned char v21 (unsigned short);
static unsigned char (*v22) (unsigned short) = v21;
extern void v23 (void);
extern void (*v24) (void);
unsigned char v25 (unsigned int, signed char, unsigned int, unsigned short);
unsigned char (*v26) (unsigned int, signed char, unsigned int, unsigned short) = v25;
extern unsigned char v27 (unsigned int, signed char, signed int);
extern unsigned char (*v28) (unsigned int, signed char, signed int);
unsigned char v29 (signed char, unsigned int, unsigned char);
unsigned char (*v30) (signed char, unsigned int, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v93 = 1;
signed char v92 = 1;
signed short v91 = -4;

unsigned char v29 (signed char v94, unsigned int v95, unsigned char v96)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed char v99 = -1;
unsigned char v98 = 4;
unsigned int v97 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v25 (unsigned int v100, signed char v101, unsigned int v102, unsigned short v103)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed short v106 = 0;
unsigned int v105 = 7U;
unsigned int v104 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v21 (unsigned short v107)
{
history[history_index++] = (int)v107;
{
for (;;) {
unsigned short v110 = 2;
unsigned char v109 = 3;
signed int v108 = -4;
trace++;
switch (trace)
{
case 2: 
{
unsigned int v111;
signed char v112;
signed int v113;
unsigned char v114;
v111 = 3U - 2U;
v112 = 3 + 1;
v113 = 1 - -3;
v114 = v27 (v111, v112, v113);
history[history_index++] = (int)v114;
}
break;
case 4: 
return 7;
case 6: 
{
v23 ();
}
break;
case 8: 
{
unsigned short v115;
v115 = v17 ();
history[history_index++] = (int)v115;
}
break;
case 10: 
{
v23 ();
}
break;
case 12: 
return v109;
default: abort ();
}
}
}
}

unsigned char v9 (unsigned short v116, signed int v117, unsigned char v118, signed char v119)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
signed short v122 = 3;
signed char v121 = -3;
unsigned short v120 = 5;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v123;
unsigned char v124;
v123 = v120 - v120;
v124 = v21 (v123);
history[history_index++] = (int)v124;
}
break;
case 5: 
{
unsigned short v125;
unsigned char v126;
v125 = v120 + v120;
v126 = v21 (v125);
history[history_index++] = (int)v126;
}
break;
case 13: 
return v118;
default: abort ();
}
}
}
}
