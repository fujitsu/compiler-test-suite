#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed short v5 (unsigned short);
extern signed short (*v6) (unsigned short);
extern unsigned short v7 (signed char, signed int, unsigned char, unsigned short);
extern unsigned short (*v8) (signed char, signed int, unsigned char, unsigned short);
extern signed int v9 (unsigned int);
extern signed int (*v10) (unsigned int);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern signed short v13 (void);
extern signed short (*v14) (void);
signed int v17 (void);
signed int (*v18) (void) = v17;
extern signed int v19 (unsigned short, unsigned char);
extern signed int (*v20) (unsigned short, unsigned char);
extern signed int v21 (unsigned int, signed short);
extern signed int (*v22) (unsigned int, signed short);
extern unsigned int v23 (signed int);
extern unsigned int (*v24) (signed int);
extern unsigned int v25 (unsigned char, signed char);
extern unsigned int (*v26) (unsigned char, signed char);
extern signed short v27 (unsigned short, unsigned short);
extern signed short (*v28) (unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v125 = 3;
unsigned short v124 = 1;
signed int v123 = 3;

signed int v17 (void)
{
{
for (;;) {
signed short v128 = -4;
unsigned char v127 = 3;
signed short v126 = 1;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v129;
unsigned char v130;
signed int v131;
v129 = 6 - 1;
v130 = 7 + 5;
v131 = v19 (v129, v130);
history[history_index++] = (int)v131;
}
break;
case 15: 
return -1;
default: abort ();
}
}
}
}
