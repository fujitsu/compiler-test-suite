#include <stdlib.h>
extern unsigned short v1 (signed short);
extern unsigned short (*v2) (signed short);
signed short v3 (signed char, signed char, unsigned char);
signed short (*v4) (signed char, signed char, unsigned char) = v3;
extern signed int v5 (unsigned char, unsigned int, unsigned char, unsigned short);
extern signed int (*v6) (unsigned char, unsigned int, unsigned char, unsigned short);
extern unsigned short v7 (unsigned short);
extern unsigned short (*v8) (unsigned short);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern void v11 (void);
extern void (*v12) (void);
extern unsigned char v13 (unsigned short, unsigned short, signed char);
extern unsigned char (*v14) (unsigned short, unsigned short, signed char);
extern signed char v15 (unsigned short);
extern signed char (*v16) (unsigned short);
unsigned char v17 (void);
unsigned char (*v18) (void) = v17;
extern unsigned char v19 (signed short, signed short, unsigned int, unsigned char);
extern unsigned char (*v20) (signed short, signed short, unsigned int, unsigned char);
extern signed char v21 (signed short, unsigned char, unsigned short);
extern signed char (*v22) (signed short, unsigned char, unsigned short);
extern void v23 (signed char, signed int);
extern void (*v24) (signed char, signed int);
extern unsigned short v25 (signed char, signed int, signed short, unsigned int);
extern unsigned short (*v26) (signed char, signed int, signed short, unsigned int);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v106 = -4;
unsigned short v105 = 3;
signed short v104 = -1;

unsigned char v17 (void)
{
{
for (;;) {
signed char v109 = -3;
signed short v108 = -3;
unsigned char v107 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (signed char v110, signed char v111, unsigned char v112)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned char v115 = 7;
unsigned short v114 = 4;
signed char v113 = -3;
trace++;
switch (trace)
{
case 1: 
{
signed char v116;
signed int v117;
v116 = -3 - v110;
v117 = 1 + -2;
v23 (v116, v117);
}
break;
case 3: 
return -2;
case 9: 
{
unsigned char v118;
v118 = v27 ();
history[history_index++] = (int)v118;
}
break;
case 11: 
return -2;
default: abort ();
}
}
}
}
