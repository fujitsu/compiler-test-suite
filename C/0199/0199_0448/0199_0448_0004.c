#include <stdlib.h>
extern unsigned int v3 (signed int, unsigned int, unsigned int, unsigned int);
extern unsigned int (*v4) (signed int, unsigned int, unsigned int, unsigned int);
unsigned char v5 (unsigned char, signed int, unsigned int);
unsigned char (*v6) (unsigned char, signed int, unsigned int) = v5;
extern void v7 (unsigned short, signed short);
extern void (*v8) (unsigned short, signed short);
extern signed int v11 (signed int, unsigned int, signed int, unsigned short);
extern signed int (*v12) (signed int, unsigned int, signed int, unsigned short);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern unsigned int v15 (unsigned short, signed int);
extern unsigned int (*v16) (unsigned short, signed int);
void v17 (signed short, signed char, unsigned short, unsigned int);
void (*v18) (signed short, signed char, unsigned short, unsigned int) = v17;
extern signed short v19 (unsigned char, signed int, unsigned short);
extern signed short (*v20) (unsigned char, signed int, unsigned short);
extern signed int v21 (signed char);
extern signed int (*v22) (signed char);
extern void v23 (signed short, unsigned short, signed int);
extern void (*v24) (signed short, unsigned short, signed int);
extern signed char v25 (signed char, signed int);
extern signed char (*v26) (signed char, signed int);
signed short v27 (void);
signed short (*v28) (void) = v27;
extern signed char v29 (unsigned int, unsigned short, signed char, signed int);
extern signed char (*v30) (unsigned int, unsigned short, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v122 = 3;
signed char v121 = 2;
signed int v120 = -2;

signed short v27 (void)
{
{
for (;;) {
signed short v125 = 2;
unsigned int v124 = 2U;
signed int v123 = 0;
trace++;
switch (trace)
{
case 5: 
return -3;
case 7: 
return v125;
case 10: 
return 0;
default: abort ();
}
}
}
}

void v17 (signed short v126, signed char v127, unsigned short v128, unsigned int v129)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned int v132 = 1U;
signed char v131 = -3;
signed int v130 = -4;
trace++;
switch (trace)
{
case 4: 
{
signed short v133;
v133 = v27 ();
history[history_index++] = (int)v133;
}
break;
case 6: 
{
signed short v134;
v134 = v27 ();
history[history_index++] = (int)v134;
}
break;
case 8: 
return;
default: abort ();
}
}
}
}

unsigned char v5 (unsigned char v135, signed int v136, unsigned int v137)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed char v140 = 0;
signed short v139 = 2;
unsigned char v138 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
