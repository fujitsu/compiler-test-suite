#include <stdlib.h>
extern unsigned int v1 (unsigned short);
extern unsigned int (*v2) (unsigned short);
extern unsigned short v3 (unsigned char);
extern unsigned short (*v4) (unsigned char);
extern signed char v5 (signed short);
extern signed char (*v6) (signed short);
extern void v7 (unsigned char, unsigned int, signed short);
extern void (*v8) (unsigned char, unsigned int, signed short);
extern unsigned int v9 (signed char, unsigned short, unsigned int, signed short);
extern unsigned int (*v10) (signed char, unsigned short, unsigned int, signed short);
extern signed int v11 (signed short, signed char);
extern signed int (*v12) (signed short, signed char);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
signed char v15 (void);
signed char (*v16) (void) = v15;
extern signed char v17 (signed char);
extern signed char (*v18) (signed char);
signed char v19 (unsigned char, unsigned int);
signed char (*v20) (unsigned char, unsigned int) = v19;
extern unsigned short v23 (signed int, unsigned int, signed char);
extern unsigned short (*v24) (signed int, unsigned int, signed char);
extern signed short v25 (signed int);
extern signed short (*v26) (signed int);
extern void v27 (void);
extern void (*v28) (void);
extern signed short v29 (unsigned short, signed char, unsigned char);
extern signed short (*v30) (unsigned short, signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v124 = 3;
unsigned char v123 = 4;
signed char v122 = 1;

signed char v19 (unsigned char v125, unsigned int v126)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
unsigned char v129 = 3;
unsigned char v128 = 5;
signed int v127 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (void)
{
{
for (;;) {
unsigned short v132 = 2;
signed short v131 = -2;
signed int v130 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
