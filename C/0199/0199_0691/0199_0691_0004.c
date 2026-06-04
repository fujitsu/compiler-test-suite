#include <stdlib.h>
extern unsigned short v3 (signed char, signed int, unsigned int, signed short);
extern unsigned short (*v4) (signed char, signed int, unsigned int, signed short);
extern void v5 (void);
extern void (*v6) (void);
extern signed short v7 (void);
extern signed short (*v8) (void);
unsigned char v9 (signed char);
unsigned char (*v10) (signed char) = v9;
signed char v11 (void);
signed char (*v12) (void) = v11;
extern unsigned char v13 (unsigned int, signed short, unsigned char);
extern unsigned char (*v14) (unsigned int, signed short, unsigned char);
extern signed short v17 (unsigned short, unsigned char, signed char, signed short);
extern signed short (*v18) (unsigned short, unsigned char, signed char, signed short);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern unsigned short v21 (signed short);
extern unsigned short (*v22) (signed short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern void v27 (signed short, unsigned int, unsigned short, unsigned short);
extern void (*v28) (signed short, unsigned int, unsigned short, unsigned short);
extern signed char v29 (unsigned char, unsigned short, unsigned int);
extern signed char (*v30) (unsigned char, unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v116 = -4;
unsigned int v115 = 7U;
unsigned int v114 = 0U;

signed char v11 (void)
{
{
for (;;) {
unsigned char v119 = 5;
unsigned short v118 = 0;
signed char v117 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (signed char v120)
{
history[history_index++] = (int)v120;
{
for (;;) {
signed int v123 = 2;
unsigned char v122 = 5;
signed char v121 = 0;
trace++;
switch (trace)
{
case 7: 
{
unsigned char v124;
v124 = v19 ();
history[history_index++] = (int)v124;
}
break;
case 9: 
{
unsigned char v125;
unsigned short v126;
unsigned int v127;
signed char v128;
v125 = 4 + 3;
v126 = 7 - 7;
v127 = 1U - 7U;
v128 = v29 (v125, v126, v127);
history[history_index++] = (int)v128;
}
break;
case 11: 
return 2;
default: abort ();
}
}
}
}
