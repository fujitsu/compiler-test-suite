#include <stdlib.h>
extern unsigned short v1 (signed int, unsigned char, signed short);
extern unsigned short (*v2) (signed int, unsigned char, signed short);
extern signed int v3 (signed char);
extern signed int (*v4) (signed char);
extern unsigned int v5 (unsigned int, unsigned int, signed short, signed int);
extern unsigned int (*v6) (unsigned int, unsigned int, signed short, signed int);
extern signed short v7 (unsigned short);
extern signed short (*v8) (unsigned short);
extern void v9 (unsigned short, signed short, signed short);
extern void (*v10) (unsigned short, signed short, signed short);
extern void v11 (signed short);
extern void (*v12) (signed short);
signed short v13 (unsigned short, unsigned int);
signed short (*v14) (unsigned short, unsigned int) = v13;
extern signed short v15 (signed short);
extern signed short (*v16) (signed short);
signed char v17 (signed char, signed char);
signed char (*v18) (signed char, signed char) = v17;
extern void v19 (unsigned int, signed int, unsigned int, signed char);
extern void (*v20) (unsigned int, signed int, unsigned int, signed char);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern signed char v23 (void);
extern signed char (*v24) (void);
extern signed int v25 (unsigned int);
extern signed int (*v26) (unsigned int);
extern unsigned char v29 (unsigned int);
extern unsigned char (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v130 = 7U;
signed int v129 = -1;
signed short v128 = -1;

signed char v17 (signed char v131, signed char v132)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
unsigned int v135 = 7U;
unsigned char v134 = 0;
unsigned int v133 = 5U;
trace++;
switch (trace)
{
case 9: 
{
signed char v136;
v136 = v23 ();
history[history_index++] = (int)v136;
}
break;
case 13: 
return -3;
default: abort ();
}
}
}
}

signed short v13 (unsigned short v137, unsigned int v138)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
unsigned char v141 = 3;
signed int v140 = -1;
signed short v139 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
