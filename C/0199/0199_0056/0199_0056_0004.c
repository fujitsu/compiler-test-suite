#include <stdlib.h>
extern signed int v1 (unsigned char);
extern signed int (*v2) (unsigned char);
extern unsigned int v3 (signed int);
extern unsigned int (*v4) (signed int);
extern void v5 (unsigned short, unsigned int);
extern void (*v6) (unsigned short, unsigned int);
extern signed char v7 (unsigned int);
extern signed char (*v8) (unsigned int);
signed short v9 (unsigned short, signed short);
signed short (*v10) (unsigned short, signed short) = v9;
extern signed short v11 (void);
extern signed short (*v12) (void);
void v13 (signed short, signed int, signed char);
void (*v14) (signed short, signed int, signed char) = v13;
extern void v15 (signed int, signed int, unsigned char, signed char);
extern void (*v16) (signed int, signed int, unsigned char, signed char);
signed short v17 (unsigned short, unsigned char);
signed short (*v18) (unsigned short, unsigned char) = v17;
signed short v21 (void);
signed short (*v22) (void) = v21;
extern unsigned char v23 (signed int, signed int, unsigned int);
extern unsigned char (*v24) (signed int, signed int, unsigned int);
extern signed int v25 (signed char);
extern signed int (*v26) (signed char);
extern unsigned char v27 (unsigned int);
extern unsigned char (*v28) (unsigned int);
extern unsigned short v29 (unsigned char, signed short, unsigned char);
extern unsigned short (*v30) (unsigned char, signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v107 = 7;
signed char v106 = -4;
unsigned short v105 = 1;

signed short v21 (void)
{
{
for (;;) {
signed char v110 = -1;
signed int v109 = 1;
unsigned char v108 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (unsigned short v111, unsigned char v112)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned int v115 = 0U;
unsigned char v114 = 2;
unsigned char v113 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (signed short v116, signed int v117, signed char v118)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
signed char v121 = 0;
unsigned int v120 = 0U;
signed short v119 = 0;
trace++;
switch (trace)
{
case 5: 
return;
default: abort ();
}
}
}
}

signed short v9 (unsigned short v122, signed short v123)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
signed char v126 = -2;
signed short v125 = -3;
unsigned char v124 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
