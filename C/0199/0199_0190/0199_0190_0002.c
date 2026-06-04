#include <stdlib.h>
extern signed int v3 (signed int);
extern signed int (*v4) (signed int);
signed char v7 (signed char, unsigned int, signed int);
signed char (*v8) (signed char, unsigned int, signed int) = v7;
extern signed short v9 (void);
extern signed short (*v10) (void);
extern void v11 (unsigned char, unsigned short, signed short, unsigned char);
extern void (*v12) (unsigned char, unsigned short, signed short, unsigned char);
extern signed short v13 (unsigned short, unsigned char, signed char);
extern signed short (*v14) (unsigned short, unsigned char, signed char);
extern void v15 (signed int, signed int, signed int);
extern void (*v16) (signed int, signed int, signed int);
extern unsigned short v17 (signed char, signed char, signed short, signed short);
extern unsigned short (*v18) (signed char, signed char, signed short, signed short);
extern unsigned int v19 (signed int, signed short, unsigned short, signed int);
extern unsigned int (*v20) (signed int, signed short, unsigned short, signed int);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern signed int v23 (signed int, signed int, unsigned short);
extern signed int (*v24) (signed int, signed int, unsigned short);
extern void v25 (signed int, unsigned char, signed short, unsigned int);
extern void (*v26) (signed int, unsigned char, signed short, unsigned int);
extern signed char v27 (unsigned int, signed short, signed int, signed short);
extern signed char (*v28) (unsigned int, signed short, signed int, signed short);
extern unsigned short v29 (signed char, signed int, unsigned short);
extern unsigned short (*v30) (signed char, signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v113 = 0;
unsigned int v112 = 7U;
unsigned short v111 = 3;

signed char v7 (signed char v114, unsigned int v115, signed int v116)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
signed short v119 = -1;
unsigned short v118 = 5;
signed char v117 = 1;
trace++;
switch (trace)
{
case 5: 
return 1;
case 7: 
{
signed char v120;
signed char v121;
signed short v122;
signed short v123;
unsigned short v124;
v120 = v114 - 3;
v121 = v114 - 3;
v122 = -1 + v119;
v123 = -4 + 0;
v124 = v17 (v120, v121, v122, v123);
history[history_index++] = (int)v124;
}
break;
case 13: 
return 0;
default: abort ();
}
}
}
}
