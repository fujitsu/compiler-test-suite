#include <stdlib.h>
extern unsigned int v1 (unsigned char);
extern unsigned int (*v2) (unsigned char);
void v3 (signed char, signed char, signed short, unsigned char);
void (*v4) (signed char, signed char, signed short, unsigned char) = v3;
extern signed int v5 (unsigned int, signed int, unsigned char, signed int);
extern signed int (*v6) (unsigned int, signed int, unsigned char, signed int);
extern signed char v7 (signed int, unsigned char, signed char);
extern signed char (*v8) (signed int, unsigned char, signed char);
extern unsigned int v9 (signed int, signed char, unsigned int, unsigned char);
extern unsigned int (*v10) (signed int, signed char, unsigned int, unsigned char);
signed int v11 (void);
signed int (*v12) (void) = v11;
extern void v13 (signed char, unsigned int);
extern void (*v14) (signed char, unsigned int);
extern signed short v15 (void);
extern signed short (*v16) (void);
signed char v17 (signed short, unsigned int, unsigned short);
signed char (*v18) (signed short, unsigned int, unsigned short) = v17;
extern unsigned char v19 (signed int, signed short, signed char);
extern unsigned char (*v20) (signed int, signed short, signed char);
extern signed int v21 (signed char, signed short, unsigned short);
extern signed int (*v22) (signed char, signed short, unsigned short);
extern void v23 (unsigned short);
extern void (*v24) (unsigned short);
extern signed short v25 (unsigned short, signed int, signed char);
extern signed short (*v26) (unsigned short, signed int, signed char);
extern unsigned char v27 (unsigned short, signed int);
extern unsigned char (*v28) (unsigned short, signed int);
extern unsigned char v29 (unsigned int);
extern unsigned char (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v108 = -1;
signed int v107 = 2;
signed short v106 = 0;

signed char v17 (signed short v109, unsigned int v110, unsigned short v111)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
unsigned int v114 = 6U;
unsigned int v113 = 5U;
unsigned int v112 = 4U;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v115;
v115 = 0 - 1;
v23 (v115);
}
break;
case 7: 
{
unsigned short v116;
v116 = 6 - v111;
v23 (v116);
}
break;
case 9: 
return -2;
default: abort ();
}
}
}
}

signed int v11 (void)
{
{
for (;;) {
signed int v119 = -3;
unsigned int v118 = 0U;
signed int v117 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (signed char v120, signed char v121, signed short v122, unsigned char v123)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
unsigned int v126 = 3U;
signed int v125 = -4;
unsigned char v124 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
