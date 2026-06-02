#include <stdlib.h>
extern signed short v1 (signed char, unsigned short, signed short, unsigned int);
extern signed short (*v2) (signed char, unsigned short, signed short, unsigned int);
extern signed char v3 (unsigned int);
extern signed char (*v4) (unsigned int);
unsigned short v5 (signed char, signed char);
unsigned short (*v6) (signed char, signed char) = v5;
extern signed char v9 (unsigned int, unsigned int);
extern signed char (*v10) (unsigned int, unsigned int);
extern signed int v11 (unsigned char, signed char, unsigned char);
extern signed int (*v12) (unsigned char, signed char, unsigned char);
signed char v13 (signed short, unsigned short, signed int, unsigned int);
signed char (*v14) (signed short, unsigned short, signed int, unsigned int) = v13;
extern void v15 (void);
extern void (*v16) (void);
extern signed char v17 (signed int, unsigned int, signed char);
extern signed char (*v18) (signed int, unsigned int, signed char);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern unsigned short v21 (signed char);
extern unsigned short (*v22) (signed char);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern signed int v27 (signed int, signed int, unsigned char, signed int);
extern signed int (*v28) (signed int, signed int, unsigned char, signed int);
signed int v29 (void);
signed int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v128 = 1;
unsigned char v127 = 6;
unsigned short v126 = 4;

signed int v29 (void)
{
{
for (;;) {
signed int v131 = 3;
signed int v130 = -4;
signed char v129 = 1;
trace++;
switch (trace)
{
case 2: 
return v130;
case 4: 
return v130;
case 6: 
return v131;
case 8: 
return v130;
default: abort ();
}
}
}
}

signed char v13 (signed short v132, unsigned short v133, signed int v134, unsigned int v135)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
unsigned int v138 = 3U;
unsigned short v137 = 3;
unsigned char v136 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (signed char v139, signed char v140)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
signed char v143 = 2;
signed short v142 = 0;
signed short v141 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
