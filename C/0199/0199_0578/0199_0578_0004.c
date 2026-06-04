#include <stdlib.h>
extern unsigned short v1 (unsigned int, unsigned short, unsigned int, signed char);
extern unsigned short (*v2) (unsigned int, unsigned short, unsigned int, signed char);
extern void v3 (unsigned short, signed short, signed int, unsigned char);
extern void (*v4) (unsigned short, signed short, signed int, unsigned char);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern void v7 (unsigned char, signed int);
extern void (*v8) (unsigned char, signed int);
void v11 (signed int);
void (*v12) (signed int) = v11;
signed short v13 (void);
signed short (*v14) (void) = v13;
signed char v15 (unsigned short);
signed char (*v16) (unsigned short) = v15;
signed int v17 (unsigned int, signed short, signed int, unsigned char);
signed int (*v18) (unsigned int, signed short, signed int, unsigned char) = v17;
extern unsigned short v19 (unsigned int);
extern unsigned short (*v20) (unsigned int);
unsigned short v21 (signed short, signed short);
unsigned short (*v22) (signed short, signed short) = v21;
extern signed short v23 (void);
extern signed short (*v24) (void);
unsigned int v25 (void);
unsigned int (*v26) (void) = v25;
extern unsigned int v27 (unsigned char, unsigned char);
extern unsigned int (*v28) (unsigned char, unsigned char);
extern signed char v29 (unsigned short);
extern signed char (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v99 = 5U;
signed short v98 = -2;
signed short v97 = -1;

unsigned int v25 (void)
{
{
for (;;) {
unsigned short v102 = 5;
unsigned char v101 = 7;
unsigned short v100 = 2;
trace++;
switch (trace)
{
case 4: 
{
unsigned short v103;
signed char v104;
v103 = v100 - v102;
v104 = v29 (v103);
history[history_index++] = (int)v104;
}
break;
case 6: 
{
unsigned short v105;
signed char v106;
v105 = v102 + v100;
v106 = v29 (v105);
history[history_index++] = (int)v106;
}
break;
case 8: 
{
unsigned short v107;
signed char v108;
v107 = v102 + 5;
v108 = v29 (v107);
history[history_index++] = (int)v108;
}
break;
case 10: 
{
unsigned short v109;
signed char v110;
v109 = 4 + v100;
v110 = v29 (v109);
history[history_index++] = (int)v110;
}
break;
case 12: 
return 6U;
default: abort ();
}
}
}
}

unsigned short v21 (signed short v111, signed short v112)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned int v115 = 5U;
signed short v114 = -1;
unsigned short v113 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (unsigned int v116, signed short v117, signed int v118, unsigned char v119)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
signed char v122 = -3;
signed char v121 = 0;
signed short v120 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (unsigned short v123)
{
history[history_index++] = (int)v123;
{
for (;;) {
signed short v126 = -2;
unsigned char v125 = 5;
signed short v124 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (void)
{
{
for (;;) {
unsigned short v129 = 7;
unsigned char v128 = 1;
unsigned int v127 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (signed int v130)
{
history[history_index++] = (int)v130;
{
for (;;) {
signed char v133 = -1;
unsigned char v132 = 2;
unsigned short v131 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
