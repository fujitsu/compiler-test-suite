#include <stdlib.h>
extern signed short v1 (unsigned int);
extern signed short (*v2) (unsigned int);
extern unsigned char v3 (signed short, signed short);
extern unsigned char (*v4) (signed short, signed short);
extern unsigned int v5 (signed int, unsigned int);
extern unsigned int (*v6) (signed int, unsigned int);
extern unsigned char v7 (unsigned short, signed int, unsigned short);
extern unsigned char (*v8) (unsigned short, signed int, unsigned short);
extern unsigned int v9 (signed short, signed char, unsigned int);
extern unsigned int (*v10) (signed short, signed char, unsigned int);
extern unsigned char v11 (signed char, unsigned int);
extern unsigned char (*v12) (signed char, unsigned int);
extern signed char v13 (signed int, signed char, unsigned int, signed short);
extern signed char (*v14) (signed int, signed char, unsigned int, signed short);
extern signed char v15 (unsigned int, unsigned short, unsigned short, signed int);
extern signed char (*v16) (unsigned int, unsigned short, unsigned short, signed int);
unsigned char v17 (signed char);
unsigned char (*v18) (signed char) = v17;
extern unsigned char v19 (signed short, unsigned char, unsigned short);
extern unsigned char (*v20) (signed short, unsigned char, unsigned short);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern signed short v25 (unsigned char, unsigned char, signed int);
extern signed short (*v26) (unsigned char, unsigned char, signed int);
extern signed short v27 (signed short);
extern signed short (*v28) (signed short);
extern unsigned char v29 (unsigned short, unsigned int, unsigned short);
extern unsigned char (*v30) (unsigned short, unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v113 = 3U;
unsigned short v112 = 3;
unsigned char v111 = 1;

unsigned char v17 (signed char v114)
{
history[history_index++] = (int)v114;
{
for (;;) {
signed short v117 = -2;
unsigned char v116 = 2;
signed short v115 = -3;
trace++;
switch (trace)
{
case 5: 
{
signed short v118;
unsigned char v119;
unsigned short v120;
unsigned char v121;
v118 = v115 + 2;
v119 = v116 - v116;
v120 = 6 + 6;
v121 = v19 (v118, v119, v120);
history[history_index++] = (int)v121;
}
break;
case 13: 
return v116;
default: abort ();
}
}
}
}
