#include <stdlib.h>
extern unsigned short v1 (unsigned short, signed short);
extern unsigned short (*v2) (unsigned short, signed short);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned char v5 (signed short, unsigned char);
extern unsigned char (*v6) (signed short, unsigned char);
extern signed char v7 (unsigned int, signed short, signed short);
extern signed char (*v8) (unsigned int, signed short, signed short);
extern signed short v9 (unsigned int);
extern signed short (*v10) (unsigned int);
unsigned int v11 (signed int, signed int);
unsigned int (*v12) (signed int, signed int) = v11;
extern unsigned int v13 (unsigned short, unsigned int);
extern unsigned int (*v14) (unsigned short, unsigned int);
void v15 (void);
void (*v16) (void) = v15;
extern unsigned char v17 (signed int, signed short, signed short);
extern unsigned char (*v18) (signed int, signed short, signed short);
extern unsigned int v19 (signed int, signed short);
extern unsigned int (*v20) (signed int, signed short);
extern void v21 (signed char, signed short, signed short, signed short);
extern void (*v22) (signed char, signed short, signed short, signed short);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern unsigned int v25 (unsigned char, signed int, signed short, signed int);
extern unsigned int (*v26) (unsigned char, signed int, signed short, signed int);
unsigned int v27 (signed short, signed short, signed short);
unsigned int (*v28) (signed short, signed short, signed short) = v27;
extern void v29 (signed char, unsigned int, signed char, signed short);
extern void (*v30) (signed char, unsigned int, signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v138 = -3;
unsigned short v137 = 3;
signed int v136 = -1;

unsigned int v27 (signed short v139, signed short v140, signed short v141)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
unsigned short v144 = 1;
unsigned char v143 = 0;
signed int v142 = -4;
trace++;
switch (trace)
{
case 7: 
return 3U;
case 9: 
return 4U;
case 11: 
return 1U;
default: abort ();
}
}
}
}

void v15 (void)
{
{
for (;;) {
unsigned int v147 = 7U;
unsigned char v146 = 6;
unsigned short v145 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (signed int v148, signed int v149)
{
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
{
for (;;) {
unsigned int v152 = 4U;
unsigned char v151 = 1;
unsigned short v150 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
