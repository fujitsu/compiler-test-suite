#include <stdlib.h>
extern void v1 (signed char, unsigned char);
extern void (*v2) (signed char, unsigned char);
extern unsigned int v3 (unsigned short);
extern unsigned int (*v4) (unsigned short);
extern signed short v5 (signed int, signed char, signed int);
extern signed short (*v6) (signed int, signed char, signed int);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern unsigned int v9 (unsigned short, unsigned int);
extern unsigned int (*v10) (unsigned short, unsigned int);
extern void v11 (unsigned char, signed char, signed int, unsigned short);
extern void (*v12) (unsigned char, signed char, signed int, unsigned short);
unsigned char v13 (void);
unsigned char (*v14) (void) = v13;
extern unsigned char v15 (signed char);
extern unsigned char (*v16) (signed char);
extern unsigned short v17 (signed char, signed char);
extern unsigned short (*v18) (signed char, signed char);
extern signed int v19 (void);
extern signed int (*v20) (void);
unsigned int v21 (unsigned short, signed char, signed int);
unsigned int (*v22) (unsigned short, signed char, signed int) = v21;
signed char v23 (signed short, unsigned char, unsigned short);
signed char (*v24) (signed short, unsigned char, unsigned short) = v23;
extern unsigned short v25 (unsigned char, unsigned int, unsigned int);
extern unsigned short (*v26) (unsigned char, unsigned int, unsigned int);
extern void v27 (unsigned short, signed short, unsigned char, signed short);
extern void (*v28) (unsigned short, signed short, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v114 = 2;
unsigned int v113 = 4U;
signed short v112 = -1;

signed char v23 (signed short v115, unsigned char v116, unsigned short v117)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
signed int v120 = 0;
unsigned char v119 = 3;
signed short v118 = 2;
trace++;
switch (trace)
{
case 3: 
return -3;
default: abort ();
}
}
}
}

unsigned int v21 (unsigned short v121, signed char v122, signed int v123)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
unsigned int v126 = 5U;
signed char v125 = 3;
unsigned int v124 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (void)
{
{
for (;;) {
unsigned short v129 = 1;
unsigned int v128 = 2U;
unsigned int v127 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
