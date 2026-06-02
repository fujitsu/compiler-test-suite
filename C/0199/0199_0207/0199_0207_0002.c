#include <stdlib.h>
extern void v5 (unsigned char, unsigned int, unsigned char, signed int);
extern void (*v6) (unsigned char, unsigned int, unsigned char, signed int);
extern unsigned char v7 (unsigned char, unsigned int);
extern unsigned char (*v8) (unsigned char, unsigned int);
unsigned char v9 (signed short, unsigned short);
unsigned char (*v10) (signed short, unsigned short) = v9;
signed int v11 (signed char, signed char);
signed int (*v12) (signed char, signed char) = v11;
extern signed short v15 (void);
extern signed short (*v16) (void);
extern unsigned char v17 (signed char);
extern unsigned char (*v18) (signed char);
extern unsigned short v19 (unsigned char, unsigned short, unsigned char);
extern unsigned short (*v20) (unsigned char, unsigned short, unsigned char);
extern unsigned int v21 (signed int, signed int);
extern unsigned int (*v22) (signed int, signed int);
extern void v23 (void);
extern void (*v24) (void);
extern unsigned int v25 (unsigned short, signed char, signed int);
extern unsigned int (*v26) (unsigned short, signed char, signed int);
extern unsigned short v27 (signed short, unsigned short, signed char);
extern unsigned short (*v28) (signed short, unsigned short, signed char);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v104 = 4U;
signed short v103 = -4;
signed char v102 = 3;

signed int v11 (signed char v105, signed char v106)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed int v109 = -1;
unsigned char v108 = 2;
signed short v107 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (signed short v110, unsigned short v111)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
unsigned short v114 = 1;
signed short v113 = -4;
signed int v112 = -2;
trace++;
switch (trace)
{
case 9: 
{
signed short v115;
unsigned short v116;
signed char v117;
unsigned short v118;
v115 = v113 + -2;
v116 = 3 - 1;
v117 = -2 + -1;
v118 = v27 (v115, v116, v117);
history[history_index++] = (int)v118;
}
break;
case 13: 
return 7;
default: abort ();
}
}
}
}
