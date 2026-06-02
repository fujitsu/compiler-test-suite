#include <stdlib.h>
extern signed int v3 (unsigned short, signed int, signed short);
extern signed int (*v4) (unsigned short, signed int, signed short);
extern signed short v5 (unsigned int, signed int, unsigned short);
extern signed short (*v6) (unsigned int, signed int, unsigned short);
extern unsigned int v7 (unsigned short, unsigned short, signed int, signed short);
extern unsigned int (*v8) (unsigned short, unsigned short, signed int, signed short);
extern unsigned int v11 (signed short, signed char, signed char, unsigned int);
extern unsigned int (*v12) (signed short, signed char, signed char, unsigned int);
extern unsigned char v13 (signed short, signed int);
extern unsigned char (*v14) (signed short, signed int);
extern unsigned char v15 (unsigned char, unsigned short, unsigned char, signed char);
extern unsigned char (*v16) (unsigned char, unsigned short, unsigned char, signed char);
extern unsigned int v17 (signed short, signed char, unsigned char);
extern unsigned int (*v18) (signed short, signed char, unsigned char);
extern signed int v19 (unsigned int, signed char);
extern signed int (*v20) (unsigned int, signed char);
unsigned int v21 (void);
unsigned int (*v22) (void) = v21;
unsigned char v23 (signed char, unsigned int);
unsigned char (*v24) (signed char, unsigned int) = v23;
extern signed short v25 (unsigned int, unsigned short, unsigned int);
extern signed short (*v26) (unsigned int, unsigned short, unsigned int);
extern unsigned char v27 (unsigned char, unsigned int);
extern unsigned char (*v28) (unsigned char, unsigned int);
extern void v29 (signed int);
extern void (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v144 = -4;
signed int v143 = 2;
signed char v142 = 0;

unsigned char v23 (signed char v145, unsigned int v146)
{
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
unsigned short v149 = 3;
signed char v148 = -2;
signed int v147 = 3;
trace++;
switch (trace)
{
case 1: 
return 1;
case 4: 
return 5;
default: abort ();
}
}
}
}

unsigned int v21 (void)
{
{
for (;;) {
signed int v152 = 2;
unsigned short v151 = 5;
unsigned int v150 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
