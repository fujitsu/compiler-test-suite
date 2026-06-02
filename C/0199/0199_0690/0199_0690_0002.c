#include <stdlib.h>
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
unsigned short v7 (void);
unsigned short (*v8) (void) = v7;
extern void v9 (signed short, signed char, signed int, signed short);
extern void (*v10) (signed short, signed char, signed int, signed short);
extern signed short v11 (unsigned char);
extern signed short (*v12) (unsigned char);
signed short v13 (signed char, signed char);
signed short (*v14) (signed char, signed char) = v13;
extern unsigned char v15 (unsigned char, signed char, unsigned char, unsigned int);
extern unsigned char (*v16) (unsigned char, signed char, unsigned char, unsigned int);
signed int v19 (unsigned char);
signed int (*v20) (unsigned char) = v19;
signed int v21 (unsigned int, unsigned int, signed short, unsigned int);
signed int (*v22) (unsigned int, unsigned int, signed short, unsigned int) = v21;
extern unsigned short v23 (signed char, unsigned short, unsigned short);
extern unsigned short (*v24) (signed char, unsigned short, unsigned short);
extern signed int v25 (signed int, unsigned char, signed short, unsigned int);
extern signed int (*v26) (signed int, unsigned char, signed short, unsigned int);
extern signed short v27 (unsigned char, signed char);
extern signed short (*v28) (unsigned char, signed char);
signed char v29 (signed char, unsigned char);
signed char (*v30) (signed char, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v98 = -3;
unsigned short v97 = 3;
signed char v96 = 1;

signed char v29 (signed char v99, unsigned char v100)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
unsigned char v103 = 3;
signed short v102 = -4;
unsigned char v101 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (unsigned int v104, unsigned int v105, signed short v106, unsigned int v107)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
unsigned short v110 = 2;
signed short v109 = 1;
unsigned char v108 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (unsigned char v111)
{
history[history_index++] = (int)v111;
{
for (;;) {
unsigned short v114 = 7;
unsigned short v113 = 3;
unsigned int v112 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (signed char v115, signed char v116)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
signed short v119 = -4;
signed short v118 = -2;
unsigned char v117 = 6;
trace++;
switch (trace)
{
case 7: 
return 0;
case 9: 
return v118;
default: abort ();
}
}
}
}

unsigned short v7 (void)
{
{
for (;;) {
signed char v122 = 0;
unsigned short v121 = 3;
unsigned int v120 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
