#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern signed int v3 (signed short, signed int, signed short, unsigned short);
extern signed int (*v4) (signed short, signed int, signed short, unsigned short);
signed int v5 (signed int, signed short, signed short);
signed int (*v6) (signed int, signed short, signed short) = v5;
extern unsigned char v7 (signed int, signed char, signed short, unsigned char);
extern unsigned char (*v8) (signed int, signed char, signed short, unsigned char);
extern unsigned int v9 (signed short, signed int, unsigned int);
extern unsigned int (*v10) (signed short, signed int, unsigned int);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern unsigned short v13 (signed short, unsigned int, unsigned int, signed short);
extern unsigned short (*v14) (signed short, unsigned int, unsigned int, signed short);
extern unsigned char v15 (unsigned char);
extern unsigned char (*v16) (unsigned char);
extern signed int v17 (signed short, unsigned short, unsigned int, unsigned short);
extern signed int (*v18) (signed short, unsigned short, unsigned int, unsigned short);
unsigned char v19 (void);
unsigned char (*v20) (void) = v19;
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern unsigned char v23 (unsigned int, signed int, unsigned char, unsigned char);
extern unsigned char (*v24) (unsigned int, signed int, unsigned char, unsigned char);
extern unsigned short v25 (unsigned short, unsigned char);
extern unsigned short (*v26) (unsigned short, unsigned char);
extern unsigned char v27 (unsigned int, signed int);
extern unsigned char (*v28) (unsigned int, signed int);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v123 = 3;
signed short v122 = 3;
unsigned char v121 = 7;

unsigned char v19 (void)
{
{
for (;;) {
signed short v126 = 3;
unsigned char v125 = 7;
signed char v124 = -2;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v127;
v127 = v29 ();
history[history_index++] = (int)v127;
}
break;
case 3: 
{
unsigned short v128;
v128 = v29 ();
history[history_index++] = (int)v128;
}
break;
case 5: 
{
unsigned short v129;
v129 = v29 ();
history[history_index++] = (int)v129;
}
break;
case 7: 
return 6;
default: abort ();
}
}
}
}

signed int v5 (signed int v130, signed short v131, signed short v132)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
unsigned char v135 = 2;
unsigned short v134 = 4;
signed char v133 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
