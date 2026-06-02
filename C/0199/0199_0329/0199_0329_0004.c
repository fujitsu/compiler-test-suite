#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern void v3 (unsigned short);
extern void (*v4) (unsigned short);
extern unsigned short v5 (signed char, signed int, signed int);
extern unsigned short (*v6) (signed char, signed int, signed int);
extern void v7 (signed int, unsigned short, signed char);
extern void (*v8) (signed int, unsigned short, signed char);
extern unsigned short v9 (signed short);
extern unsigned short (*v10) (signed short);
extern signed int v11 (signed short, signed short, signed int);
extern signed int (*v12) (signed short, signed short, signed int);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
signed short v15 (signed int, signed int, unsigned short);
signed short (*v16) (signed int, signed int, unsigned short) = v15;
signed short v17 (unsigned int);
signed short (*v18) (unsigned int) = v17;
unsigned short v19 (signed int, signed char, signed char);
unsigned short (*v20) (signed int, signed char, signed char) = v19;
extern void v21 (signed char, unsigned int, unsigned char, signed int);
extern void (*v22) (signed char, unsigned int, unsigned char, signed int);
extern signed char v23 (void);
extern signed char (*v24) (void);
extern void v25 (void);
extern void (*v26) (void);
extern unsigned short v27 (unsigned int, unsigned short);
extern unsigned short (*v28) (unsigned int, unsigned short);
unsigned int v29 (unsigned int);
unsigned int (*v30) (unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v115 = 7;
signed short v114 = 1;
signed char v113 = -3;

unsigned int v29 (unsigned int v116)
{
history[history_index++] = (int)v116;
{
for (;;) {
signed char v119 = -3;
unsigned short v118 = 1;
signed short v117 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (signed int v120, signed char v121, signed char v122)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
signed short v125 = -1;
signed char v124 = -2;
unsigned int v123 = 2U;
trace++;
switch (trace)
{
case 4: 
return 6;
default: abort ();
}
}
}
}

signed short v17 (unsigned int v126)
{
history[history_index++] = (int)v126;
{
for (;;) {
signed short v129 = -3;
unsigned char v128 = 4;
signed char v127 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (signed int v130, signed int v131, unsigned short v132)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
signed short v135 = 3;
unsigned char v134 = 5;
signed short v133 = -4;
trace++;
switch (trace)
{
case 7: 
{
signed char v136;
v136 = v23 ();
history[history_index++] = (int)v136;
}
break;
case 11: 
return v135;
default: abort ();
}
}
}
}
