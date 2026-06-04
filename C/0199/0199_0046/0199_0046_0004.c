#include <stdlib.h>
extern unsigned short v1 (signed int, signed char, signed short, signed char);
extern unsigned short (*v2) (signed int, signed char, signed short, signed char);
extern unsigned short v3 (unsigned int, unsigned short, signed char);
extern unsigned short (*v4) (unsigned int, unsigned short, signed char);
signed int v5 (unsigned char, unsigned char);
signed int (*v6) (unsigned char, unsigned char) = v5;
extern signed int v7 (unsigned short);
extern signed int (*v8) (unsigned short);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern signed char v11 (unsigned short, unsigned char, signed int);
extern signed char (*v12) (unsigned short, unsigned char, signed int);
extern void v13 (unsigned short, unsigned char);
extern void (*v14) (unsigned short, unsigned char);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned short v17 (unsigned short, unsigned short);
extern unsigned short (*v18) (unsigned short, unsigned short);
extern unsigned char v19 (signed char, signed int, unsigned char, signed char);
extern unsigned char (*v20) (signed char, signed int, unsigned char, signed char);
extern signed char v23 (signed short, unsigned int, signed short);
extern signed char (*v24) (signed short, unsigned int, signed short);
signed short v25 (signed short, unsigned short, signed short);
signed short (*v26) (signed short, unsigned short, signed short) = v25;
extern signed short v27 (void);
extern signed short (*v28) (void);
extern signed short v29 (unsigned int, signed short, unsigned int);
extern signed short (*v30) (unsigned int, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v143 = 5;
signed short v142 = 2;
signed short v141 = 0;

signed short v25 (signed short v144, unsigned short v145, signed short v146)
{
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
signed int v149 = 1;
unsigned int v148 = 7U;
signed int v147 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (unsigned char v150, unsigned char v151)
{
history[history_index++] = (int)v150;
history[history_index++] = (int)v151;
{
for (;;) {
unsigned short v154 = 4;
unsigned short v153 = 1;
unsigned short v152 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
