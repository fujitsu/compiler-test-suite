#include <stdlib.h>
extern signed short v1 (signed char);
extern signed short (*v2) (signed char);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern signed int v5 (unsigned short, signed short, signed int, unsigned short);
extern signed int (*v6) (unsigned short, signed short, signed int, unsigned short);
unsigned char v7 (unsigned short);
unsigned char (*v8) (unsigned short) = v7;
void v9 (void);
void (*v10) (void) = v9;
extern signed char v11 (signed short, unsigned short, unsigned char);
extern signed char (*v12) (signed short, unsigned short, unsigned char);
unsigned int v13 (signed char);
unsigned int (*v14) (signed char) = v13;
signed char v15 (unsigned char);
signed char (*v16) (unsigned char) = v15;
extern unsigned int v17 (signed int, unsigned char, unsigned int, signed char);
extern unsigned int (*v18) (signed int, unsigned char, unsigned int, signed char);
unsigned char v19 (void);
unsigned char (*v20) (void) = v19;
extern signed char v21 (void);
extern signed char (*v22) (void);
extern void v23 (unsigned short, signed char, unsigned short, signed short);
extern void (*v24) (unsigned short, signed char, unsigned short, signed short);
extern signed short v25 (unsigned char, signed char, signed char, signed char);
extern signed short (*v26) (unsigned char, signed char, signed char, signed char);
extern signed int v27 (unsigned int);
extern signed int (*v28) (unsigned int);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v104 = 3;
unsigned short v103 = 2;
unsigned short v102 = 2;

unsigned char v19 (void)
{
{
for (;;) {
unsigned int v107 = 4U;
unsigned char v106 = 5;
signed char v105 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (unsigned char v108)
{
history[history_index++] = (int)v108;
{
for (;;) {
signed char v111 = 2;
signed char v110 = -2;
signed short v109 = -2;
trace++;
switch (trace)
{
case 1: 
return -2;
default: abort ();
}
}
}
}

unsigned int v13 (signed char v112)
{
history[history_index++] = (int)v112;
{
for (;;) {
signed char v115 = -2;
signed int v114 = -3;
unsigned int v113 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (void)
{
{
for (;;) {
signed char v118 = -1;
unsigned short v117 = 1;
signed int v116 = -2;
trace++;
switch (trace)
{
case 3: 
{
signed char v119;
v119 = v29 ();
history[history_index++] = (int)v119;
}
break;
case 5: 
{
signed char v120;
v120 = v29 ();
history[history_index++] = (int)v120;
}
break;
case 7: 
return;
default: abort ();
}
}
}
}

unsigned char v7 (unsigned short v121)
{
history[history_index++] = (int)v121;
{
for (;;) {
signed short v124 = -1;
unsigned int v123 = 0U;
signed int v122 = 0;
trace++;
switch (trace)
{
case 9: 
{
unsigned char v125;
signed char v126;
signed char v127;
signed char v128;
signed short v129;
v125 = 6 + 4;
v126 = 0 - 3;
v127 = -2 + -2;
v128 = 2 - -3;
v129 = v25 (v125, v126, v127, v128);
history[history_index++] = (int)v129;
}
break;
case 11: 
return 7;
default: abort ();
}
}
}
}
