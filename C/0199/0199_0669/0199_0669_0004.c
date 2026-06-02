#include <stdlib.h>
extern unsigned int v1 (signed char, unsigned short);
extern unsigned int (*v2) (signed char, unsigned short);
unsigned char v3 (signed short);
unsigned char (*v4) (signed short) = v3;
extern unsigned char v5 (unsigned int, signed int, unsigned char, unsigned short);
extern unsigned char (*v6) (unsigned int, signed int, unsigned char, unsigned short);
extern unsigned int v7 (signed int);
extern unsigned int (*v8) (signed int);
extern signed char v9 (signed short, signed char);
extern signed char (*v10) (signed short, signed char);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern unsigned char v13 (unsigned char, signed char);
extern unsigned char (*v14) (unsigned char, signed char);
extern signed short v15 (signed char);
extern signed short (*v16) (signed char);
extern void v17 (unsigned int, unsigned int);
extern void (*v18) (unsigned int, unsigned int);
extern unsigned short v19 (signed short);
extern unsigned short (*v20) (signed short);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern signed short v23 (void);
extern signed short (*v24) (void);
signed int v27 (void);
signed int (*v28) (void) = v27;
extern unsigned char v29 (unsigned int, unsigned int);
extern unsigned char (*v30) (unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v114 = 2;
unsigned short v113 = 2;
signed int v112 = 2;

signed int v27 (void)
{
{
for (;;) {
unsigned int v117 = 4U;
unsigned short v116 = 2;
signed int v115 = -4;
trace++;
switch (trace)
{
case 5: 
return 2;
case 8: 
{
signed short v118;
signed char v119;
signed char v120;
v118 = 1 - 3;
v119 = 1 - -3;
v120 = v9 (v118, v119);
history[history_index++] = (int)v120;
}
break;
case 10: 
{
signed short v121;
signed char v122;
signed char v123;
v121 = -4 + 2;
v122 = -2 - 0;
v123 = v9 (v121, v122);
history[history_index++] = (int)v123;
}
break;
case 12: 
return v115;
default: abort ();
}
}
}
}

unsigned char v3 (signed short v124)
{
history[history_index++] = (int)v124;
{
for (;;) {
unsigned int v127 = 1U;
signed short v126 = 0;
unsigned char v125 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
