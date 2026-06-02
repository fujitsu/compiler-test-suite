#include <stdlib.h>
signed short v3 (unsigned short);
signed short (*v4) (unsigned short) = v3;
extern signed char v5 (void);
extern signed char (*v6) (void);
extern unsigned int v7 (signed char, signed char, unsigned char);
extern unsigned int (*v8) (signed char, signed char, unsigned char);
extern signed int v9 (unsigned char, signed char);
extern signed int (*v10) (unsigned char, signed char);
signed short v11 (unsigned short);
signed short (*v12) (unsigned short) = v11;
extern unsigned short v13 (unsigned int, unsigned char);
extern unsigned short (*v14) (unsigned int, unsigned char);
extern signed short v15 (unsigned int, signed char, signed short);
extern signed short (*v16) (unsigned int, signed char, signed short);
extern signed char v17 (unsigned char, signed int, unsigned int);
extern signed char (*v18) (unsigned char, signed int, unsigned int);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
unsigned short v23 (void);
unsigned short (*v24) (void) = v23;
extern unsigned int v25 (signed char, signed int, signed short, signed short);
extern unsigned int (*v26) (signed char, signed int, signed short, signed short);
extern unsigned int v27 (signed int, unsigned int, unsigned char, signed short);
extern unsigned int (*v28) (signed int, unsigned int, unsigned char, signed short);
extern void v29 (unsigned char, unsigned short, signed int, signed short);
extern void (*v30) (unsigned char, unsigned short, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v107 = 4;
unsigned short v106 = 1;
signed short v105 = 3;

unsigned short v23 (void)
{
{
for (;;) {
unsigned int v110 = 4U;
unsigned char v109 = 0;
signed short v108 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (unsigned short v111)
{
history[history_index++] = (int)v111;
{
for (;;) {
signed char v114 = 3;
signed char v113 = 2;
unsigned short v112 = 6;
trace++;
switch (trace)
{
case 3: 
{
signed char v115;
signed int v116;
signed short v117;
signed short v118;
unsigned int v119;
v115 = v114 - -2;
v116 = -2 + 3;
v117 = -2 + 2;
v118 = 0 + -1;
v119 = v25 (v115, v116, v117, v118);
history[history_index++] = (int)v119;
}
break;
case 5: 
return 0;
default: abort ();
}
}
}
}

signed short v3 (unsigned short v120)
{
history[history_index++] = (int)v120;
{
for (;;) {
signed char v123 = 3;
unsigned char v122 = 0;
signed char v121 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
