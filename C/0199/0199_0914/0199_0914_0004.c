#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern void v3 (signed short, unsigned int, unsigned char, signed short);
extern void (*v4) (signed short, unsigned int, unsigned char, signed short);
extern void v5 (unsigned short, signed short, signed int);
extern void (*v6) (unsigned short, signed short, signed int);
extern signed char v7 (unsigned char);
extern signed char (*v8) (unsigned char);
signed char v9 (signed char, signed char, unsigned short, signed char);
signed char (*v10) (signed char, signed char, unsigned short, signed char) = v9;
extern signed char v11 (unsigned short, signed short, unsigned char);
extern signed char (*v12) (unsigned short, signed short, unsigned char);
extern unsigned short v13 (unsigned short, signed int);
extern unsigned short (*v14) (unsigned short, signed int);
extern unsigned int v15 (signed int, signed int, unsigned char);
extern unsigned int (*v16) (signed int, signed int, unsigned char);
extern signed short v17 (signed short);
extern signed short (*v18) (signed short);
extern unsigned short v19 (unsigned int, unsigned short, signed char);
extern unsigned short (*v20) (unsigned int, unsigned short, signed char);
extern unsigned char v21 (unsigned int);
extern unsigned char (*v22) (unsigned int);
signed int v23 (void);
signed int (*v24) (void) = v23;
extern void v25 (void);
extern void (*v26) (void);
static void v27 (void);
static void (*v28) (void) = v27;
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v112 = 3;
unsigned char v111 = 4;
signed int v110 = -4;

static void v27 (void)
{
{
for (;;) {
unsigned short v115 = 2;
signed char v114 = -2;
unsigned short v113 = 1;
trace++;
switch (trace)
{
case 9: 
return;
default: abort ();
}
}
}
}

signed int v23 (void)
{
{
for (;;) {
unsigned short v118 = 0;
unsigned short v117 = 5;
unsigned char v116 = 4;
trace++;
switch (trace)
{
case 8: 
{
v27 ();
}
break;
case 10: 
return -4;
default: abort ();
}
}
}
}

signed char v9 (signed char v119, signed char v120, unsigned short v121, signed char v122)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
unsigned char v125 = 0;
signed short v124 = 2;
unsigned int v123 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
