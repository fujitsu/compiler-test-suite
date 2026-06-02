#include <stdlib.h>
extern signed char v1 (unsigned int);
extern signed char (*v2) (unsigned int);
extern signed int v3 (signed short, signed char);
extern signed int (*v4) (signed short, signed char);
extern unsigned int v5 (signed short, signed short, unsigned char, unsigned short);
extern unsigned int (*v6) (signed short, signed short, unsigned char, unsigned short);
unsigned short v7 (signed short, signed char);
unsigned short (*v8) (signed short, signed char) = v7;
extern void v9 (signed int, unsigned int, signed int);
extern void (*v10) (signed int, unsigned int, signed int);
extern signed short v11 (unsigned short, unsigned short);
extern signed short (*v12) (unsigned short, unsigned short);
extern void v13 (signed short, signed int);
extern void (*v14) (signed short, signed int);
extern signed short v15 (unsigned char, signed int, signed int, signed char);
extern signed short (*v16) (unsigned char, signed int, signed int, signed char);
unsigned char v19 (void);
unsigned char (*v20) (void) = v19;
extern signed int v21 (signed short, signed int, unsigned char, unsigned short);
extern signed int (*v22) (signed short, signed int, unsigned char, unsigned short);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern signed int v27 (void);
extern signed int (*v28) (void);
signed int v29 (signed short, signed short, signed short, signed short);
signed int (*v30) (signed short, signed short, signed short, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v135 = 5U;
unsigned int v134 = 7U;
signed int v133 = -1;

signed int v29 (signed short v136, signed short v137, signed short v138, signed short v139)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
signed char v142 = -4;
signed char v141 = 0;
signed int v140 = 0;
trace++;
switch (trace)
{
case 1: 
return 3;
default: abort ();
}
}
}
}

unsigned char v19 (void)
{
{
for (;;) {
signed short v145 = -4;
signed char v144 = 2;
signed int v143 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed short v146, signed char v147)
{
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
{
for (;;) {
signed int v150 = -4;
signed char v149 = 2;
signed short v148 = -1;
trace++;
switch (trace)
{
case 5: 
return 6;
case 11: 
return 2;
default: abort ();
}
}
}
}
