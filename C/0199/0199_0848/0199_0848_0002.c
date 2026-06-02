#include <stdlib.h>
extern unsigned short v1 (signed short, signed short);
extern unsigned short (*v2) (signed short, signed short);
extern signed char v3 (unsigned int, signed short);
extern signed char (*v4) (unsigned int, signed short);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern unsigned char v7 (unsigned int, signed int, unsigned char, signed short);
extern unsigned char (*v8) (unsigned int, signed int, unsigned char, signed short);
extern signed char v9 (unsigned int, unsigned char, unsigned short, unsigned int);
extern signed char (*v10) (unsigned int, unsigned char, unsigned short, unsigned int);
unsigned int v11 (unsigned char, unsigned char, signed char, signed char);
unsigned int (*v12) (unsigned char, unsigned char, signed char, signed char) = v11;
unsigned short v13 (unsigned short, unsigned char);
unsigned short (*v14) (unsigned short, unsigned char) = v13;
extern void v15 (void);
extern void (*v16) (void);
extern void v17 (void);
extern void (*v18) (void);
extern signed short v19 (signed int, signed int, unsigned char, unsigned int);
extern signed short (*v20) (signed int, signed int, unsigned char, unsigned int);
extern unsigned char v21 (signed short);
extern unsigned char (*v22) (signed short);
extern unsigned short v23 (unsigned char, signed char, unsigned int, unsigned char);
extern unsigned short (*v24) (unsigned char, signed char, unsigned int, unsigned char);
extern unsigned char v25 (unsigned char);
extern unsigned char (*v26) (unsigned char);
extern void v27 (signed char, signed short, unsigned char, signed short);
extern void (*v28) (signed char, signed short, unsigned char, signed short);
extern signed char v29 (signed int, unsigned int, signed int, signed char);
extern signed char (*v30) (signed int, unsigned int, signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v103 = -3;
unsigned short v102 = 6;
unsigned int v101 = 3U;

unsigned short v13 (unsigned short v104, unsigned char v105)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned int v108 = 4U;
unsigned short v107 = 5;
unsigned int v106 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (unsigned char v109, unsigned char v110, signed char v111, signed char v112)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
signed int v115 = -2;
unsigned char v114 = 4;
unsigned char v113 = 5;
trace++;
switch (trace)
{
case 9: 
{
signed int v116;
signed int v117;
unsigned char v118;
unsigned int v119;
signed short v120;
v116 = v115 - 2;
v117 = v115 - v115;
v118 = v114 - v113;
v119 = 0U + 4U;
v120 = v19 (v116, v117, v118, v119);
history[history_index++] = (int)v120;
}
break;
case 11: 
return 0U;
default: abort ();
}
}
}
}
