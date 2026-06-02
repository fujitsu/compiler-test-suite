#include <stdlib.h>
extern unsigned char v1 (unsigned char, unsigned int, unsigned char, unsigned short);
extern unsigned char (*v2) (unsigned char, unsigned int, unsigned char, unsigned short);
unsigned short v3 (void);
unsigned short (*v4) (void) = v3;
extern unsigned int v5 (unsigned short, signed int, signed int);
extern unsigned int (*v6) (unsigned short, signed int, signed int);
extern unsigned short v7 (signed short, signed short, unsigned char);
extern unsigned short (*v8) (signed short, signed short, unsigned char);
unsigned char v9 (unsigned short, unsigned short, unsigned char, signed int);
unsigned char (*v10) (unsigned short, unsigned short, unsigned char, signed int) = v9;
extern unsigned short v11 (unsigned int, unsigned short, signed int);
extern unsigned short (*v12) (unsigned int, unsigned short, signed int);
extern signed int v13 (unsigned char, signed short, signed char);
extern signed int (*v14) (unsigned char, signed short, signed char);
extern signed short v15 (void);
extern signed short (*v16) (void);
static signed char v17 (unsigned int, unsigned int, unsigned int, signed int);
static signed char (*v18) (unsigned int, unsigned int, unsigned int, signed int) = v17;
extern void v19 (unsigned int, unsigned char, signed short, unsigned int);
extern void (*v20) (unsigned int, unsigned char, signed short, unsigned int);
extern unsigned short v21 (unsigned int, unsigned char);
extern unsigned short (*v22) (unsigned int, unsigned char);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern void v25 (signed short, unsigned int);
extern void (*v26) (signed short, unsigned int);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v89 = -1;
unsigned short v88 = 1;
unsigned int v87 = 2U;

static signed char v17 (unsigned int v90, unsigned int v91, unsigned int v92, signed int v93)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
signed int v96 = 1;
signed short v95 = -1;
signed short v94 = -3;
trace++;
switch (trace)
{
case 3: 
{
signed short v97;
v97 = v23 ();
history[history_index++] = (int)v97;
}
break;
case 5: 
{
signed short v98;
v98 = v23 ();
history[history_index++] = (int)v98;
}
break;
case 9: 
{
signed short v99;
v99 = v23 ();
history[history_index++] = (int)v99;
}
break;
case 13: 
return 2;
case 17: 
return -3;
default: abort ();
}
}
}
}

unsigned char v9 (unsigned short v100, unsigned short v101, unsigned char v102, signed int v103)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed char v106 = -1;
signed short v105 = 1;
signed short v104 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (void)
{
{
for (;;) {
unsigned char v109 = 7;
signed char v108 = -1;
unsigned int v107 = 4U;
trace++;
switch (trace)
{
case 2: 
{
unsigned int v110;
unsigned int v111;
unsigned int v112;
signed int v113;
signed char v114;
v110 = v107 + v107;
v111 = v107 - 1U;
v112 = 0U - 1U;
v113 = 0 - 3;
v114 = v17 (v110, v111, v112, v113);
history[history_index++] = (int)v114;
}
break;
case 8: 
{
unsigned int v115;
unsigned int v116;
unsigned int v117;
signed int v118;
signed char v119;
v115 = 1U + 1U;
v116 = 2U + 3U;
v117 = 7U + 5U;
v118 = -3 - 0;
v119 = v17 (v115, v116, v117, v118);
history[history_index++] = (int)v119;
}
break;
case 14: 
return 0;
case 18: 
return 1;
default: abort ();
}
}
}
}
