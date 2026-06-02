#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
unsigned char v3 (signed int, unsigned char, unsigned char);
unsigned char (*v4) (signed int, unsigned char, unsigned char) = v3;
unsigned int v5 (unsigned int);
unsigned int (*v6) (unsigned int) = v5;
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern unsigned short v9 (signed int, signed int, signed char);
extern unsigned short (*v10) (signed int, signed int, signed char);
extern signed short v11 (unsigned short, unsigned short);
extern signed short (*v12) (unsigned short, unsigned short);
unsigned int v13 (unsigned char, unsigned int, unsigned short, signed char);
unsigned int (*v14) (unsigned char, unsigned int, unsigned short, signed char) = v13;
extern signed short v15 (unsigned int, unsigned char, unsigned char);
extern signed short (*v16) (unsigned int, unsigned char, unsigned char);
extern unsigned int v17 (unsigned int);
extern unsigned int (*v18) (unsigned int);
extern signed short v19 (unsigned int);
extern signed short (*v20) (unsigned int);
extern void v21 (void);
extern void (*v22) (void);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
static unsigned char v25 (unsigned short, signed char);
static unsigned char (*v26) (unsigned short, signed char) = v25;
extern signed int v27 (void);
extern signed int (*v28) (void);
extern void v29 (unsigned short, unsigned char, signed int);
extern void (*v30) (unsigned short, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v105 = 1;
unsigned int v104 = 0U;
unsigned char v103 = 6;

static unsigned char v25 (unsigned short v106, signed char v107)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
signed int v110 = -1;
unsigned short v109 = 6;
unsigned char v108 = 6;
trace++;
switch (trace)
{
case 4: 
{
signed int v111;
v111 = v27 ();
history[history_index++] = (int)v111;
}
break;
case 6: 
{
signed int v112;
v112 = v27 ();
history[history_index++] = (int)v112;
}
break;
case 8: 
return v108;
default: abort ();
}
}
}
}

unsigned int v13 (unsigned char v113, unsigned int v114, unsigned short v115, signed char v116)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
signed char v119 = -2;
signed short v118 = -2;
signed short v117 = -1;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v120;
signed char v121;
unsigned char v122;
v120 = 2 - v115;
v121 = v119 + -4;
v122 = v25 (v120, v121);
history[history_index++] = (int)v122;
}
break;
case 9: 
return v114;
default: abort ();
}
}
}
}

unsigned int v5 (unsigned int v123)
{
history[history_index++] = (int)v123;
{
for (;;) {
unsigned char v126 = 7;
signed char v125 = 3;
signed int v124 = 0;
trace++;
switch (trace)
{
case 1: 
return v123;
default: abort ();
}
}
}
}

unsigned char v3 (signed int v127, unsigned char v128, unsigned char v129)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
signed char v132 = -3;
signed char v131 = 1;
signed int v130 = 1;
trace++;
switch (trace)
{
case 11: 
return v128;
default: abort ();
}
}
}
}
