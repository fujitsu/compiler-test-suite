#include <stdlib.h>
extern signed int v1 (unsigned char, unsigned short, signed int, unsigned short);
extern signed int (*v2) (unsigned char, unsigned short, signed int, unsigned short);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern unsigned int v5 (unsigned short, signed char, unsigned short);
extern unsigned int (*v6) (unsigned short, signed char, unsigned short);
extern signed short v7 (unsigned short);
extern signed short (*v8) (unsigned short);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed int v11 (signed int, unsigned short, unsigned short);
extern signed int (*v12) (signed int, unsigned short, unsigned short);
extern signed char v13 (unsigned int);
extern signed char (*v14) (unsigned int);
extern signed int v15 (unsigned char, signed int);
extern signed int (*v16) (unsigned char, signed int);
extern void v17 (signed short, signed int, signed short, signed int);
extern void (*v18) (signed short, signed int, signed short, signed int);
signed char v19 (void);
signed char (*v20) (void) = v19;
extern signed char v21 (unsigned int, unsigned int, signed char, unsigned char);
extern signed char (*v22) (unsigned int, unsigned int, signed char, unsigned char);
signed int v23 (unsigned char, signed short);
signed int (*v24) (unsigned char, signed short) = v23;
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern unsigned int v27 (signed int, unsigned char);
extern unsigned int (*v28) (signed int, unsigned char);
extern signed char v29 (unsigned short, unsigned char);
extern signed char (*v30) (unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v139 = 0U;
signed short v138 = 3;
signed short v137 = -1;

signed int v23 (unsigned char v140, signed short v141)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
signed int v144 = 2;
unsigned short v143 = 0;
signed char v142 = -3;
trace++;
switch (trace)
{
case 9: 
{
signed int v145;
unsigned char v146;
unsigned int v147;
v145 = -1 + 0;
v146 = 6 - 0;
v147 = v27 (v145, v146);
history[history_index++] = (int)v147;
}
break;
case 11: 
return v144;
default: abort ();
}
}
}
}

signed char v19 (void)
{
{
for (;;) {
signed char v150 = -2;
signed short v149 = -1;
unsigned char v148 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
