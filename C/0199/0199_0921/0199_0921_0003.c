#include <stdlib.h>
unsigned char v1 (unsigned short, unsigned char, unsigned int);
unsigned char (*v2) (unsigned short, unsigned char, unsigned int) = v1;
extern unsigned char v3 (unsigned int, signed char, signed char, signed short);
extern unsigned char (*v4) (unsigned int, signed char, signed char, signed short);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern signed int v7 (signed int, signed char, unsigned int);
extern signed int (*v8) (signed int, signed char, unsigned int);
extern unsigned char v9 (signed int, unsigned short, signed short, signed char);
extern unsigned char (*v10) (signed int, unsigned short, signed short, signed char);
extern signed char v11 (signed char);
extern signed char (*v12) (signed char);
extern signed int v13 (void);
extern signed int (*v14) (void);
void v15 (unsigned int, unsigned int, unsigned char, signed char);
void (*v16) (unsigned int, unsigned int, unsigned char, signed char) = v15;
extern unsigned int v17 (unsigned char, signed int);
extern unsigned int (*v18) (unsigned char, signed int);
signed short v19 (signed short);
signed short (*v20) (signed short) = v19;
extern signed char v21 (void);
extern signed char (*v22) (void);
extern void v23 (unsigned short, unsigned char, unsigned short, unsigned int);
extern void (*v24) (unsigned short, unsigned char, unsigned short, unsigned int);
unsigned char v25 (unsigned short, signed char);
unsigned char (*v26) (unsigned short, signed char) = v25;
extern signed char v27 (unsigned short, unsigned short, signed short, signed char);
extern signed char (*v28) (unsigned short, unsigned short, signed short, signed char);
extern unsigned short v29 (unsigned short);
extern unsigned short (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v107 = 2;
signed int v106 = -3;
unsigned int v105 = 6U;

unsigned char v25 (unsigned short v108, signed char v109)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned char v112 = 0;
signed short v111 = 2;
signed char v110 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (signed short v113)
{
history[history_index++] = (int)v113;
{
for (;;) {
unsigned int v116 = 7U;
unsigned short v115 = 1;
signed char v114 = 3;
trace++;
switch (trace)
{
case 11: 
return 2;
default: abort ();
}
}
}
}

void v15 (unsigned int v117, unsigned int v118, unsigned char v119, signed char v120)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
signed short v123 = 3;
unsigned short v122 = 5;
signed short v121 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned short v124, unsigned char v125, unsigned int v126)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
signed short v129 = 2;
signed int v128 = 2;
unsigned int v127 = 7U;
trace++;
switch (trace)
{
case 0: 
{
signed int v130;
v130 = v13 ();
history[history_index++] = (int)v130;
}
break;
case 14: 
return v125;
default: abort ();
}
}
}
}
