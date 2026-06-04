#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern signed int v3 (signed int);
extern signed int (*v4) (signed int);
extern unsigned short v5 (unsigned int, unsigned int, unsigned short);
extern unsigned short (*v6) (unsigned int, unsigned int, unsigned short);
extern void v7 (signed int, unsigned char);
extern void (*v8) (signed int, unsigned char);
extern signed int v9 (unsigned char, unsigned short, signed char, unsigned int);
extern signed int (*v10) (unsigned char, unsigned short, signed char, unsigned int);
extern unsigned int v11 (unsigned char);
extern unsigned int (*v12) (unsigned char);
extern unsigned int v13 (unsigned char, signed short, unsigned short);
extern unsigned int (*v14) (unsigned char, signed short, unsigned short);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed int v17 (unsigned short, signed short);
extern signed int (*v18) (unsigned short, signed short);
signed char v19 (signed short);
signed char (*v20) (signed short) = v19;
extern signed char v21 (signed short, unsigned char, signed char, unsigned char);
extern signed char (*v22) (signed short, unsigned char, signed char, unsigned char);
unsigned int v25 (signed short, unsigned int, signed int, unsigned short);
unsigned int (*v26) (signed short, unsigned int, signed int, unsigned short) = v25;
extern signed short v27 (unsigned short);
extern signed short (*v28) (unsigned short);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v124 = 1;
unsigned char v123 = 6;
signed int v122 = 3;

unsigned int v25 (signed short v125, unsigned int v126, signed int v127, unsigned short v128)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
signed char v131 = 0;
signed short v130 = -4;
unsigned char v129 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (signed short v132)
{
history[history_index++] = (int)v132;
{
for (;;) {
unsigned int v135 = 0U;
unsigned char v134 = 4;
signed char v133 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
