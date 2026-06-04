#include <stdlib.h>
extern signed int v3 (unsigned int, signed int);
extern signed int (*v4) (unsigned int, signed int);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned short v7 (unsigned char);
extern unsigned short (*v8) (unsigned char);
extern void v9 (signed char);
extern void (*v10) (signed char);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern signed char v13 (signed int, unsigned int);
extern signed char (*v14) (signed int, unsigned int);
extern void v15 (void);
extern void (*v16) (void);
extern signed int v17 (void);
extern signed int (*v18) (void);
signed short v19 (signed char, unsigned char);
signed short (*v20) (signed char, unsigned char) = v19;
unsigned char v21 (unsigned char, signed int, signed int);
unsigned char (*v22) (unsigned char, signed int, signed int) = v21;
extern void v23 (void);
extern void (*v24) (void);
extern void v25 (signed char, signed char, unsigned short);
extern void (*v26) (signed char, signed char, unsigned short);
extern unsigned char v27 (signed char, unsigned int);
extern unsigned char (*v28) (signed char, unsigned int);
static signed short v29 (signed short, signed short, unsigned short);
static signed short (*v30) (signed short, signed short, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v103 = -3;
unsigned short v102 = 2;
signed short v101 = -2;

static signed short v29 (signed short v104, signed short v105, unsigned short v106)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed char v109 = -2;
signed short v108 = 2;
signed int v107 = -1;
trace++;
switch (trace)
{
case 8: 
return v108;
case 10: 
return v104;
default: abort ();
}
}
}
}

unsigned char v21 (unsigned char v110, signed int v111, signed int v112)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
signed int v115 = 2;
signed char v114 = -3;
unsigned int v113 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (signed char v116, unsigned char v117)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
signed int v120 = 0;
signed char v119 = 1;
unsigned char v118 = 0;
trace++;
switch (trace)
{
case 7: 
{
signed short v121;
signed short v122;
unsigned short v123;
signed short v124;
v121 = -1 - -4;
v122 = -3 - -3;
v123 = 4 - 6;
v124 = v29 (v121, v122, v123);
history[history_index++] = (int)v124;
}
break;
case 9: 
{
signed short v125;
signed short v126;
unsigned short v127;
signed short v128;
v125 = 1 + 1;
v126 = -4 - -4;
v127 = 7 - 2;
v128 = v29 (v125, v126, v127);
history[history_index++] = (int)v128;
}
break;
case 11: 
return -3;
default: abort ();
}
}
}
}
