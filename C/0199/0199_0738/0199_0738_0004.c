#include <stdlib.h>
extern void v1 (unsigned int, signed int, signed short, unsigned char);
extern void (*v2) (unsigned int, signed int, signed short, unsigned char);
extern void v3 (unsigned int);
extern void (*v4) (unsigned int);
extern unsigned short v5 (signed short, unsigned int, unsigned char, unsigned char);
extern unsigned short (*v6) (signed short, unsigned int, unsigned char, unsigned char);
extern signed char v7 (unsigned int, unsigned short, unsigned int, signed char);
extern signed char (*v8) (unsigned int, unsigned short, unsigned int, signed char);
extern unsigned int v9 (unsigned int, unsigned int);
extern unsigned int (*v10) (unsigned int, unsigned int);
unsigned short v11 (signed int);
unsigned short (*v12) (signed int) = v11;
extern signed short v13 (signed char);
extern signed short (*v14) (signed char);
signed char v15 (void);
signed char (*v16) (void) = v15;
unsigned char v17 (unsigned short);
unsigned char (*v18) (unsigned short) = v17;
extern unsigned char v19 (unsigned int, signed short, unsigned int);
extern unsigned char (*v20) (unsigned int, signed short, unsigned int);
extern unsigned short v21 (unsigned int, signed int);
extern unsigned short (*v22) (unsigned int, signed int);
extern unsigned char v23 (unsigned short, unsigned char, signed short, signed int);
extern unsigned char (*v24) (unsigned short, unsigned char, signed short, signed int);
extern void v25 (void);
extern void (*v26) (void);
extern unsigned int v27 (unsigned char);
extern unsigned int (*v28) (unsigned char);
extern signed short v29 (signed char, unsigned short);
extern signed short (*v30) (signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v146 = -2;
signed char v145 = 1;
signed short v144 = -4;

unsigned char v17 (unsigned short v147)
{
history[history_index++] = (int)v147;
{
for (;;) {
unsigned short v150 = 1;
signed short v149 = 0;
signed short v148 = -1;
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
signed char v153 = 2;
signed int v152 = 2;
unsigned char v151 = 3;
trace++;
switch (trace)
{
case 9: 
return v153;
default: abort ();
}
}
}
}

unsigned short v11 (signed int v154)
{
history[history_index++] = (int)v154;
{
for (;;) {
signed char v157 = 1;
signed short v156 = -4;
unsigned short v155 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
