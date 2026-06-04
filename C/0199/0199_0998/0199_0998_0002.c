#include <stdlib.h>
extern void v1 (unsigned int, signed int, signed short, unsigned int);
extern void (*v2) (unsigned int, signed int, signed short, unsigned int);
void v3 (signed short, signed int, unsigned char, unsigned char);
void (*v4) (signed short, signed int, unsigned char, unsigned char) = v3;
extern unsigned char v5 (unsigned int, unsigned int, unsigned int);
extern unsigned char (*v6) (unsigned int, unsigned int, unsigned int);
extern void v7 (unsigned short, signed short, unsigned int, unsigned int);
extern void (*v8) (unsigned short, signed short, unsigned int, unsigned int);
extern signed int v9 (unsigned int, unsigned short, unsigned short, signed short);
extern signed int (*v10) (unsigned int, unsigned short, unsigned short, signed short);
void v11 (signed char, signed int, signed char);
void (*v12) (signed char, signed int, signed char) = v11;
extern signed int v13 (signed char, unsigned char, unsigned int);
extern signed int (*v14) (signed char, unsigned char, unsigned int);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed int v19 (signed char, signed int, signed int, unsigned short);
extern signed int (*v20) (signed char, signed int, signed int, unsigned short);
extern unsigned char v21 (unsigned char, unsigned int, signed char, signed short);
extern unsigned char (*v22) (unsigned char, unsigned int, signed char, signed short);
signed char v23 (unsigned char);
signed char (*v24) (unsigned char) = v23;
unsigned char v25 (void);
unsigned char (*v26) (void) = v25;
extern signed int v27 (void);
extern signed int (*v28) (void);
extern unsigned char v29 (signed int);
extern unsigned char (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v100 = 0;
signed short v99 = 1;
signed int v98 = -3;

unsigned char v25 (void)
{
{
for (;;) {
signed short v103 = 3;
unsigned short v102 = 2;
unsigned int v101 = 3U;
trace++;
switch (trace)
{
case 8: 
return 6;
default: abort ();
}
}
}
}

signed char v23 (unsigned char v104)
{
history[history_index++] = (int)v104;
{
for (;;) {
signed int v107 = 3;
unsigned char v106 = 7;
unsigned int v105 = 5U;
trace++;
switch (trace)
{
case 6: 
return -1;
case 10: 
{
signed int v108;
v108 = v27 ();
history[history_index++] = (int)v108;
}
break;
case 12: 
return -3;
default: abort ();
}
}
}
}

void v11 (signed char v109, signed int v110, signed char v111)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
signed short v114 = -3;
unsigned int v113 = 4U;
signed short v112 = 3;
trace++;
switch (trace)
{
case 1: 
return;
default: abort ();
}
}
}
}

void v3 (signed short v115, signed int v116, unsigned char v117, unsigned char v118)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
unsigned char v121 = 4;
signed char v120 = -4;
unsigned short v119 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
