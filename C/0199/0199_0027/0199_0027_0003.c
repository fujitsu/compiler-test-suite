#include <stdlib.h>
extern void v1 (signed char, unsigned short);
extern void (*v2) (signed char, unsigned short);
extern void v3 (unsigned int, unsigned short, signed short, unsigned short);
extern void (*v4) (unsigned int, unsigned short, signed short, unsigned short);
extern void v5 (unsigned char);
extern void (*v6) (unsigned char);
extern unsigned short v7 (unsigned int, signed short, signed short);
extern unsigned short (*v8) (unsigned int, signed short, signed short);
extern unsigned int v9 (signed int, signed int, unsigned short);
extern unsigned int (*v10) (signed int, signed int, unsigned short);
extern signed short v11 (unsigned int, unsigned short, unsigned int, unsigned short);
extern signed short (*v12) (unsigned int, unsigned short, unsigned int, unsigned short);
extern void v13 (signed char, unsigned short, signed int, unsigned short);
extern void (*v14) (signed char, unsigned short, signed int, unsigned short);
extern signed int v15 (unsigned int, unsigned int);
extern signed int (*v16) (unsigned int, unsigned int);
extern signed short v17 (signed short, unsigned int, signed char);
extern signed short (*v18) (signed short, unsigned int, signed char);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
signed short v21 (unsigned short, unsigned int, signed short, unsigned char);
signed short (*v22) (unsigned short, unsigned int, signed short, unsigned char) = v21;
extern signed short v23 (unsigned char, signed char, unsigned char);
extern signed short (*v24) (unsigned char, signed char, unsigned char);
extern signed char v25 (signed short, signed int, unsigned int, signed short);
extern signed char (*v26) (signed short, signed int, unsigned int, signed short);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
unsigned short v29 (unsigned short, signed short);
unsigned short (*v30) (unsigned short, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v102 = 4U;
signed short v101 = 3;
signed int v100 = 2;

unsigned short v29 (unsigned short v103, signed short v104)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
unsigned short v107 = 0;
unsigned char v106 = 2;
signed int v105 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v21 (unsigned short v108, unsigned int v109, signed short v110, unsigned char v111)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
unsigned char v114 = 5;
unsigned char v113 = 0;
signed char v112 = 2;
trace++;
switch (trace)
{
case 7: 
return v110;
case 9: 
{
signed short v115;
signed int v116;
unsigned int v117;
signed short v118;
signed char v119;
v115 = v110 + -4;
v116 = -2 - -3;
v117 = v109 + 5U;
v118 = -4 + 0;
v119 = v25 (v115, v116, v117, v118);
history[history_index++] = (int)v119;
}
break;
case 13: 
return v110;
default: abort ();
}
}
}
}
