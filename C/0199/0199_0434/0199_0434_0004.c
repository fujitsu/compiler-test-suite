#include <stdlib.h>
extern signed short v1 (unsigned char, unsigned short, unsigned short);
extern signed short (*v2) (unsigned char, unsigned short, unsigned short);
extern unsigned int v3 (signed char, signed short, unsigned int);
extern unsigned int (*v4) (signed char, signed short, unsigned int);
unsigned char v5 (unsigned int);
unsigned char (*v6) (unsigned int) = v5;
extern signed short v7 (unsigned char, signed char, unsigned short, unsigned char);
extern signed short (*v8) (unsigned char, signed char, unsigned short, unsigned char);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern void v13 (signed char, signed int, signed char);
extern void (*v14) (signed char, signed int, signed char);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern unsigned char v17 (unsigned char, signed int, signed char);
extern unsigned char (*v18) (unsigned char, signed int, signed char);
extern signed short v19 (unsigned short);
extern signed short (*v20) (unsigned short);
extern unsigned char v21 (unsigned char, unsigned int, unsigned int, signed char);
extern unsigned char (*v22) (unsigned char, unsigned int, unsigned int, signed char);
extern signed char v25 (signed int, signed int, unsigned char);
extern signed char (*v26) (signed int, signed int, unsigned char);
unsigned char v27 (unsigned char, signed char, signed char, unsigned int);
unsigned char (*v28) (unsigned char, signed char, signed char, unsigned int) = v27;
extern signed char v29 (unsigned char, signed short, signed short, unsigned char);
extern signed char (*v30) (unsigned char, signed short, signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v153 = 0;
unsigned int v152 = 6U;
unsigned int v151 = 5U;

unsigned char v27 (unsigned char v154, signed char v155, signed char v156, unsigned int v157)
{
history[history_index++] = (int)v154;
history[history_index++] = (int)v155;
history[history_index++] = (int)v156;
history[history_index++] = (int)v157;
{
for (;;) {
unsigned int v160 = 6U;
unsigned int v159 = 5U;
signed int v158 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned int v161)
{
history[history_index++] = (int)v161;
{
for (;;) {
unsigned int v164 = 6U;
signed int v163 = 3;
signed short v162 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
