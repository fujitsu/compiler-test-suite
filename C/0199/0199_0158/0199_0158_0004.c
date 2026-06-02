#include <stdlib.h>
extern signed short v3 (unsigned short);
extern signed short (*v4) (unsigned short);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern unsigned int v7 (signed char, signed char, unsigned char);
extern unsigned int (*v8) (signed char, signed char, unsigned char);
extern signed int v9 (unsigned char, signed char);
extern signed int (*v10) (unsigned char, signed char);
extern signed short v11 (unsigned short);
extern signed short (*v12) (unsigned short);
unsigned short v13 (unsigned int, unsigned char);
unsigned short (*v14) (unsigned int, unsigned char) = v13;
extern signed short v15 (unsigned int, signed char, signed short);
extern signed short (*v16) (unsigned int, signed char, signed short);
extern signed char v17 (unsigned char, signed int, unsigned int);
extern signed char (*v18) (unsigned char, signed int, unsigned int);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
unsigned int v25 (signed char, signed int, signed short, signed short);
unsigned int (*v26) (signed char, signed int, signed short, signed short) = v25;
extern unsigned int v27 (signed int, unsigned int, unsigned char, signed short);
extern unsigned int (*v28) (signed int, unsigned int, unsigned char, signed short);
extern void v29 (unsigned char, unsigned short, signed int, signed short);
extern void (*v30) (unsigned char, unsigned short, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v126 = 2;
unsigned int v125 = 2U;
unsigned char v124 = 5;

unsigned int v25 (signed char v127, signed int v128, signed short v129, signed short v130)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
unsigned int v133 = 5U;
signed int v132 = -2;
unsigned char v131 = 5;
trace++;
switch (trace)
{
case 4: 
return v133;
default: abort ();
}
}
}
}

unsigned short v13 (unsigned int v134, unsigned char v135)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
unsigned short v138 = 7;
unsigned short v137 = 7;
unsigned char v136 = 4;
trace++;
switch (trace)
{
case 8: 
return v137;
case 10: 
return 3;
default: abort ();
}
}
}
}
