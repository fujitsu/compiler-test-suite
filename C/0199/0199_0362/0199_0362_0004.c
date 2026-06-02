#include <stdlib.h>
extern signed char v1 (signed char, signed short, unsigned int, unsigned char);
extern signed char (*v2) (signed char, signed short, unsigned int, unsigned char);
extern unsigned int v3 (signed short, unsigned int);
extern unsigned int (*v4) (signed short, unsigned int);
extern void v5 (unsigned int);
extern void (*v6) (unsigned int);
extern unsigned char v7 (signed int, unsigned char);
extern unsigned char (*v8) (signed int, unsigned char);
extern signed short v9 (unsigned int, unsigned char, signed char);
extern signed short (*v10) (unsigned int, unsigned char, signed char);
extern signed int v11 (signed short);
extern signed int (*v12) (signed short);
unsigned int v13 (signed int, signed char);
unsigned int (*v14) (signed int, signed char) = v13;
unsigned int v15 (unsigned int, signed char, signed int, unsigned int);
unsigned int (*v16) (unsigned int, signed char, signed int, unsigned int) = v15;
extern void v19 (void);
extern void (*v20) (void);
extern unsigned char v21 (unsigned char, unsigned short);
extern unsigned char (*v22) (unsigned char, unsigned short);
extern signed short v23 (unsigned int, unsigned int, signed short, unsigned short);
extern signed short (*v24) (unsigned int, unsigned int, signed short, unsigned short);
extern unsigned char v25 (unsigned char, signed short);
extern unsigned char (*v26) (unsigned char, signed short);
extern signed int v27 (unsigned int);
extern signed int (*v28) (unsigned int);
signed char v29 (unsigned short);
signed char (*v30) (unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v128 = 2;
unsigned int v127 = 3U;
unsigned char v126 = 0;

signed char v29 (unsigned short v129)
{
history[history_index++] = (int)v129;
{
for (;;) {
unsigned int v132 = 1U;
signed char v131 = -4;
signed int v130 = -3;
trace++;
switch (trace)
{
case 6: 
return v131;
case 8: 
return v131;
case 10: 
return v131;
default: abort ();
}
}
}
}

unsigned int v15 (unsigned int v133, signed char v134, signed int v135, unsigned int v136)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
unsigned short v139 = 3;
signed char v138 = 2;
signed int v137 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (signed int v140, signed char v141)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
unsigned char v144 = 5;
unsigned int v143 = 5U;
signed short v142 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
