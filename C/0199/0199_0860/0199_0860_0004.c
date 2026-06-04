#include <stdlib.h>
extern unsigned int v1 (signed char, signed int, signed short, signed char);
extern unsigned int (*v2) (signed char, signed int, signed short, signed char);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed char v5 (signed char, signed short);
extern signed char (*v6) (signed char, signed short);
extern unsigned short v7 (signed int, signed int, signed char, unsigned short);
extern unsigned short (*v8) (signed int, signed int, signed char, unsigned short);
signed int v9 (unsigned int, unsigned char, unsigned char);
signed int (*v10) (unsigned int, unsigned char, unsigned char) = v9;
extern signed int v11 (unsigned int, unsigned char, unsigned short, unsigned int);
extern signed int (*v12) (unsigned int, unsigned char, unsigned short, unsigned int);
extern unsigned int v13 (signed char, unsigned int, unsigned int);
extern unsigned int (*v14) (signed char, unsigned int, unsigned int);
extern signed char v15 (signed int, unsigned char, signed char);
extern signed char (*v16) (signed int, unsigned char, signed char);
extern unsigned int v17 (signed int, unsigned char);
extern unsigned int (*v18) (signed int, unsigned char);
unsigned short v19 (signed char, unsigned char);
unsigned short (*v20) (signed char, unsigned char) = v19;
extern signed short v21 (unsigned char);
extern signed short (*v22) (unsigned char);
extern signed short v23 (signed char, unsigned char, signed char);
extern signed short (*v24) (signed char, unsigned char, signed char);
unsigned int v25 (unsigned char, unsigned int, unsigned short);
unsigned int (*v26) (unsigned char, unsigned int, unsigned short) = v25;
extern unsigned short v27 (signed short, unsigned short, signed char, unsigned short);
extern unsigned short (*v28) (signed short, unsigned short, signed char, unsigned short);
extern signed char v29 (unsigned int, signed char, unsigned short, signed int);
extern signed char (*v30) (unsigned int, signed char, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v148 = 1;
unsigned short v147 = 0;
signed char v146 = -4;

unsigned int v25 (unsigned char v149, unsigned int v150, unsigned short v151)
{
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
history[history_index++] = (int)v151;
{
for (;;) {
signed char v154 = -2;
signed short v153 = -3;
signed int v152 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (signed char v155, unsigned char v156)
{
history[history_index++] = (int)v155;
history[history_index++] = (int)v156;
{
for (;;) {
unsigned int v159 = 5U;
unsigned char v158 = 7;
signed char v157 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (unsigned int v160, unsigned char v161, unsigned char v162)
{
history[history_index++] = (int)v160;
history[history_index++] = (int)v161;
history[history_index++] = (int)v162;
{
for (;;) {
signed short v165 = 0;
unsigned short v164 = 4;
signed int v163 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
