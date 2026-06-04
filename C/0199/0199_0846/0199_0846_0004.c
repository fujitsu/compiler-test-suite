#include <stdlib.h>
extern unsigned short v3 (unsigned int);
extern unsigned short (*v4) (unsigned int);
signed short v5 (signed short, unsigned char);
signed short (*v6) (signed short, unsigned char) = v5;
extern unsigned short v7 (unsigned int, unsigned int, signed short);
extern unsigned short (*v8) (unsigned int, unsigned int, signed short);
extern signed char v9 (unsigned int, unsigned int, signed short, unsigned char);
extern signed char (*v10) (unsigned int, unsigned int, signed short, unsigned char);
unsigned int v11 (signed short, unsigned char, signed int, signed char);
unsigned int (*v12) (signed short, unsigned char, signed int, signed char) = v11;
extern signed short v13 (signed int, unsigned char, signed char, unsigned int);
extern signed short (*v14) (signed int, unsigned char, signed char, unsigned int);
extern signed char v15 (signed int, signed int, unsigned short);
extern signed char (*v16) (signed int, signed int, unsigned short);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern signed char v19 (signed int, unsigned int);
extern signed char (*v20) (signed int, unsigned int);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern void v23 (signed char, unsigned char, signed int, signed short);
extern void (*v24) (signed char, unsigned char, signed int, signed short);
extern unsigned short v25 (signed short, signed short);
extern unsigned short (*v26) (signed short, signed short);
extern unsigned char v27 (signed short, signed short, unsigned char);
extern unsigned char (*v28) (signed short, signed short, unsigned char);
extern signed int v29 (signed char, signed char, unsigned char);
extern signed int (*v30) (signed char, signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v142 = 7;
unsigned char v141 = 3;
unsigned char v140 = 0;

unsigned int v11 (signed short v143, unsigned char v144, signed int v145, signed char v146)
{
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
signed short v149 = 2;
signed char v148 = -4;
signed short v147 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (signed short v150, unsigned char v151)
{
history[history_index++] = (int)v150;
history[history_index++] = (int)v151;
{
for (;;) {
unsigned short v154 = 4;
signed short v153 = 2;
unsigned int v152 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
