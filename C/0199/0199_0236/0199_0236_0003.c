#include <stdlib.h>
extern void v1 (unsigned int, unsigned short, signed char);
extern void (*v2) (unsigned int, unsigned short, signed char);
unsigned int v3 (signed short, unsigned int, unsigned int, unsigned int);
unsigned int (*v4) (signed short, unsigned int, unsigned int, unsigned int) = v3;
extern unsigned int v5 (signed int, unsigned short, signed int);
extern unsigned int (*v6) (signed int, unsigned short, signed int);
extern void v7 (void);
extern void (*v8) (void);
static unsigned short v9 (void);
static unsigned short (*v10) (void) = v9;
extern unsigned char v11 (unsigned char);
extern unsigned char (*v12) (unsigned char);
extern void v13 (unsigned char);
extern void (*v14) (unsigned char);
extern signed char v15 (signed char, unsigned int);
extern signed char (*v16) (signed char, unsigned int);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern signed int v19 (signed char);
extern signed int (*v20) (signed char);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern void v23 (signed int, unsigned int, unsigned int);
extern void (*v24) (signed int, unsigned int, unsigned int);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned short v27 (signed short, signed short);
extern unsigned short (*v28) (signed short, signed short);
extern signed short v29 (unsigned char, unsigned int, unsigned int, signed short);
extern signed short (*v30) (unsigned char, unsigned int, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v109 = 0U;
unsigned short v108 = 6;
signed short v107 = 1;

static unsigned short v9 (void)
{
{
for (;;) {
signed short v112 = 3;
unsigned short v111 = 2;
unsigned short v110 = 4;
trace++;
switch (trace)
{
case 6: 
{
signed char v113;
signed int v114;
v113 = -4 - -3;
v114 = v19 (v113);
history[history_index++] = (int)v114;
}
break;
case 8: 
{
signed char v115;
signed int v116;
v115 = 2 - -3;
v116 = v19 (v115);
history[history_index++] = (int)v116;
}
break;
case 10: 
{
signed char v117;
signed int v118;
v117 = -1 + -1;
v118 = v19 (v117);
history[history_index++] = (int)v118;
}
break;
case 12: 
return v111;
default: abort ();
}
}
}
}

unsigned int v3 (signed short v119, unsigned int v120, unsigned int v121, unsigned int v122)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
signed char v125 = -4;
unsigned short v124 = 6;
signed char v123 = 0;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v126;
v126 = v9 ();
history[history_index++] = (int)v126;
}
break;
case 13: 
return 4U;
default: abort ();
}
}
}
}
