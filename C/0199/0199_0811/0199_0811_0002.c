#include <stdlib.h>
extern void v1 (unsigned int);
extern void (*v2) (unsigned int);
extern signed short v3 (unsigned char, unsigned int, unsigned short, signed char);
extern signed short (*v4) (unsigned char, unsigned int, unsigned short, signed char);
unsigned short v5 (signed char);
unsigned short (*v6) (signed char) = v5;
extern unsigned int v7 (signed short, unsigned int, signed char);
extern unsigned int (*v8) (signed short, unsigned int, signed char);
extern void v9 (unsigned short, signed int, unsigned short);
extern void (*v10) (unsigned short, signed int, unsigned short);
unsigned int v11 (unsigned short, unsigned int, signed char);
unsigned int (*v12) (unsigned short, unsigned int, signed char) = v11;
signed char v13 (signed char, signed char, signed int);
signed char (*v14) (signed char, signed char, signed int) = v13;
extern unsigned short v15 (signed char, signed char, unsigned char);
extern unsigned short (*v16) (signed char, signed char, unsigned char);
extern void v17 (unsigned int, unsigned short);
extern void (*v18) (unsigned int, unsigned short);
unsigned int v19 (unsigned int, unsigned char, signed short);
unsigned int (*v20) (unsigned int, unsigned char, signed short) = v19;
unsigned short v21 (unsigned char, unsigned int, unsigned int);
unsigned short (*v22) (unsigned char, unsigned int, unsigned int) = v21;
extern unsigned int v23 (unsigned char, unsigned short);
extern unsigned int (*v24) (unsigned char, unsigned short);
extern unsigned short v27 (signed char, unsigned short);
extern unsigned short (*v28) (signed char, unsigned short);
extern unsigned short v29 (signed int);
extern unsigned short (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v101 = 2;
signed int v100 = 0;
unsigned char v99 = 4;

unsigned short v21 (unsigned char v102, unsigned int v103, unsigned int v104)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
signed char v107 = -1;
signed short v106 = -2;
signed int v105 = -1;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v108;
unsigned short v109;
v108 = v103 + 6U;
v109 = 6 - 7;
v17 (v108, v109);
}
break;
case 3: 
{
unsigned int v110;
unsigned short v111;
v110 = v104 + v104;
v111 = 2 - 2;
v17 (v110, v111);
}
break;
case 13: 
return 4;
default: abort ();
}
}
}
}

unsigned int v19 (unsigned int v112, unsigned char v113, signed short v114)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
unsigned char v117 = 5;
signed char v116 = 3;
signed int v115 = -4;
trace++;
switch (trace)
{
case 5: 
return v112;
case 7: 
return v112;
default: abort ();
}
}
}
}

signed char v13 (signed char v118, signed char v119, signed int v120)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
unsigned short v123 = 6;
signed int v122 = -4;
signed int v121 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (unsigned short v124, unsigned int v125, signed char v126)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
signed int v129 = 1;
signed int v128 = 0;
signed int v127 = 2;
trace++;
switch (trace)
{
case 10: 
return v125;
default: abort ();
}
}
}
}

unsigned short v5 (signed char v130)
{
history[history_index++] = (int)v130;
{
for (;;) {
unsigned short v133 = 2;
unsigned short v132 = 1;
signed int v131 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
