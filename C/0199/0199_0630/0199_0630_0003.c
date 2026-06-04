#include <stdlib.h>
extern unsigned char v1 (signed short, signed short);
extern unsigned char (*v2) (signed short, signed short);
extern signed short v3 (unsigned short, signed char);
extern signed short (*v4) (unsigned short, signed char);
extern unsigned int v5 (unsigned short, signed char, unsigned char, signed char);
extern unsigned int (*v6) (unsigned short, signed char, unsigned char, signed char);
extern unsigned int v7 (unsigned short, unsigned int, unsigned short);
extern unsigned int (*v8) (unsigned short, unsigned int, unsigned short);
extern void v9 (unsigned short);
extern void (*v10) (unsigned short);
extern unsigned int v11 (signed int, signed char);
extern unsigned int (*v12) (signed int, signed char);
extern unsigned short v13 (unsigned int, signed char, unsigned char, unsigned int);
extern unsigned short (*v14) (unsigned int, signed char, unsigned char, unsigned int);
extern signed int v15 (signed short);
extern signed int (*v16) (signed short);
extern signed int v17 (signed short, signed char, unsigned int);
extern signed int (*v18) (signed short, signed char, unsigned int);
extern unsigned char v19 (signed int, unsigned int, unsigned char);
extern unsigned char (*v20) (signed int, unsigned int, unsigned char);
extern signed char v23 (void);
extern signed char (*v24) (void);
extern unsigned int v27 (unsigned short, unsigned short, unsigned short, unsigned int);
extern unsigned int (*v28) (unsigned short, unsigned short, unsigned short, unsigned int);
unsigned int v29 (unsigned short);
unsigned int (*v30) (unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v106 = 2;
unsigned char v105 = 3;
unsigned short v104 = 0;

unsigned int v29 (unsigned short v107)
{
history[history_index++] = (int)v107;
{
for (;;) {
signed short v110 = -4;
unsigned int v109 = 3U;
unsigned char v108 = 3;
trace++;
switch (trace)
{
case 2: 
{
signed int v111;
signed char v112;
unsigned int v113;
v111 = 3 + -4;
v112 = -4 - 3;
v113 = v11 (v111, v112);
history[history_index++] = (int)v113;
}
break;
case 4: 
{
signed int v114;
signed char v115;
unsigned int v116;
v114 = -1 - -1;
v115 = 3 + 1;
v116 = v11 (v114, v115);
history[history_index++] = (int)v116;
}
break;
case 12: 
return v109;
default: abort ();
}
}
}
}
