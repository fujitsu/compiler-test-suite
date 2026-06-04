#include <stdlib.h>
extern unsigned int v3 (signed char, unsigned char, unsigned short);
extern unsigned int (*v4) (signed char, unsigned char, unsigned short);
extern unsigned short v5 (unsigned char, unsigned short, signed short);
extern unsigned short (*v6) (unsigned char, unsigned short, signed short);
extern unsigned int v7 (unsigned char, signed char, unsigned int);
extern unsigned int (*v8) (unsigned char, signed char, unsigned int);
void v9 (unsigned int, unsigned char, signed char, unsigned char);
void (*v10) (unsigned int, unsigned char, signed char, unsigned char) = v9;
extern void v11 (signed char);
extern void (*v12) (signed char);
signed short v13 (void);
signed short (*v14) (void) = v13;
extern signed int v15 (unsigned char, unsigned int);
extern signed int (*v16) (unsigned char, unsigned int);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern signed char v21 (unsigned char);
extern signed char (*v22) (unsigned char);
extern signed int v23 (unsigned int);
extern signed int (*v24) (unsigned int);
extern void v27 (signed int);
extern void (*v28) (signed int);
extern unsigned int v29 (unsigned char, signed short);
extern unsigned int (*v30) (unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v123 = 4U;
unsigned short v122 = 6;
signed short v121 = -4;

signed short v13 (void)
{
{
for (;;) {
signed int v126 = -1;
unsigned short v125 = 2;
unsigned char v124 = 1;
trace++;
switch (trace)
{
case 2: 
{
signed int v127;
v127 = v17 ();
history[history_index++] = (int)v127;
}
break;
case 4: 
{
signed int v128;
v128 = v17 ();
history[history_index++] = (int)v128;
}
break;
case 8: 
{
signed int v129;
v129 = v126 + v126;
v27 (v129);
}
break;
case 10: 
return -1;
default: abort ();
}
}
}
}

void v9 (unsigned int v130, unsigned char v131, signed char v132, unsigned char v133)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
signed int v136 = 1;
signed short v135 = -1;
unsigned short v134 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
