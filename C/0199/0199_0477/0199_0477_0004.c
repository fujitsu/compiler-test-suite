#include <stdlib.h>
extern unsigned int v1 (unsigned short, unsigned int, unsigned char, unsigned short);
extern unsigned int (*v2) (unsigned short, unsigned int, unsigned char, unsigned short);
extern signed short v3 (unsigned int, signed char, unsigned short);
extern signed short (*v4) (unsigned int, signed char, unsigned short);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern unsigned int v7 (unsigned char, signed int);
extern unsigned int (*v8) (unsigned char, signed int);
extern signed short v9 (unsigned char, signed char, unsigned short);
extern signed short (*v10) (unsigned char, signed char, unsigned short);
extern signed short v11 (unsigned short, unsigned short);
extern signed short (*v12) (unsigned short, unsigned short);
extern signed int v13 (void);
extern signed int (*v14) (void);
signed short v15 (signed char, signed int, signed short, unsigned int);
signed short (*v16) (signed char, signed int, signed short, unsigned int) = v15;
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
signed short v19 (signed char, signed char);
signed short (*v20) (signed char, signed char) = v19;
extern unsigned short v21 (signed int);
extern unsigned short (*v22) (signed int);
signed char v23 (signed char, unsigned char, signed short);
signed char (*v24) (signed char, unsigned char, signed short) = v23;
extern signed char v25 (signed short, unsigned int);
extern signed char (*v26) (signed short, unsigned int);
signed int v27 (void);
signed int (*v28) (void) = v27;
extern void v29 (signed char, unsigned short);
extern void (*v30) (signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v117 = 3;
unsigned short v116 = 0;
unsigned char v115 = 5;

signed int v27 (void)
{
{
for (;;) {
unsigned int v120 = 7U;
unsigned int v119 = 7U;
unsigned short v118 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v23 (signed char v121, unsigned char v122, signed short v123)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
signed char v126 = 1;
signed short v125 = 1;
unsigned short v124 = 2;
trace++;
switch (trace)
{
case 3: 
return v121;
default: abort ();
}
}
}
}

signed short v19 (signed char v127, signed char v128)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
unsigned short v131 = 5;
unsigned char v130 = 4;
signed char v129 = -4;
trace++;
switch (trace)
{
case 7: 
return -3;
default: abort ();
}
}
}
}

signed short v15 (signed char v132, signed int v133, signed short v134, unsigned int v135)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
unsigned int v138 = 1U;
signed short v137 = -3;
signed short v136 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
