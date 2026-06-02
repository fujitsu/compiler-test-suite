#include <stdlib.h>
extern unsigned char v1 (unsigned int, unsigned short);
extern unsigned char (*v2) (unsigned int, unsigned short);
extern void v3 (void);
extern void (*v4) (void);
extern unsigned short v5 (signed short, signed short, unsigned int);
extern unsigned short (*v6) (signed short, signed short, unsigned int);
unsigned int v7 (void);
unsigned int (*v8) (void) = v7;
extern signed char v9 (unsigned int);
extern signed char (*v10) (unsigned int);
extern signed char v11 (unsigned short, unsigned char, unsigned short);
extern signed char (*v12) (unsigned short, unsigned char, unsigned short);
extern signed short v15 (signed short);
extern signed short (*v16) (signed short);
extern unsigned short v17 (unsigned short, signed int);
extern unsigned short (*v18) (unsigned short, signed int);
unsigned short v19 (unsigned char, unsigned int);
unsigned short (*v20) (unsigned char, unsigned int) = v19;
extern signed short v21 (signed short, unsigned int, signed int, signed short);
extern signed short (*v22) (signed short, unsigned int, signed int, signed short);
extern void v23 (signed short);
extern void (*v24) (signed short);
unsigned short v25 (signed short, unsigned int);
unsigned short (*v26) (signed short, unsigned int) = v25;
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern void v29 (signed char, unsigned char, signed char);
extern void (*v30) (signed char, unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v108 = 3;
signed char v107 = -4;
signed char v106 = 1;

unsigned short v25 (signed short v109, unsigned int v110)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
unsigned char v113 = 1;
signed char v112 = -2;
unsigned short v111 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (unsigned char v114, unsigned int v115)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned int v118 = 1U;
unsigned short v117 = 2;
signed short v116 = 1;
trace++;
switch (trace)
{
case 7: 
{
signed short v119;
v119 = -2 - -3;
v23 (v119);
}
break;
case 9: 
{
signed short v120;
v120 = 3 + v116;
v23 (v120);
}
break;
case 13: 
return 1;
default: abort ();
}
}
}
}

unsigned int v7 (void)
{
{
for (;;) {
unsigned char v123 = 5;
signed short v122 = -4;
signed int v121 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
