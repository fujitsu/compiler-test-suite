#include <stdlib.h>
extern signed short v3 (unsigned short, unsigned short);
extern signed short (*v4) (unsigned short, unsigned short);
extern void v5 (signed short, signed short);
extern void (*v6) (signed short, signed short);
extern signed char v7 (unsigned char, signed int, signed char, unsigned int);
extern signed char (*v8) (unsigned char, signed int, signed char, unsigned int);
extern signed short v9 (unsigned short, unsigned char, signed short);
extern signed short (*v10) (unsigned short, unsigned char, signed short);
extern signed char v11 (signed char, unsigned char);
extern signed char (*v12) (signed char, unsigned char);
extern unsigned char v13 (signed char, signed char, unsigned char);
extern unsigned char (*v14) (signed char, signed char, unsigned char);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern void v17 (unsigned int, signed int);
extern void (*v18) (unsigned int, signed int);
extern signed int v19 (void);
extern signed int (*v20) (void);
unsigned short v23 (signed char, signed char);
unsigned short (*v24) (signed char, signed char) = v23;
extern unsigned int v25 (unsigned char, signed int, signed char);
extern unsigned int (*v26) (unsigned char, signed int, signed char);
unsigned char v27 (unsigned char);
unsigned char (*v28) (unsigned char) = v27;
extern unsigned char v29 (unsigned int);
extern unsigned char (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v126 = -2;
unsigned char v125 = 5;
unsigned int v124 = 7U;

unsigned char v27 (unsigned char v127)
{
history[history_index++] = (int)v127;
{
for (;;) {
signed short v130 = 2;
signed int v129 = 2;
unsigned short v128 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v23 (signed char v131, signed char v132)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
unsigned int v135 = 4U;
signed int v134 = 1;
signed int v133 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
