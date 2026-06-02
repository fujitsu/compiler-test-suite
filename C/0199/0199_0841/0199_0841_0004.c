#include <stdlib.h>
extern unsigned short v1 (unsigned char, signed short, unsigned int);
extern unsigned short (*v2) (unsigned char, signed short, unsigned int);
extern unsigned int v3 (signed short, unsigned char);
extern unsigned int (*v4) (signed short, unsigned char);
extern signed short v5 (unsigned char, signed char, unsigned short, unsigned int);
extern signed short (*v6) (unsigned char, signed char, unsigned short, unsigned int);
extern unsigned short v7 (unsigned short);
extern unsigned short (*v8) (unsigned short);
extern unsigned short v9 (signed char);
extern unsigned short (*v10) (signed char);
extern void v11 (signed char);
extern void (*v12) (signed char);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
unsigned char v17 (signed char, signed short);
unsigned char (*v18) (signed char, signed short) = v17;
extern unsigned short v19 (signed short, signed int, signed int);
extern unsigned short (*v20) (signed short, signed int, signed int);
extern signed char v21 (signed char, signed char);
extern signed char (*v22) (signed char, signed char);
extern unsigned short v23 (signed short, signed short);
extern unsigned short (*v24) (signed short, signed short);
unsigned int v25 (unsigned short, signed int, signed int);
unsigned int (*v26) (unsigned short, signed int, signed int) = v25;
unsigned int v27 (signed short);
unsigned int (*v28) (signed short) = v27;
extern unsigned int v29 (signed char, signed int, signed int, signed short);
extern unsigned int (*v30) (signed char, signed int, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v126 = 3;
signed short v125 = -2;
unsigned int v124 = 2U;

unsigned int v27 (signed short v127)
{
history[history_index++] = (int)v127;
{
for (;;) {
unsigned char v130 = 0;
unsigned int v129 = 5U;
signed char v128 = 1;
trace++;
switch (trace)
{
case 3: 
return 1U;
case 7: 
return v129;
case 11: 
return 1U;
default: abort ();
}
}
}
}

unsigned int v25 (unsigned short v131, signed int v132, signed int v133)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
unsigned char v136 = 1;
unsigned short v135 = 4;
unsigned short v134 = 4;
trace++;
switch (trace)
{
case 5: 
return 5U;
case 9: 
return 1U;
default: abort ();
}
}
}
}

unsigned char v17 (signed char v137, signed short v138)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
unsigned short v141 = 1;
unsigned char v140 = 4;
unsigned short v139 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
