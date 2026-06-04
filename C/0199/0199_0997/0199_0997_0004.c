#include <stdlib.h>
extern unsigned char v3 (unsigned int, signed int);
extern unsigned char (*v4) (unsigned int, signed int);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern unsigned int v7 (signed char);
extern unsigned int (*v8) (signed char);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern signed short v11 (unsigned short, signed short, signed int);
extern signed short (*v12) (unsigned short, signed short, signed int);
extern unsigned int v13 (signed short, signed int, signed short);
extern unsigned int (*v14) (signed short, signed int, signed short);
unsigned short v15 (unsigned int, signed short, unsigned short);
unsigned short (*v16) (unsigned int, signed short, unsigned short) = v15;
extern signed char v17 (signed char, signed short, signed short);
extern signed char (*v18) (signed char, signed short, signed short);
extern unsigned char v19 (unsigned char);
extern unsigned char (*v20) (unsigned char);
unsigned int v21 (void);
unsigned int (*v22) (void) = v21;
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern void v27 (unsigned short, signed char);
extern void (*v28) (unsigned short, signed char);
extern signed int v29 (signed char, signed int, unsigned char);
extern signed int (*v30) (signed char, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v124 = 0;
unsigned int v123 = 6U;
unsigned char v122 = 1;

unsigned int v21 (void)
{
{
for (;;) {
unsigned short v127 = 2;
signed char v126 = -2;
signed char v125 = -1;
trace++;
switch (trace)
{
case 2: 
return 3U;
default: abort ();
}
}
}
}

unsigned short v15 (unsigned int v128, signed short v129, unsigned short v130)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
unsigned short v133 = 6;
signed int v132 = -3;
unsigned short v131 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
