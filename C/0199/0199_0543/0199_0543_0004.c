#include <stdlib.h>
extern unsigned short v3 (signed short, signed int, unsigned short, signed int);
extern unsigned short (*v4) (signed short, signed int, unsigned short, signed int);
extern signed short v5 (signed short, signed int, signed short);
extern signed short (*v6) (signed short, signed int, signed short);
extern signed int v7 (unsigned char, unsigned int, unsigned int);
extern signed int (*v8) (unsigned char, unsigned int, unsigned int);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern unsigned int v11 (signed int, signed short, unsigned char);
extern unsigned int (*v12) (signed int, signed short, unsigned char);
unsigned int v13 (signed int, unsigned char, signed short);
unsigned int (*v14) (signed int, unsigned char, signed short) = v13;
extern signed int v15 (unsigned short, signed char);
extern signed int (*v16) (unsigned short, signed char);
extern signed int v17 (signed int, signed char);
extern signed int (*v18) (signed int, signed char);
extern void v19 (signed int);
extern void (*v20) (signed int);
void v21 (void);
void (*v22) (void) = v21;
extern void v23 (signed char, unsigned int, signed short);
extern void (*v24) (signed char, unsigned int, signed short);
extern signed short v25 (unsigned int, unsigned char, signed int);
extern signed short (*v26) (unsigned int, unsigned char, signed int);
extern signed char v27 (unsigned short, signed char);
extern signed char (*v28) (unsigned short, signed char);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v140 = -1;
unsigned short v139 = 3;
unsigned short v138 = 5;

void v21 (void)
{
{
for (;;) {
unsigned int v143 = 4U;
signed short v142 = 2;
signed int v141 = -1;
trace++;
switch (trace)
{
case 2: 
return;
default: abort ();
}
}
}
}

unsigned int v13 (signed int v144, unsigned char v145, signed short v146)
{
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
signed char v149 = 1;
signed short v148 = 2;
signed char v147 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
