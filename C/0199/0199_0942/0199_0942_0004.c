#include <stdlib.h>
extern void v1 (unsigned char, signed short, unsigned int);
extern void (*v2) (unsigned char, signed short, unsigned int);
signed char v3 (void);
signed char (*v4) (void) = v3;
extern void v5 (unsigned int, unsigned char, unsigned int);
extern void (*v6) (unsigned int, unsigned char, unsigned int);
extern signed short v7 (signed short, unsigned char, signed int, signed short);
extern signed short (*v8) (signed short, unsigned char, signed int, signed short);
extern signed char v9 (signed short, signed int, unsigned short);
extern signed char (*v10) (signed short, signed int, unsigned short);
extern signed int v11 (signed int, signed char, signed int);
extern signed int (*v12) (signed int, signed char, signed int);
extern unsigned short v13 (signed short, unsigned int);
extern unsigned short (*v14) (signed short, unsigned int);
extern unsigned int v15 (signed char, signed char);
extern unsigned int (*v16) (signed char, signed char);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
void v19 (signed int, signed short);
void (*v20) (signed int, signed short) = v19;
extern unsigned int v21 (signed short, signed char, signed int, unsigned int);
extern unsigned int (*v22) (signed short, signed char, signed int, unsigned int);
extern void v23 (unsigned int, signed int, unsigned char, signed int);
extern void (*v24) (unsigned int, signed int, unsigned char, signed int);
extern signed short v25 (signed int);
extern signed short (*v26) (signed int);
extern signed short v29 (unsigned int);
extern signed short (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v145 = -4;
unsigned short v144 = 3;
signed char v143 = -2;

void v19 (signed int v146, signed short v147)
{
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
{
for (;;) {
signed int v150 = -3;
signed char v149 = -2;
signed char v148 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (void)
{
{
for (;;) {
unsigned int v153 = 1U;
unsigned int v152 = 4U;
unsigned int v151 = 1U;
trace++;
switch (trace)
{
case 11: 
return 3;
default: abort ();
}
}
}
}
