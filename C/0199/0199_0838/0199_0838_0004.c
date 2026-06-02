#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern void v3 (signed char, signed int, unsigned short, unsigned int);
extern void (*v4) (signed char, signed int, unsigned short, unsigned int);
signed short v5 (void);
signed short (*v6) (void) = v5;
extern signed short v7 (void);
extern signed short (*v8) (void);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern void v11 (unsigned int, signed char, signed int, signed char);
extern void (*v12) (unsigned int, signed char, signed int, signed char);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern signed short v17 (unsigned char, unsigned int, unsigned char, signed int);
extern signed short (*v18) (unsigned char, unsigned int, unsigned char, signed int);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed short v21 (signed char, unsigned char);
extern signed short (*v22) (signed char, unsigned char);
extern unsigned int v23 (unsigned char, signed char);
extern unsigned int (*v24) (unsigned char, signed char);
extern signed int v25 (signed short, signed short);
extern signed int (*v26) (signed short, signed short);
unsigned char v27 (unsigned short);
unsigned char (*v28) (unsigned short) = v27;
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v122 = 7;
signed short v121 = -4;
signed int v120 = 0;

unsigned char v27 (unsigned short v123)
{
history[history_index++] = (int)v123;
{
for (;;) {
signed char v126 = -2;
signed char v125 = -4;
unsigned int v124 = 0U;
trace++;
switch (trace)
{
case 8: 
return 5;
default: abort ();
}
}
}
}

signed short v5 (void)
{
{
for (;;) {
signed short v129 = -1;
unsigned char v128 = 0;
signed short v127 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
