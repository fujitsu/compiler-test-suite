#include <stdlib.h>
extern signed short v3 (unsigned short, unsigned int);
extern signed short (*v4) (unsigned short, unsigned int);
extern unsigned short v5 (signed int);
extern unsigned short (*v6) (signed int);
unsigned char v9 (unsigned char, signed short);
unsigned char (*v10) (unsigned char, signed short) = v9;
signed int v11 (signed char, signed char, unsigned short, signed char);
signed int (*v12) (signed char, signed char, unsigned short, signed char) = v11;
extern void v13 (unsigned char, unsigned short, unsigned int, signed char);
extern void (*v14) (unsigned char, unsigned short, unsigned int, signed char);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern unsigned int v17 (signed int, signed int, unsigned int);
extern unsigned int (*v18) (signed int, signed int, unsigned int);
extern unsigned int v19 (unsigned int);
extern unsigned int (*v20) (unsigned int);
extern signed int v23 (signed char, signed int, unsigned int, signed int);
extern signed int (*v24) (signed char, signed int, unsigned int, signed int);
signed char v25 (unsigned int, signed int, signed int, signed short);
signed char (*v26) (unsigned int, signed int, signed int, signed short) = v25;
extern signed short v27 (void);
extern signed short (*v28) (void);
extern unsigned short v29 (unsigned int);
extern unsigned short (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v125 = 0;
signed char v124 = -4;
signed char v123 = -2;

signed char v25 (unsigned int v126, signed int v127, signed int v128, signed short v129)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned int v132 = 7U;
unsigned short v131 = 7;
unsigned char v130 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (signed char v133, signed char v134, unsigned short v135, signed char v136)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
signed int v139 = 3;
signed char v138 = -1;
unsigned int v137 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (unsigned char v140, signed short v141)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
unsigned int v144 = 4U;
signed int v143 = 1;
signed int v142 = -4;
trace++;
switch (trace)
{
case 8: 
return 5;
default: abort ();
}
}
}
}
