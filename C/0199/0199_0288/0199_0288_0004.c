#include <stdlib.h>
extern signed short v1 (signed int, signed short, signed char);
extern signed short (*v2) (signed int, signed short, signed char);
extern unsigned char v3 (signed short, signed int);
extern unsigned char (*v4) (signed short, signed int);
extern signed char v5 (unsigned char, signed short);
extern signed char (*v6) (unsigned char, signed short);
extern signed int v7 (signed char, unsigned short, signed int);
extern signed int (*v8) (signed char, unsigned short, signed int);
extern unsigned short v9 (signed char, signed int, signed int);
extern unsigned short (*v10) (signed char, signed int, signed int);
extern signed short v11 (signed int, unsigned char, unsigned char);
extern signed short (*v12) (signed int, unsigned char, unsigned char);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern signed short v15 (void);
extern signed short (*v16) (void);
signed char v17 (unsigned char);
signed char (*v18) (unsigned char) = v17;
extern void v19 (signed short, signed short, signed short);
extern void (*v20) (signed short, signed short, signed short);
extern void v21 (signed char, unsigned int);
extern void (*v22) (signed char, unsigned int);
extern signed int v25 (void);
extern signed int (*v26) (void);
signed int v27 (signed char, signed char, unsigned char, unsigned short);
signed int (*v28) (signed char, signed char, unsigned char, unsigned short) = v27;
extern unsigned short v29 (unsigned int);
extern unsigned short (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v131 = 0;
unsigned int v130 = 1U;
signed int v129 = -1;

signed int v27 (signed char v132, signed char v133, unsigned char v134, unsigned short v135)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
unsigned int v138 = 4U;
unsigned char v137 = 0;
signed char v136 = 2;
trace++;
switch (trace)
{
case 7: 
return -3;
case 9: 
return 0;
default: abort ();
}
}
}
}

signed char v17 (unsigned char v139)
{
history[history_index++] = (int)v139;
{
for (;;) {
signed char v142 = -1;
signed int v141 = -3;
signed char v140 = 1;
trace++;
switch (trace)
{
case 1: 
return 0;
default: abort ();
}
}
}
}
