#include <stdlib.h>
unsigned int v1 (void);
unsigned int (*v2) (void) = v1;
extern signed char v3 (unsigned short, signed char, unsigned int);
extern signed char (*v4) (unsigned short, signed char, unsigned int);
extern unsigned int v5 (unsigned int, signed char);
extern unsigned int (*v6) (unsigned int, signed char);
extern unsigned short v7 (unsigned short, unsigned short, signed short);
extern unsigned short (*v8) (unsigned short, unsigned short, signed short);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern unsigned char v11 (unsigned short);
extern unsigned char (*v12) (unsigned short);
extern signed char v13 (signed int, unsigned short, unsigned int);
extern signed char (*v14) (signed int, unsigned short, unsigned int);
extern signed int v15 (unsigned int, signed short, signed int);
extern signed int (*v16) (unsigned int, signed short, signed int);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
unsigned char v19 (signed short);
unsigned char (*v20) (signed short) = v19;
extern unsigned int v21 (unsigned short, unsigned int);
extern unsigned int (*v22) (unsigned short, unsigned int);
extern void v23 (unsigned short, signed short);
extern void (*v24) (unsigned short, signed short);
extern unsigned short v25 (unsigned int, unsigned int);
extern unsigned short (*v26) (unsigned int, unsigned int);
extern unsigned char v27 (signed int, signed short, signed short, unsigned short);
extern unsigned char (*v28) (signed int, signed short, signed short, unsigned short);
extern signed char v29 (signed int);
extern signed char (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v121 = 1U;
signed int v120 = 0;
signed short v119 = 1;

unsigned char v19 (signed short v122)
{
history[history_index++] = (int)v122;
{
for (;;) {
signed short v125 = 1;
signed short v124 = 2;
unsigned short v123 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (void)
{
{
for (;;) {
signed short v128 = -1;
unsigned int v127 = 0U;
unsigned int v126 = 6U;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v129;
unsigned int v130;
unsigned short v131;
v129 = 3U + v126;
v130 = v127 - v127;
v131 = v25 (v129, v130);
history[history_index++] = (int)v131;
}
break;
case 12: 
return 2U;
default: abort ();
}
}
}
}
