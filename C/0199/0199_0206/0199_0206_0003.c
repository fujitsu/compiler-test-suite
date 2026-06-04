#include <stdlib.h>
extern unsigned int v3 (unsigned char, signed char);
extern unsigned int (*v4) (unsigned char, signed char);
extern unsigned short v5 (unsigned int, signed int, signed short);
extern unsigned short (*v6) (unsigned int, signed int, signed short);
unsigned short v7 (unsigned int, signed char, signed char, signed short);
unsigned short (*v8) (unsigned int, signed char, signed char, signed short) = v7;
extern signed char v9 (signed char);
extern signed char (*v10) (signed char);
extern unsigned short v11 (signed short, signed char);
extern unsigned short (*v12) (signed short, signed char);
extern signed int v13 (signed int, unsigned short, signed int, unsigned char);
extern signed int (*v14) (signed int, unsigned short, signed int, unsigned char);
extern unsigned int v15 (unsigned int, signed short);
extern unsigned int (*v16) (unsigned int, signed short);
extern unsigned char v17 (signed char);
extern unsigned char (*v18) (signed char);
signed char v19 (signed char, signed int);
signed char (*v20) (signed char, signed int) = v19;
signed char v21 (signed char, unsigned char);
signed char (*v22) (signed char, unsigned char) = v21;
extern signed short v23 (unsigned int, unsigned int, signed short, signed char);
extern signed short (*v24) (unsigned int, unsigned int, signed short, signed char);
signed char v25 (signed short, unsigned int, unsigned int, unsigned int);
signed char (*v26) (signed short, unsigned int, unsigned int, unsigned int) = v25;
extern void v27 (unsigned char, signed char, unsigned int, unsigned short);
extern void (*v28) (unsigned char, signed char, unsigned int, unsigned short);
unsigned int v29 (void);
unsigned int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v108 = -3;
signed short v107 = -3;
signed char v106 = -2;

unsigned int v29 (void)
{
{
for (;;) {
unsigned short v111 = 6;
unsigned int v110 = 7U;
signed short v109 = -2;
trace++;
switch (trace)
{
case 2: 
return 6U;
case 10: 
return 5U;
default: abort ();
}
}
}
}

signed char v25 (signed short v112, unsigned int v113, unsigned int v114, unsigned int v115)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned short v118 = 2;
signed short v117 = -1;
unsigned short v116 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v21 (signed char v119, unsigned char v120)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
signed int v123 = 3;
signed int v122 = 3;
signed short v121 = -1;
trace++;
switch (trace)
{
case 8: 
return v119;
default: abort ();
}
}
}
}

signed char v19 (signed char v124, signed int v125)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
unsigned char v128 = 0;
signed short v127 = -2;
signed int v126 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (unsigned int v129, signed char v130, signed char v131, signed short v132)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
signed int v135 = 0;
unsigned char v134 = 6;
signed int v133 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
