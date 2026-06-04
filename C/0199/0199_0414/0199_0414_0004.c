#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern signed int v3 (unsigned short, signed int, signed char, unsigned char);
extern signed int (*v4) (unsigned short, signed int, signed char, unsigned char);
unsigned short v5 (unsigned short, signed int);
unsigned short (*v6) (unsigned short, signed int) = v5;
extern signed int v7 (unsigned char, signed int, signed int, unsigned int);
extern signed int (*v8) (unsigned char, signed int, signed int, unsigned int);
extern signed char v9 (unsigned int);
extern signed char (*v10) (unsigned int);
extern unsigned int v11 (unsigned int, signed short, signed short);
extern unsigned int (*v12) (unsigned int, signed short, signed short);
extern unsigned char v13 (signed char);
extern unsigned char (*v14) (signed char);
extern signed int v15 (void);
extern signed int (*v16) (void);
signed short v17 (unsigned int, signed short, signed short, signed short);
signed short (*v18) (unsigned int, signed short, signed short, signed short) = v17;
extern unsigned int v19 (unsigned short, unsigned short, signed short, unsigned int);
extern unsigned int (*v20) (unsigned short, unsigned short, signed short, unsigned int);
unsigned char v21 (signed char, unsigned int, unsigned int, signed char);
unsigned char (*v22) (signed char, unsigned int, unsigned int, signed char) = v21;
extern signed int v23 (signed int);
extern signed int (*v24) (signed int);
extern unsigned short v25 (unsigned int);
extern unsigned short (*v26) (unsigned int);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v131 = -2;
unsigned short v130 = 2;
unsigned char v129 = 2;

unsigned char v21 (signed char v132, unsigned int v133, unsigned int v134, signed char v135)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
signed int v138 = -1;
signed int v137 = 0;
signed int v136 = 2;
trace++;
switch (trace)
{
case 2: 
return 4;
case 4: 
return 2;
case 9: 
return 5;
case 11: 
return 2;
default: abort ();
}
}
}
}

signed short v17 (unsigned int v139, signed short v140, signed short v141, signed short v142)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
unsigned int v145 = 6U;
signed char v144 = 1;
unsigned short v143 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (unsigned short v146, signed int v147)
{
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
{
for (;;) {
unsigned int v150 = 1U;
unsigned int v149 = 1U;
signed short v148 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
