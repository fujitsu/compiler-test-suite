#include <stdlib.h>
signed int v3 (signed short, unsigned int, unsigned char);
signed int (*v4) (signed short, unsigned int, unsigned char) = v3;
extern unsigned char v5 (unsigned char, unsigned short, unsigned short);
extern unsigned char (*v6) (unsigned char, unsigned short, unsigned short);
extern unsigned short v7 (unsigned short);
extern unsigned short (*v8) (unsigned short);
extern void v9 (signed char, signed int, unsigned int);
extern void (*v10) (signed char, signed int, unsigned int);
extern signed short v11 (unsigned int, signed short, signed int, unsigned char);
extern signed short (*v12) (unsigned int, signed short, signed int, unsigned char);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
unsigned int v17 (unsigned char, unsigned int, unsigned short, signed char);
unsigned int (*v18) (unsigned char, unsigned int, unsigned short, signed char) = v17;
extern signed short v19 (signed int, signed char);
extern signed short (*v20) (signed int, signed char);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern unsigned short v23 (unsigned int, signed short);
extern unsigned short (*v24) (unsigned int, signed short);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern signed int v29 (unsigned int, unsigned short);
extern signed int (*v30) (unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v114 = 2;
unsigned int v113 = 5U;
signed char v112 = 2;

unsigned int v17 (unsigned char v115, unsigned int v116, unsigned short v117, signed char v118)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
signed short v121 = -1;
unsigned int v120 = 0U;
signed char v119 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed short v122, unsigned int v123, unsigned char v124)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
signed short v127 = 0;
signed int v126 = 0;
signed short v125 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
