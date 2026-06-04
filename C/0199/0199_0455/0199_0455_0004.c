#include <stdlib.h>
extern signed int v1 (unsigned char, signed char, signed int);
extern signed int (*v2) (unsigned char, signed char, signed int);
unsigned short v3 (void);
unsigned short (*v4) (void) = v3;
extern unsigned short v7 (signed short);
extern unsigned short (*v8) (signed short);
extern signed int v9 (unsigned char);
extern signed int (*v10) (unsigned char);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned short v15 (signed int, signed int, unsigned char, unsigned char);
extern unsigned short (*v16) (signed int, signed int, unsigned char, unsigned char);
extern void v17 (void);
extern void (*v18) (void);
extern unsigned short v19 (unsigned short, unsigned short);
extern unsigned short (*v20) (unsigned short, unsigned short);
extern signed char v21 (signed short, unsigned char);
extern signed char (*v22) (signed short, unsigned char);
extern unsigned char v23 (signed int);
extern unsigned char (*v24) (signed int);
static unsigned char v25 (void);
static unsigned char (*v26) (void) = v25;
extern unsigned short v27 (signed int, signed short);
extern unsigned short (*v28) (signed int, signed short);
extern signed int v29 (signed short, signed char, unsigned char, unsigned short);
extern signed int (*v30) (signed short, signed char, unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v114 = 2;
unsigned char v113 = 6;
unsigned short v112 = 7;

static unsigned char v25 (void)
{
{
for (;;) {
signed int v117 = 1;
signed char v116 = 1;
unsigned char v115 = 5;
trace++;
switch (trace)
{
case 6: 
return 4;
case 10: 
return 2;
default: abort ();
}
}
}
}

unsigned short v3 (void)
{
{
for (;;) {
signed short v120 = -4;
unsigned char v119 = 2;
unsigned char v118 = 2;
trace++;
switch (trace)
{
case 5: 
{
unsigned char v121;
v121 = v25 ();
history[history_index++] = (int)v121;
}
break;
case 7: 
{
signed int v122;
signed short v123;
unsigned short v124;
v122 = -1 + -2;
v123 = 1 + -4;
v124 = v27 (v122, v123);
history[history_index++] = (int)v124;
}
break;
case 9: 
{
unsigned char v125;
v125 = v25 ();
history[history_index++] = (int)v125;
}
break;
case 11: 
return 5;
default: abort ();
}
}
}
}
