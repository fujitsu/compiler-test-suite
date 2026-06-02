#include <stdlib.h>
extern unsigned char v3 (unsigned short, signed short, signed short);
extern unsigned char (*v4) (unsigned short, signed short, signed short);
extern signed int v5 (signed short, unsigned char, signed int, signed char);
extern signed int (*v6) (signed short, unsigned char, signed int, signed char);
extern signed short v7 (signed short);
extern signed short (*v8) (signed short);
extern signed char v9 (signed int);
extern signed char (*v10) (signed int);
unsigned char v11 (signed int, unsigned char, signed char);
unsigned char (*v12) (signed int, unsigned char, signed char) = v11;
extern unsigned short v13 (signed short, signed short);
extern unsigned short (*v14) (signed short, signed short);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern signed int v21 (unsigned short, signed int);
extern signed int (*v22) (unsigned short, signed int);
extern signed short v23 (signed int, signed int, unsigned short, signed int);
extern signed short (*v24) (signed int, signed int, unsigned short, signed int);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern signed short v29 (signed short, signed char);
extern signed short (*v30) (signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v125 = 0;
signed int v124 = -2;
signed char v123 = 0;

unsigned char v11 (signed int v126, unsigned char v127, signed char v128)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
unsigned int v131 = 0U;
unsigned int v130 = 6U;
signed int v129 = -4;
trace++;
switch (trace)
{
case 2: 
{
signed short v132;
signed short v133;
unsigned short v134;
v132 = 3 - -1;
v133 = -1 + 3;
v134 = v13 (v132, v133);
history[history_index++] = (int)v134;
}
break;
case 4: 
{
signed int v135;
v135 = v19 ();
history[history_index++] = (int)v135;
}
break;
case 8: 
return v127;
default: abort ();
}
}
}
}
