#include <stdlib.h>
extern void v1 (signed char, unsigned short, unsigned int);
extern void (*v2) (signed char, unsigned short, unsigned int);
unsigned short v3 (signed short, unsigned char, signed char);
unsigned short (*v4) (signed short, unsigned char, signed char) = v3;
void v5 (unsigned short, unsigned short, unsigned char, signed char);
void (*v6) (unsigned short, unsigned short, unsigned char, signed char) = v5;
signed char v9 (signed int);
signed char (*v10) (signed int) = v9;
extern signed int v11 (void);
extern signed int (*v12) (void);
extern signed char v13 (signed short);
extern signed char (*v14) (signed short);
extern unsigned char v15 (unsigned short, signed char, signed char, unsigned char);
extern unsigned char (*v16) (unsigned short, signed char, signed char, unsigned char);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern unsigned char v19 (unsigned int, unsigned char);
extern unsigned char (*v20) (unsigned int, unsigned char);
unsigned short v21 (unsigned short);
unsigned short (*v22) (unsigned short) = v21;
unsigned short v23 (unsigned int, signed int);
unsigned short (*v24) (unsigned int, signed int) = v23;
extern void v25 (unsigned char, unsigned int, signed short);
extern void (*v26) (unsigned char, unsigned int, signed short);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v99 = 0;
unsigned int v98 = 4U;
signed short v97 = -4;

unsigned short v23 (unsigned int v100, signed int v101)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
signed int v104 = -4;
unsigned short v103 = 0;
unsigned short v102 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (unsigned short v105)
{
history[history_index++] = (int)v105;
{
for (;;) {
signed char v108 = -1;
signed short v107 = 2;
unsigned int v106 = 2U;
trace++;
switch (trace)
{
case 3: 
{
unsigned int v109;
v109 = v27 ();
history[history_index++] = (int)v109;
}
break;
case 5: 
{
unsigned int v110;
v110 = v27 ();
history[history_index++] = (int)v110;
}
break;
case 7: 
{
unsigned char v111;
unsigned int v112;
signed short v113;
v111 = 7 + 2;
v112 = v106 - 6U;
v113 = v107 - 3;
v25 (v111, v112, v113);
}
break;
case 9: 
{
unsigned int v114;
v114 = v27 ();
history[history_index++] = (int)v114;
}
break;
case 11: 
return 4;
default: abort ();
}
}
}
}

signed char v9 (signed int v115)
{
history[history_index++] = (int)v115;
{
for (;;) {
signed int v118 = -3;
signed int v117 = -2;
unsigned short v116 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (unsigned short v119, unsigned short v120, unsigned char v121, signed char v122)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
unsigned short v125 = 5;
signed char v124 = 3;
signed char v123 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (signed short v126, unsigned char v127, signed char v128)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
unsigned int v131 = 5U;
unsigned short v130 = 2;
unsigned char v129 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
