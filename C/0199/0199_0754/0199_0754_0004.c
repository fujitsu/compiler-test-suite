#include <stdlib.h>
extern signed char v1 (signed short);
extern signed char (*v2) (signed short);
unsigned short v3 (void);
unsigned short (*v4) (void) = v3;
extern void v5 (unsigned char, unsigned short);
extern void (*v6) (unsigned char, unsigned short);
extern signed short v7 (unsigned short);
extern signed short (*v8) (unsigned short);
extern void v9 (signed int, signed short, unsigned int);
extern void (*v10) (signed int, signed short, unsigned int);
extern void v11 (void);
extern void (*v12) (void);
extern unsigned char v13 (signed short, signed short, signed short);
extern unsigned char (*v14) (signed short, signed short, signed short);
extern signed short v15 (unsigned char);
extern signed short (*v16) (unsigned char);
extern unsigned short v17 (signed int, unsigned int, signed short);
extern unsigned short (*v18) (signed int, unsigned int, signed short);
extern void v19 (unsigned char, signed short, signed int);
extern void (*v20) (unsigned char, signed short, signed int);
unsigned int v21 (signed char);
unsigned int (*v22) (signed char) = v21;
extern signed int v23 (unsigned int, unsigned int, unsigned short);
extern signed int (*v24) (unsigned int, unsigned int, unsigned short);
extern signed short v25 (unsigned int, signed short);
extern signed short (*v26) (unsigned int, signed short);
extern unsigned short v27 (unsigned short);
extern unsigned short (*v28) (unsigned short);
unsigned int v29 (signed char, signed short);
unsigned int (*v30) (signed char, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v122 = 1;
signed char v121 = -3;
signed short v120 = -1;

unsigned int v29 (signed char v123, signed short v124)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
signed char v127 = -3;
signed char v126 = 1;
signed int v125 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v21 (signed char v128)
{
history[history_index++] = (int)v128;
{
for (;;) {
signed char v131 = 2;
signed short v130 = -1;
unsigned char v129 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (void)
{
{
for (;;) {
unsigned short v134 = 2;
signed short v133 = -1;
signed int v132 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
