#include <stdlib.h>
unsigned int v1 (signed char, unsigned char, unsigned short, unsigned char);
unsigned int (*v2) (signed char, unsigned char, unsigned short, unsigned char) = v1;
extern unsigned int v3 (unsigned short);
extern unsigned int (*v4) (unsigned short);
extern signed short v5 (signed int, unsigned char);
extern signed short (*v6) (signed int, unsigned char);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern unsigned short v11 (signed int, unsigned short, unsigned int);
extern unsigned short (*v12) (signed int, unsigned short, unsigned int);
extern signed char v13 (signed char);
extern signed char (*v14) (signed char);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed short v17 (unsigned short, unsigned int, signed char);
extern signed short (*v18) (unsigned short, unsigned int, signed char);
extern signed char v19 (unsigned int, unsigned int, signed char);
extern signed char (*v20) (unsigned int, unsigned int, signed char);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern unsigned int v23 (signed short, unsigned char, unsigned int, unsigned char);
extern unsigned int (*v24) (signed short, unsigned char, unsigned int, unsigned char);
extern signed short v25 (unsigned int);
extern signed short (*v26) (unsigned int);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern void v29 (unsigned int, unsigned char);
extern void (*v30) (unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v123 = 7;
unsigned short v122 = 7;
unsigned short v121 = 4;

unsigned int v1 (signed char v124, unsigned char v125, unsigned short v126, unsigned char v127)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
unsigned char v130 = 3;
signed char v129 = 1;
unsigned char v128 = 7;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v131;
v131 = v15 ();
history[history_index++] = (int)v131;
}
break;
case 2: 
{
unsigned short v132;
unsigned int v133;
v132 = v126 - v126;
v133 = v3 (v132);
history[history_index++] = (int)v133;
}
break;
case 6: 
{
signed int v134;
unsigned short v135;
unsigned int v136;
unsigned short v137;
v134 = -1 + 0;
v135 = 4 + v126;
v136 = 5U + 7U;
v137 = v11 (v134, v135, v136);
history[history_index++] = (int)v137;
}
break;
case 12: 
return 0U;
default: abort ();
}
}
}
}
