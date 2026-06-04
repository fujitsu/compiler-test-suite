#include <stdlib.h>
unsigned char v1 (unsigned short, signed char, signed char, unsigned short);
unsigned char (*v2) (unsigned short, signed char, signed char, unsigned short) = v1;
extern unsigned short v3 (unsigned int);
extern unsigned short (*v4) (unsigned int);
static signed char v5 (void);
static signed char (*v6) (void) = v5;
extern void v7 (signed int, signed int);
extern void (*v8) (signed int, signed int);
extern unsigned short v9 (signed short, unsigned char);
extern unsigned short (*v10) (signed short, unsigned char);
extern void v11 (unsigned char, unsigned short, signed short, signed short);
extern void (*v12) (unsigned char, unsigned short, signed short, signed short);
static signed short v13 (void);
static signed short (*v14) (void) = v13;
extern unsigned int v15 (unsigned short, unsigned int, signed short, signed char);
extern unsigned int (*v16) (unsigned short, unsigned int, signed short, signed char);
extern unsigned char v17 (signed char, unsigned int, signed short);
extern unsigned char (*v18) (signed char, unsigned int, signed short);
extern signed char v19 (signed short);
extern signed char (*v20) (signed short);
extern signed short v21 (signed char);
extern signed short (*v22) (signed char);
extern signed short v23 (signed char, signed short, unsigned char, signed char);
extern signed short (*v24) (signed char, signed short, unsigned char, signed char);
extern void v25 (unsigned int, signed int);
extern void (*v26) (unsigned int, signed int);
extern unsigned short v27 (unsigned char, unsigned short);
extern unsigned short (*v28) (unsigned char, unsigned short);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v102 = -4;
signed char v101 = -4;
signed int v100 = -4;

static signed short v13 (void)
{
{
for (;;) {
signed int v105 = 1;
signed char v104 = 3;
signed char v103 = 0;
trace++;
switch (trace)
{
case 1: 
{
signed char v106;
signed short v107;
v106 = v103 + v104;
v107 = v21 (v106);
history[history_index++] = (int)v107;
}
break;
case 3: 
{
signed char v108;
signed short v109;
v108 = v104 - v104;
v109 = v21 (v108);
history[history_index++] = (int)v109;
}
break;
case 7: 
return -2;
default: abort ();
}
}
}
}

static signed char v5 (void)
{
{
for (;;) {
unsigned char v112 = 7;
unsigned int v111 = 3U;
unsigned int v110 = 3U;
trace++;
switch (trace)
{
case 11: 
return -2;
default: abort ();
}
}
}
}

unsigned char v1 (unsigned short v113, signed char v114, signed char v115, unsigned short v116)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
unsigned int v119 = 7U;
signed char v118 = -4;
unsigned char v117 = 0;
trace++;
switch (trace)
{
case 0: 
{
signed short v120;
v120 = v13 ();
history[history_index++] = (int)v120;
}
break;
case 8: 
{
signed char v121;
signed short v122;
unsigned char v123;
signed char v124;
signed short v125;
v121 = v115 + v115;
v122 = -3 - 2;
v123 = v117 + 2;
v124 = 0 - v118;
v125 = v23 (v121, v122, v123, v124);
history[history_index++] = (int)v125;
}
break;
case 10: 
{
signed char v126;
v126 = v5 ();
history[history_index++] = (int)v126;
}
break;
case 12: 
return v117;
default: abort ();
}
}
}
}
