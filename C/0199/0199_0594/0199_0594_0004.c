#include <stdlib.h>
extern signed int v3 (unsigned int, unsigned short, unsigned char);
extern signed int (*v4) (unsigned int, unsigned short, unsigned char);
signed short v5 (void);
signed short (*v6) (void) = v5;
extern signed short v7 (void);
extern signed short (*v8) (void);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
unsigned short v13 (signed int, unsigned short);
unsigned short (*v14) (signed int, unsigned short) = v13;
extern void v15 (unsigned int, unsigned char, unsigned int, signed int);
extern void (*v16) (unsigned int, unsigned char, unsigned int, signed int);
extern unsigned char v17 (signed short);
extern unsigned char (*v18) (signed short);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern unsigned int v21 (unsigned short, unsigned char, unsigned int);
extern unsigned int (*v22) (unsigned short, unsigned char, unsigned int);
extern unsigned short v23 (unsigned char, signed short);
extern unsigned short (*v24) (unsigned char, signed short);
unsigned int v25 (signed char);
unsigned int (*v26) (signed char) = v25;
extern signed short v27 (unsigned short, signed int, signed int);
extern signed short (*v28) (unsigned short, signed int, signed int);
extern unsigned short v29 (unsigned int, signed short, signed int);
extern unsigned short (*v30) (unsigned int, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v127 = 1;
signed short v126 = -3;
signed int v125 = 0;

unsigned int v25 (signed char v128)
{
history[history_index++] = (int)v128;
{
for (;;) {
unsigned short v131 = 6;
signed short v130 = 1;
unsigned char v129 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (signed int v132, unsigned short v133)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
signed char v136 = -1;
signed short v135 = 3;
unsigned int v134 = 5U;
trace++;
switch (trace)
{
case 9: 
return 0;
default: abort ();
}
}
}
}

signed short v5 (void)
{
{
for (;;) {
signed int v139 = -4;
signed char v138 = -1;
signed short v137 = 2;
trace++;
switch (trace)
{
case 1: 
return v137;
case 4: 
return v137;
default: abort ();
}
}
}
}
