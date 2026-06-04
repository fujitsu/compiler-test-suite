#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern unsigned short v3 (signed char, unsigned char, unsigned char);
extern unsigned short (*v4) (signed char, unsigned char, unsigned char);
unsigned int v5 (void);
unsigned int (*v6) (void) = v5;
extern signed short v7 (unsigned char, signed char, unsigned int);
extern signed short (*v8) (unsigned char, signed char, unsigned int);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern unsigned char v13 (unsigned int);
extern unsigned char (*v14) (unsigned int);
extern signed int v15 (signed short);
extern signed int (*v16) (signed short);
extern signed char v17 (unsigned int, unsigned short);
extern signed char (*v18) (unsigned int, unsigned short);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern unsigned int v21 (signed short, signed int, unsigned short);
extern unsigned int (*v22) (signed short, signed int, unsigned short);
extern unsigned int v25 (signed short, signed short);
extern unsigned int (*v26) (signed short, signed short);
signed char v29 (unsigned int, unsigned int, unsigned int);
signed char (*v30) (unsigned int, unsigned int, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v123 = -1;
unsigned char v122 = 7;
unsigned short v121 = 1;

signed char v29 (unsigned int v124, unsigned int v125, unsigned int v126)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
unsigned int v129 = 5U;
signed char v128 = 3;
signed char v127 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (void)
{
{
for (;;) {
unsigned int v132 = 3U;
unsigned char v131 = 0;
unsigned short v130 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
