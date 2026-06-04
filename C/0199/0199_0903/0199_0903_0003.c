#include <stdlib.h>
unsigned char v1 (unsigned int, unsigned short);
unsigned char (*v2) (unsigned int, unsigned short) = v1;
extern unsigned int v3 (unsigned int, signed int, signed short);
extern unsigned int (*v4) (unsigned int, signed int, signed short);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern signed short v9 (signed short, signed char, signed short, unsigned int);
extern signed short (*v10) (signed short, signed char, signed short, unsigned int);
extern signed short v11 (signed char, unsigned char, signed int, signed int);
extern signed short (*v12) (signed char, unsigned char, signed int, signed int);
extern signed short v15 (unsigned char, unsigned int, signed char);
extern signed short (*v16) (unsigned char, unsigned int, signed char);
extern unsigned short v17 (signed short, unsigned int);
extern unsigned short (*v18) (signed short, unsigned int);
extern unsigned short v19 (signed short);
extern unsigned short (*v20) (signed short);
extern unsigned short v21 (signed short);
extern unsigned short (*v22) (signed short);
extern signed int v23 (signed short, signed short);
extern signed int (*v24) (signed short, signed short);
extern unsigned char v25 (signed char);
extern unsigned char (*v26) (signed char);
extern signed int v27 (unsigned int, signed char, signed short);
extern signed int (*v28) (unsigned int, signed char, signed short);
extern signed char v29 (unsigned int, signed int);
extern signed char (*v30) (unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v112 = 1;
signed char v111 = -1;
unsigned int v110 = 3U;

unsigned char v1 (unsigned int v113, unsigned short v114)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
signed short v117 = -2;
unsigned char v116 = 1;
unsigned short v115 = 4;
trace++;
switch (trace)
{
case 0: 
{
signed short v118;
signed char v119;
signed short v120;
unsigned int v121;
signed short v122;
v118 = -2 - -4;
v119 = 0 - -3;
v120 = v117 + 0;
v121 = v113 + 2U;
v122 = v9 (v118, v119, v120, v121);
history[history_index++] = (int)v122;
}
break;
case 14: 
return v116;
default: abort ();
}
}
}
}
