#include <stdlib.h>
extern unsigned int v1 (unsigned char, signed short, signed short, unsigned short);
extern unsigned int (*v2) (unsigned char, signed short, signed short, unsigned short);
extern void v3 (signed short, unsigned char, unsigned short);
extern void (*v4) (signed short, unsigned char, unsigned short);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern signed int v7 (unsigned int, signed int, signed char, signed char);
extern signed int (*v8) (unsigned int, signed int, signed char, signed char);
extern signed short v9 (unsigned int, unsigned char, unsigned char);
extern signed short (*v10) (unsigned int, unsigned char, unsigned char);
unsigned char v11 (signed char, unsigned short);
unsigned char (*v12) (signed char, unsigned short) = v11;
void v13 (signed char, signed int);
void (*v14) (signed char, signed int) = v13;
extern signed char v15 (void);
extern signed char (*v16) (void);
extern void v17 (signed char, signed int, unsigned int, unsigned char);
extern void (*v18) (signed char, signed int, unsigned int, unsigned char);
extern signed short v19 (unsigned char);
extern signed short (*v20) (unsigned char);
extern unsigned int v21 (signed int);
extern unsigned int (*v22) (signed int);
extern signed short v23 (unsigned short);
extern signed short (*v24) (unsigned short);
extern void v25 (unsigned short, unsigned int, signed int, signed int);
extern void (*v26) (unsigned short, unsigned int, signed int, signed int);
extern unsigned int v27 (unsigned short, signed short, signed char, signed char);
extern unsigned int (*v28) (unsigned short, signed short, signed char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v137 = -4;
unsigned int v136 = 7U;
signed short v135 = -2;

void v13 (signed char v138, signed int v139)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
unsigned short v142 = 2;
unsigned short v141 = 6;
signed char v140 = -3;
trace++;
switch (trace)
{
case 4: 
{
unsigned char v143;
signed short v144;
v143 = 4 + 3;
v144 = v19 (v143);
history[history_index++] = (int)v144;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

unsigned char v11 (signed char v145, unsigned short v146)
{
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
signed int v149 = -2;
unsigned short v148 = 2;
signed char v147 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
