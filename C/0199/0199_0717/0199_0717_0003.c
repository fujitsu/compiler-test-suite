#include <stdlib.h>
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned int v5 (signed int, signed char, unsigned int, signed int);
extern unsigned int (*v6) (signed int, signed char, unsigned int, signed int);
signed int v7 (signed int, unsigned short, unsigned int);
signed int (*v8) (signed int, unsigned short, unsigned int) = v7;
extern unsigned int v9 (unsigned int, unsigned int, unsigned int);
extern unsigned int (*v10) (unsigned int, unsigned int, unsigned int);
extern unsigned short v11 (unsigned char, signed short, signed int, unsigned short);
extern unsigned short (*v12) (unsigned char, signed short, signed int, unsigned short);
extern void v13 (void);
extern void (*v14) (void);
extern signed int v15 (unsigned int);
extern signed int (*v16) (unsigned int);
signed char v17 (void);
signed char (*v18) (void) = v17;
extern unsigned short v19 (unsigned short, unsigned int);
extern unsigned short (*v20) (unsigned short, unsigned int);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern signed int v25 (signed int);
extern signed int (*v26) (signed int);
extern signed int v27 (unsigned int, unsigned int, unsigned int);
extern signed int (*v28) (unsigned int, unsigned int, unsigned int);
extern signed int v29 (signed char, unsigned short, unsigned short);
extern signed int (*v30) (signed char, unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v111 = 0U;
signed short v110 = 1;
unsigned int v109 = 3U;

signed char v17 (void)
{
{
for (;;) {
unsigned char v114 = 4;
signed int v113 = 2;
signed char v112 = -3;
trace++;
switch (trace)
{
case 8: 
{
signed int v115;
signed char v116;
unsigned int v117;
signed int v118;
unsigned int v119;
v115 = 0 + 3;
v116 = 2 - 3;
v117 = 4U - 3U;
v118 = 2 + 0;
v119 = v5 (v115, v116, v117, v118);
history[history_index++] = (int)v119;
}
break;
case 12: 
return -1;
default: abort ();
}
}
}
}

signed int v7 (signed int v120, unsigned short v121, unsigned int v122)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
signed char v125 = -2;
signed short v124 = -4;
signed char v123 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
