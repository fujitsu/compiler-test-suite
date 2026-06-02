#include <stdlib.h>
extern signed char v1 (unsigned short, unsigned char, signed int, unsigned short);
extern signed char (*v2) (unsigned short, unsigned char, signed int, unsigned short);
signed char v3 (signed int);
signed char (*v4) (signed int) = v3;
extern signed char v5 (signed int, unsigned char);
extern signed char (*v6) (signed int, unsigned char);
extern signed short v7 (unsigned short, signed char, unsigned short);
extern signed short (*v8) (unsigned short, signed char, unsigned short);
extern unsigned char v9 (unsigned char, signed short, signed int);
extern unsigned char (*v10) (unsigned char, signed short, signed int);
extern signed short v11 (signed short);
extern signed short (*v12) (signed short);
extern signed int v13 (unsigned int, signed short, unsigned short, unsigned int);
extern signed int (*v14) (unsigned int, signed short, unsigned short, unsigned int);
signed char v15 (unsigned char, unsigned int);
signed char (*v16) (unsigned char, unsigned int) = v15;
extern unsigned short v17 (unsigned int, unsigned int, unsigned char);
extern unsigned short (*v18) (unsigned int, unsigned int, unsigned char);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern unsigned char v21 (signed int);
extern unsigned char (*v22) (signed int);
extern signed char v23 (void);
extern signed char (*v24) (void);
extern unsigned char v25 (signed int, signed int, signed short);
extern unsigned char (*v26) (signed int, signed int, signed short);
signed int v27 (signed char);
signed int (*v28) (signed char) = v27;
signed int v29 (signed char, signed int, signed short);
signed int (*v30) (signed char, signed int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v127 = 2;
unsigned short v126 = 3;
unsigned char v125 = 4;

signed int v29 (signed char v128, signed int v129, signed short v130)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
signed short v133 = 1;
unsigned char v132 = 5;
unsigned int v131 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v27 (signed char v134)
{
history[history_index++] = (int)v134;
{
for (;;) {
unsigned int v137 = 3U;
unsigned int v136 = 4U;
signed char v135 = -1;
trace++;
switch (trace)
{
case 6: 
return -2;
case 10: 
return 1;
default: abort ();
}
}
}
}

signed char v15 (unsigned char v138, unsigned int v139)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
unsigned short v142 = 2;
unsigned char v141 = 1;
unsigned int v140 = 2U;
trace++;
switch (trace)
{
case 1: 
return -4;
case 8: 
return 3;
default: abort ();
}
}
}
}

signed char v3 (signed int v143)
{
history[history_index++] = (int)v143;
{
for (;;) {
signed short v146 = -4;
unsigned short v145 = 0;
signed char v144 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
