#include <stdlib.h>
extern void v3 (unsigned int, unsigned int, unsigned int);
extern void (*v4) (unsigned int, unsigned int, unsigned int);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern signed char v7 (unsigned char, signed char, unsigned short, unsigned int);
extern signed char (*v8) (unsigned char, signed char, unsigned short, unsigned int);
unsigned int v9 (signed int, signed short, unsigned short);
unsigned int (*v10) (signed int, signed short, unsigned short) = v9;
signed char v13 (unsigned short, signed char);
signed char (*v14) (unsigned short, signed char) = v13;
extern signed int v15 (unsigned char, unsigned short, unsigned int);
extern signed int (*v16) (unsigned char, unsigned short, unsigned int);
extern signed int v19 (signed int, signed short, unsigned char, unsigned int);
extern signed int (*v20) (signed int, signed short, unsigned char, unsigned int);
extern signed short v23 (signed short, unsigned int);
extern signed short (*v24) (signed short, unsigned int);
extern signed char v25 (unsigned short, signed char, unsigned int);
extern signed char (*v26) (unsigned short, signed char, unsigned int);
extern unsigned char v27 (signed int, unsigned short, signed int, unsigned short);
extern unsigned char (*v28) (signed int, unsigned short, signed int, unsigned short);
signed short v29 (signed int);
signed short (*v30) (signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v144 = -2;
signed int v143 = -2;
signed char v142 = -1;

signed short v29 (signed int v145)
{
history[history_index++] = (int)v145;
{
for (;;) {
signed int v148 = 3;
unsigned short v147 = 4;
signed char v146 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (unsigned short v149, signed char v150)
{
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
{
for (;;) {
signed short v153 = -4;
unsigned char v152 = 1;
unsigned char v151 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (signed int v154, signed short v155, unsigned short v156)
{
history[history_index++] = (int)v154;
history[history_index++] = (int)v155;
history[history_index++] = (int)v156;
{
for (;;) {
unsigned short v159 = 6;
signed char v158 = 2;
unsigned char v157 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
