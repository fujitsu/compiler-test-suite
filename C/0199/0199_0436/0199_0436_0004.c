#include <stdlib.h>
extern signed short v3 (void);
extern signed short (*v4) (void);
unsigned short v5 (signed short);
unsigned short (*v6) (signed short) = v5;
extern signed short v9 (unsigned int, unsigned int, unsigned short);
extern signed short (*v10) (unsigned int, unsigned int, unsigned short);
signed short v11 (unsigned int, unsigned char, signed short, unsigned int);
signed short (*v12) (unsigned int, unsigned char, signed short, unsigned int) = v11;
extern unsigned char v13 (unsigned short, unsigned char, unsigned char);
extern unsigned char (*v14) (unsigned short, unsigned char, unsigned char);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern void v19 (signed char, signed short, signed short);
extern void (*v20) (signed char, signed short, signed short);
extern signed int v21 (signed short, signed char, unsigned short);
extern signed int (*v22) (signed short, signed char, unsigned short);
extern void v23 (signed char, signed char, unsigned short);
extern void (*v24) (signed char, signed char, unsigned short);
extern signed short v25 (unsigned int, unsigned char, unsigned short, unsigned short);
extern signed short (*v26) (unsigned int, unsigned char, unsigned short, unsigned short);
unsigned char v27 (signed short);
unsigned char (*v28) (signed short) = v27;
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v118 = 1;
unsigned int v117 = 2U;
unsigned char v116 = 0;

unsigned char v27 (signed short v119)
{
history[history_index++] = (int)v119;
{
for (;;) {
signed char v122 = 0;
unsigned int v121 = 7U;
unsigned int v120 = 2U;
trace++;
switch (trace)
{
case 11: 
return 5;
default: abort ();
}
}
}
}

signed short v11 (unsigned int v123, unsigned char v124, signed short v125, unsigned int v126)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
signed int v129 = 0;
unsigned short v128 = 2;
signed short v127 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (signed short v130)
{
history[history_index++] = (int)v130;
{
for (;;) {
signed short v133 = -2;
signed int v132 = 1;
signed short v131 = 0;
trace++;
switch (trace)
{
case 3: 
{
unsigned int v134;
v134 = v15 ();
history[history_index++] = (int)v134;
}
break;
case 5: 
{
unsigned int v135;
v135 = v15 ();
history[history_index++] = (int)v135;
}
break;
case 7: 
{
signed short v136;
v136 = v3 ();
history[history_index++] = (int)v136;
}
break;
case 13: 
return 5;
default: abort ();
}
}
}
}
