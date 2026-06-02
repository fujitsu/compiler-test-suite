#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern signed int v5 (signed short, signed char, signed char, signed short);
extern signed int (*v6) (signed short, signed char, signed char, signed short);
extern unsigned int v7 (unsigned int, signed short);
extern unsigned int (*v8) (unsigned int, signed short);
void v9 (unsigned int, unsigned short);
void (*v10) (unsigned int, unsigned short) = v9;
extern signed char v11 (unsigned int);
extern signed char (*v12) (unsigned int);
extern void v13 (unsigned char);
extern void (*v14) (unsigned char);
extern unsigned int v15 (unsigned int);
extern unsigned int (*v16) (unsigned int);
unsigned char v17 (unsigned char, signed int, signed char, signed char);
unsigned char (*v18) (unsigned char, signed int, signed char, signed char) = v17;
extern signed int v19 (signed char);
extern signed int (*v20) (signed char);
extern unsigned int v21 (unsigned char, signed int);
extern unsigned int (*v22) (unsigned char, signed int);
extern unsigned char v23 (signed char, signed short);
extern unsigned char (*v24) (signed char, signed short);
extern signed char v25 (unsigned int, signed char, signed char);
extern signed char (*v26) (unsigned int, signed char, signed char);
extern signed int v27 (void);
extern signed int (*v28) (void);
signed char v29 (unsigned int, signed short, unsigned char, signed short);
signed char (*v30) (unsigned int, signed short, unsigned char, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v116 = 2U;
signed int v115 = -4;
signed int v114 = 0;

signed char v29 (unsigned int v117, signed short v118, unsigned char v119, signed short v120)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
signed char v123 = -3;
signed int v122 = -1;
unsigned short v121 = 7;
trace++;
switch (trace)
{
case 2: 
return v123;
case 4: 
return v123;
default: abort ();
}
}
}
}

unsigned char v17 (unsigned char v124, signed int v125, signed char v126, signed char v127)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
signed char v130 = 0;
unsigned int v129 = 4U;
signed short v128 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (unsigned int v131, unsigned short v132)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
unsigned short v135 = 7;
unsigned char v134 = 6;
unsigned short v133 = 3;
trace++;
switch (trace)
{
case 9: 
{
signed int v136;
v136 = v27 ();
history[history_index++] = (int)v136;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}
