#include <stdlib.h>
extern void v1 (unsigned short, unsigned char, unsigned int, signed int);
extern void (*v2) (unsigned short, unsigned char, unsigned int, signed int);
extern unsigned int v3 (unsigned int, signed int, signed int, unsigned char);
extern unsigned int (*v4) (unsigned int, signed int, signed int, unsigned char);
extern signed int v5 (signed short, signed char, signed int, unsigned int);
extern signed int (*v6) (signed short, signed char, signed int, unsigned int);
unsigned char v7 (unsigned char, signed short, signed short);
unsigned char (*v8) (unsigned char, signed short, signed short) = v7;
extern unsigned char v9 (unsigned int, unsigned short, unsigned int, unsigned char);
extern unsigned char (*v10) (unsigned int, unsigned short, unsigned int, unsigned char);
extern signed short v11 (signed char, signed short, signed char);
extern signed short (*v12) (signed char, signed short, signed char);
unsigned short v13 (unsigned char);
unsigned short (*v14) (unsigned char) = v13;
extern signed int v15 (signed int, unsigned short, signed int, signed short);
extern signed int (*v16) (signed int, unsigned short, signed int, signed short);
extern unsigned int v17 (unsigned char, unsigned int, signed short, signed int);
extern unsigned int (*v18) (unsigned char, unsigned int, signed short, signed int);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern unsigned short v23 (signed int, signed short, unsigned short, signed short);
extern unsigned short (*v24) (signed int, signed short, unsigned short, signed short);
extern void v25 (signed int, unsigned int);
extern void (*v26) (signed int, unsigned int);
unsigned int v29 (signed int);
unsigned int (*v30) (signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v112 = 4;
unsigned char v111 = 4;
unsigned char v110 = 5;

unsigned int v29 (signed int v113)
{
history[history_index++] = (int)v113;
{
for (;;) {
signed char v116 = -3;
signed int v115 = -3;
signed char v114 = -4;
trace++;
switch (trace)
{
case 1: 
return 2U;
default: abort ();
}
}
}
}

unsigned short v13 (unsigned char v117)
{
history[history_index++] = (int)v117;
{
for (;;) {
signed short v120 = -4;
unsigned short v119 = 5;
signed char v118 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned char v121, signed short v122, signed short v123)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
signed short v126 = -4;
unsigned char v125 = 0;
signed char v124 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
