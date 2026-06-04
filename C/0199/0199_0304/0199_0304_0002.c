#include <stdlib.h>
extern unsigned short v1 (signed short, unsigned short, unsigned int, unsigned int);
extern unsigned short (*v2) (signed short, unsigned short, unsigned int, unsigned int);
unsigned int v3 (unsigned short);
unsigned int (*v4) (unsigned short) = v3;
extern unsigned short v5 (unsigned short);
extern unsigned short (*v6) (unsigned short);
extern signed short v9 (unsigned short);
extern signed short (*v10) (unsigned short);
extern unsigned int v11 (unsigned char, unsigned char, unsigned char);
extern unsigned int (*v12) (unsigned char, unsigned char, unsigned char);
extern void v13 (unsigned char, signed char, unsigned int);
extern void (*v14) (unsigned char, signed char, unsigned int);
extern void v15 (unsigned int, signed short, signed int, signed char);
extern void (*v16) (unsigned int, signed short, signed int, signed char);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern unsigned char v21 (signed int, signed int, signed char);
extern unsigned char (*v22) (signed int, signed int, signed char);
unsigned short v23 (void);
unsigned short (*v24) (void) = v23;
extern signed int v25 (unsigned char, unsigned int, unsigned short, unsigned int);
extern signed int (*v26) (unsigned char, unsigned int, unsigned short, unsigned int);
signed short v27 (unsigned int, signed short, signed int);
signed short (*v28) (unsigned int, signed short, signed int) = v27;
extern unsigned char v29 (unsigned char, signed int, unsigned int);
extern unsigned char (*v30) (unsigned char, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v70 = -3;
signed int v69 = -2;
unsigned char v68 = 4;

signed short v27 (unsigned int v71, signed short v72, signed int v73)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
unsigned short v76 = 5;
unsigned int v75 = 5U;
unsigned short v74 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v23 (void)
{
{
for (;;) {
unsigned short v79 = 0;
unsigned char v78 = 1;
signed short v77 = 1;
trace++;
switch (trace)
{
case 7: 
{
unsigned short v80;
unsigned short v81;
v80 = v79 - v79;
v81 = v5 (v80);
history[history_index++] = (int)v81;
}
break;
case 11: 
return 0;
default: abort ();
}
}
}
}

unsigned int v3 (unsigned short v82)
{
history[history_index++] = (int)v82;
{
for (;;) {
signed int v85 = 0;
signed short v84 = 0;
unsigned int v83 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
