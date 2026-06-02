#include <stdlib.h>
extern void v3 (unsigned int, unsigned int, unsigned int);
extern void (*v4) (unsigned int, unsigned int, unsigned int);
extern signed short v5 (void);
extern signed short (*v6) (void);
signed char v7 (unsigned char, signed char, unsigned short, unsigned int);
signed char (*v8) (unsigned char, signed char, unsigned short, unsigned int) = v7;
extern unsigned int v9 (signed int, signed short, unsigned short);
extern unsigned int (*v10) (signed int, signed short, unsigned short);
extern signed char v13 (unsigned short, signed char);
extern signed char (*v14) (unsigned short, signed char);
signed int v15 (unsigned char, unsigned short, unsigned int);
signed int (*v16) (unsigned char, unsigned short, unsigned int) = v15;
extern signed int v19 (signed int, signed short, unsigned char, unsigned int);
extern signed int (*v20) (signed int, signed short, unsigned char, unsigned int);
signed short v23 (signed short, unsigned int);
signed short (*v24) (signed short, unsigned int) = v23;
extern signed char v25 (unsigned short, signed char, unsigned int);
extern signed char (*v26) (unsigned short, signed char, unsigned int);
extern unsigned char v27 (signed int, unsigned short, signed int, unsigned short);
extern unsigned char (*v28) (signed int, unsigned short, signed int, unsigned short);
extern signed short v29 (signed int);
extern signed short (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v108 = -3;
signed char v107 = 1;
signed int v106 = -3;

signed short v23 (signed short v109, unsigned int v110)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed short v113 = 3;
unsigned short v112 = 5;
signed short v111 = 0;
trace++;
switch (trace)
{
case 1: 
return v109;
default: abort ();
}
}
}
}

signed int v15 (unsigned char v114, unsigned short v115, unsigned int v116)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
unsigned int v119 = 5U;
signed short v118 = -4;
unsigned int v117 = 1U;
trace++;
switch (trace)
{
case 3: 
return -1;
default: abort ();
}
}
}
}

signed char v7 (unsigned char v120, signed char v121, unsigned short v122, unsigned int v123)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
unsigned char v126 = 0;
signed int v125 = -2;
signed int v124 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
