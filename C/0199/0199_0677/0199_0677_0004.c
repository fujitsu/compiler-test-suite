#include <stdlib.h>
extern signed int v1 (unsigned int, signed char, unsigned char, unsigned char);
extern signed int (*v2) (unsigned int, signed char, unsigned char, unsigned char);
extern unsigned char v3 (unsigned int, signed int);
extern unsigned char (*v4) (unsigned int, signed int);
unsigned char v5 (signed short, signed short, signed char);
unsigned char (*v6) (signed short, signed short, signed char) = v5;
extern unsigned char v7 (unsigned int);
extern unsigned char (*v8) (unsigned int);
extern void v9 (unsigned char, signed char, signed short, unsigned int);
extern void (*v10) (unsigned char, signed char, signed short, unsigned int);
extern signed short v11 (signed int, unsigned short, unsigned int);
extern signed short (*v12) (signed int, unsigned short, unsigned int);
extern signed int v13 (signed char, signed short, unsigned int);
extern signed int (*v14) (signed char, signed short, unsigned int);
extern signed int v15 (signed char, signed int, unsigned short);
extern signed int (*v16) (signed char, signed int, unsigned short);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern unsigned int v19 (signed char, signed int);
extern unsigned int (*v20) (signed char, signed int);
extern unsigned int v21 (unsigned char, signed int, unsigned char, unsigned short);
extern unsigned int (*v22) (unsigned char, signed int, unsigned char, unsigned short);
signed short v23 (unsigned short, unsigned char);
signed short (*v24) (unsigned short, unsigned char) = v23;
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed char v27 (signed short, unsigned int, signed char);
extern signed char (*v28) (signed short, unsigned int, signed char);
extern unsigned int v29 (signed char, signed int, unsigned short);
extern unsigned int (*v30) (signed char, signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v153 = 2;
signed char v152 = 0;
signed char v151 = -4;

signed short v23 (unsigned short v154, unsigned char v155)
{
history[history_index++] = (int)v154;
history[history_index++] = (int)v155;
{
for (;;) {
signed char v158 = 2;
unsigned char v157 = 5;
signed char v156 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (signed short v159, signed short v160, signed char v161)
{
history[history_index++] = (int)v159;
history[history_index++] = (int)v160;
history[history_index++] = (int)v161;
{
for (;;) {
signed int v164 = -3;
signed short v163 = -3;
signed short v162 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
