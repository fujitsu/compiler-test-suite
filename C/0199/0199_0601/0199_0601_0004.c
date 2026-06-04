#include <stdlib.h>
extern signed char v1 (signed char);
extern signed char (*v2) (signed char);
extern unsigned char v3 (unsigned short, signed short, signed char);
extern unsigned char (*v4) (unsigned short, signed short, signed char);
extern unsigned char v5 (unsigned char, unsigned char);
extern unsigned char (*v6) (unsigned char, unsigned char);
extern unsigned short v7 (signed int, signed int);
extern unsigned short (*v8) (signed int, signed int);
extern signed char v9 (unsigned char, signed int, unsigned char);
extern signed char (*v10) (unsigned char, signed int, unsigned char);
extern signed char v11 (signed short, unsigned short, unsigned short, signed char);
extern signed char (*v12) (signed short, unsigned short, unsigned short, signed char);
unsigned int v15 (signed char);
unsigned int (*v16) (signed char) = v15;
extern unsigned char v17 (signed short, unsigned char, signed int, signed char);
extern unsigned char (*v18) (signed short, unsigned char, signed int, signed char);
extern unsigned char v21 (signed short);
extern unsigned char (*v22) (signed short);
extern unsigned int v23 (signed char, unsigned char, unsigned short, unsigned short);
extern unsigned int (*v24) (signed char, unsigned char, unsigned short, unsigned short);
extern unsigned char v25 (signed short);
extern unsigned char (*v26) (signed short);
signed short v27 (unsigned char, signed char, signed char, unsigned short);
signed short (*v28) (unsigned char, signed char, signed char, unsigned short) = v27;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v144 = 4;
unsigned char v143 = 4;
signed int v142 = 0;

signed short v27 (unsigned char v145, signed char v146, signed char v147, unsigned short v148)
{
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
{
for (;;) {
unsigned short v151 = 7;
signed short v150 = -3;
unsigned int v149 = 3U;
trace++;
switch (trace)
{
case 3: 
return v150;
default: abort ();
}
}
}
}

unsigned int v15 (signed char v152)
{
history[history_index++] = (int)v152;
{
for (;;) {
unsigned char v155 = 0;
signed short v154 = -2;
unsigned int v153 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
