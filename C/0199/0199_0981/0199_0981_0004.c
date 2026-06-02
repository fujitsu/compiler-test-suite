#include <stdlib.h>
unsigned char v1 (unsigned short, unsigned char, signed char);
unsigned char (*v2) (unsigned short, unsigned char, signed char) = v1;
extern unsigned short v3 (signed int, signed int, signed char);
extern unsigned short (*v4) (signed int, signed int, signed char);
extern signed short v5 (unsigned short);
extern signed short (*v6) (unsigned short);
static signed char v7 (void);
static signed char (*v8) (void) = v7;
extern void v9 (unsigned int, signed int, unsigned char);
extern void (*v10) (unsigned int, signed int, unsigned char);
extern unsigned int v11 (signed int);
extern unsigned int (*v12) (signed int);
extern signed int v13 (unsigned char, signed char, signed short, signed int);
extern signed int (*v14) (unsigned char, signed char, signed short, signed int);
extern signed int v15 (unsigned short);
extern signed int (*v16) (unsigned short);
extern void v17 (unsigned int);
extern void (*v18) (unsigned int);
void v19 (signed char);
void (*v20) (signed char) = v19;
extern unsigned char v21 (signed int, signed int);
extern unsigned char (*v22) (signed int, signed int);
extern unsigned short v23 (unsigned short, unsigned int);
extern unsigned short (*v24) (unsigned short, unsigned int);
extern signed char v25 (void);
extern signed char (*v26) (void);
unsigned short v27 (void);
unsigned short (*v28) (void) = v27;
extern unsigned int v29 (unsigned char, unsigned int, unsigned char, unsigned short);
extern unsigned int (*v30) (unsigned char, unsigned int, unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v110 = 0;
signed char v109 = -3;
unsigned int v108 = 6U;

unsigned short v27 (void)
{
{
for (;;) {
unsigned char v113 = 1;
unsigned short v112 = 0;
unsigned int v111 = 3U;
trace++;
switch (trace)
{
case 3: 
return 4;
case 5: 
return 7;
case 7: 
return 2;
case 11: 
return v112;
default: abort ();
}
}
}
}

void v19 (signed char v114)
{
history[history_index++] = (int)v114;
{
for (;;) {
unsigned char v117 = 7;
signed char v116 = -3;
signed int v115 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v7 (void)
{
{
for (;;) {
signed short v120 = 3;
signed short v119 = 3;
unsigned char v118 = 0;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v121;
unsigned int v122;
unsigned short v123;
v121 = 0 - 6;
v122 = 0U + 4U;
v123 = v23 (v121, v122);
history[history_index++] = (int)v123;
}
break;
case 9: 
{
unsigned short v124;
unsigned int v125;
unsigned short v126;
v124 = 1 - 2;
v125 = 0U - 1U;
v126 = v23 (v124, v125);
history[history_index++] = (int)v126;
}
break;
case 13: 
return 1;
default: abort ();
}
}
}
}

unsigned char v1 (unsigned short v127, unsigned char v128, signed char v129)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned char v132 = 3;
unsigned char v131 = 6;
signed char v130 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed char v133;
v133 = v7 ();
history[history_index++] = (int)v133;
}
break;
case 14: 
return v132;
default: abort ();
}
}
}
}
