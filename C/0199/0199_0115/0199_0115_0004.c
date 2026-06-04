#include <stdlib.h>
extern signed char v1 (unsigned int, unsigned int, unsigned char);
extern signed char (*v2) (unsigned int, unsigned int, unsigned char);
extern void v3 (unsigned short);
extern void (*v4) (unsigned short);
extern void v5 (signed char);
extern void (*v6) (signed char);
extern signed short v7 (unsigned short, signed short, unsigned int);
extern signed short (*v8) (unsigned short, signed short, unsigned int);
extern signed char v9 (unsigned int);
extern signed char (*v10) (unsigned int);
extern unsigned short v11 (unsigned int, signed char);
extern unsigned short (*v12) (unsigned int, signed char);
extern unsigned int v13 (unsigned int);
extern unsigned int (*v14) (unsigned int);
extern signed int v15 (signed char);
extern signed int (*v16) (signed char);
unsigned int v17 (signed int, unsigned char, signed int, unsigned int);
unsigned int (*v18) (signed int, unsigned char, signed int, unsigned int) = v17;
extern unsigned char v19 (signed short, unsigned char, signed short);
extern unsigned char (*v20) (signed short, unsigned char, signed short);
signed int v21 (signed short, signed int);
signed int (*v22) (signed short, signed int) = v21;
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern signed int v25 (signed int, signed int, signed char, signed short);
extern signed int (*v26) (signed int, signed int, signed char, signed short);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern signed int v29 (unsigned int, signed int);
extern signed int (*v30) (unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v131 = 4U;
signed short v130 = -2;
unsigned short v129 = 0;

signed int v21 (signed short v132, signed int v133)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
signed int v136 = 2;
unsigned int v135 = 6U;
signed int v134 = -1;
trace++;
switch (trace)
{
case 3: 
return v134;
default: abort ();
}
}
}
}

unsigned int v17 (signed int v137, unsigned char v138, signed int v139, unsigned int v140)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
signed int v143 = -1;
signed int v142 = -3;
signed int v141 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
