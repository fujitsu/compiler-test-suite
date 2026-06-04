#include <stdlib.h>
extern signed short v1 (unsigned short);
extern signed short (*v2) (unsigned short);
extern unsigned short v3 (signed int);
extern unsigned short (*v4) (signed int);
extern void v5 (unsigned int, signed short, signed short, unsigned short);
extern void (*v6) (unsigned int, signed short, signed short, unsigned short);
extern unsigned int v7 (unsigned short, signed int);
extern unsigned int (*v8) (unsigned short, signed int);
signed short v9 (unsigned int, unsigned int, unsigned char, signed short);
signed short (*v10) (unsigned int, unsigned int, unsigned char, signed short) = v9;
extern unsigned int v11 (unsigned short, unsigned int);
extern unsigned int (*v12) (unsigned short, unsigned int);
extern signed short v13 (signed int, unsigned int, signed char, unsigned short);
extern signed short (*v14) (signed int, unsigned int, signed char, unsigned short);
signed short v15 (signed short, signed int, unsigned int, signed short);
signed short (*v16) (signed short, signed int, unsigned int, signed short) = v15;
extern unsigned char v17 (unsigned short, signed int, unsigned short, signed short);
extern unsigned char (*v18) (unsigned short, signed int, unsigned short, signed short);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern unsigned int v21 (signed short, unsigned char);
extern unsigned int (*v22) (signed short, unsigned char);
unsigned short v23 (void);
unsigned short (*v24) (void) = v23;
extern unsigned char v25 (unsigned short, signed char, unsigned char);
extern unsigned char (*v26) (unsigned short, signed char, unsigned char);
extern unsigned char v27 (unsigned int, signed short, signed short, unsigned int);
extern unsigned char (*v28) (unsigned int, signed short, signed short, unsigned int);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v129 = 2;
signed short v128 = 1;
unsigned int v127 = 6U;

unsigned short v23 (void)
{
{
for (;;) {
unsigned short v132 = 2;
signed short v131 = 2;
signed short v130 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (signed short v133, signed int v134, unsigned int v135, signed short v136)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
unsigned int v139 = 6U;
unsigned short v138 = 4;
signed int v137 = 0;
trace++;
switch (trace)
{
case 5: 
return v133;
default: abort ();
}
}
}
}

signed short v9 (unsigned int v140, unsigned int v141, unsigned char v142, signed short v143)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
unsigned int v146 = 6U;
signed short v145 = -1;
signed short v144 = 2;
trace++;
switch (trace)
{
case 9: 
return 3;
default: abort ();
}
}
}
}
