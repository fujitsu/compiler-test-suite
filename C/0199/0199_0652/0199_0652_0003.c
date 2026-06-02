#include <stdlib.h>
extern signed short v3 (signed int, signed int, signed int, unsigned char);
extern signed short (*v4) (signed int, signed int, signed int, unsigned char);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern signed char v7 (signed int, signed short, signed char);
extern signed char (*v8) (signed int, signed short, signed char);
extern signed int v9 (unsigned char);
extern signed int (*v10) (unsigned char);
extern unsigned int v11 (signed short, signed short);
extern unsigned int (*v12) (signed short, signed short);
extern signed char v13 (signed short);
extern signed char (*v14) (signed short);
extern void v15 (unsigned short);
extern void (*v16) (unsigned short);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern signed short v19 (signed short, signed char, unsigned int, unsigned int);
extern signed short (*v20) (signed short, signed char, unsigned int, unsigned int);
unsigned short v21 (signed int, signed char, signed short);
unsigned short (*v22) (signed int, signed char, signed short) = v21;
extern unsigned char v23 (unsigned short, signed int);
extern unsigned char (*v24) (unsigned short, signed int);
extern void v25 (signed short, signed char, unsigned int);
extern void (*v26) (signed short, signed char, unsigned int);
extern void v27 (unsigned char, unsigned short);
extern void (*v28) (unsigned char, unsigned short);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v108 = 0;
signed short v107 = -3;
signed int v106 = 3;

unsigned short v21 (signed int v109, signed char v110, signed short v111)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
unsigned short v114 = 1;
unsigned short v113 = 7;
unsigned short v112 = 7;
trace++;
switch (trace)
{
case 7: 
{
signed char v115;
v115 = v29 ();
history[history_index++] = (int)v115;
}
break;
case 9: 
{
signed char v116;
v116 = v29 ();
history[history_index++] = (int)v116;
}
break;
case 11: 
return v113;
default: abort ();
}
}
}
}
