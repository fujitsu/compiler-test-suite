#include <stdlib.h>
extern signed short v3 (unsigned short, unsigned short);
extern signed short (*v4) (unsigned short, unsigned short);
extern void v5 (signed short, signed short);
extern void (*v6) (signed short, signed short);
extern signed char v7 (unsigned char, signed int, signed char, unsigned int);
extern signed char (*v8) (unsigned char, signed int, signed char, unsigned int);
extern signed short v9 (unsigned short, unsigned char, signed short);
extern signed short (*v10) (unsigned short, unsigned char, signed short);
extern signed char v11 (signed char, unsigned char);
extern signed char (*v12) (signed char, unsigned char);
extern unsigned char v13 (signed char, signed char, unsigned char);
extern unsigned char (*v14) (signed char, signed char, unsigned char);
unsigned char v15 (void);
unsigned char (*v16) (void) = v15;
extern void v17 (unsigned int, signed int);
extern void (*v18) (unsigned int, signed int);
signed int v19 (void);
signed int (*v20) (void) = v19;
extern unsigned short v23 (signed char, signed char);
extern unsigned short (*v24) (signed char, signed char);
extern unsigned int v25 (unsigned char, signed int, signed char);
extern unsigned int (*v26) (unsigned char, signed int, signed char);
extern unsigned char v27 (unsigned char);
extern unsigned char (*v28) (unsigned char);
extern unsigned char v29 (unsigned int);
extern unsigned char (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v114 = 2U;
unsigned char v113 = 3;
unsigned char v112 = 7;

signed int v19 (void)
{
{
for (;;) {
unsigned short v117 = 5;
unsigned char v116 = 7;
signed short v115 = -3;
trace++;
switch (trace)
{
case 4: 
return -1;
case 6: 
return -1;
default: abort ();
}
}
}
}

unsigned char v15 (void)
{
{
for (;;) {
unsigned int v120 = 7U;
unsigned char v119 = 7;
unsigned int v118 = 6U;
trace++;
switch (trace)
{
case 1: 
{
signed char v121;
unsigned char v122;
signed char v123;
v121 = 3 + 3;
v122 = v119 + 0;
v123 = v11 (v121, v122);
history[history_index++] = (int)v123;
}
break;
case 13: 
return 1;
default: abort ();
}
}
}
}
