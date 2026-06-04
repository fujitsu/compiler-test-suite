#include <stdlib.h>
extern signed short v3 (signed short, unsigned short, signed int, signed short);
extern signed short (*v4) (signed short, unsigned short, signed int, signed short);
extern unsigned short v5 (unsigned short, signed short, unsigned int);
extern unsigned short (*v6) (unsigned short, signed short, unsigned int);
extern unsigned short v7 (unsigned int, unsigned short);
extern unsigned short (*v8) (unsigned int, unsigned short);
extern signed char v9 (signed short, signed char, signed char);
extern signed char (*v10) (signed short, signed char, signed char);
extern signed short v11 (unsigned short, unsigned int, unsigned short);
extern signed short (*v12) (unsigned short, unsigned int, unsigned short);
signed int v13 (unsigned short, unsigned int, unsigned int);
signed int (*v14) (unsigned short, unsigned int, unsigned int) = v13;
extern signed char v15 (void);
extern signed char (*v16) (void);
extern unsigned char v17 (signed short, signed short);
extern unsigned char (*v18) (signed short, signed short);
unsigned short v19 (signed char);
unsigned short (*v20) (signed char) = v19;
extern signed char v21 (signed short, unsigned char, unsigned short, unsigned short);
extern signed char (*v22) (signed short, unsigned char, unsigned short, unsigned short);
signed short v23 (signed int, signed int, unsigned short, unsigned char);
signed short (*v24) (signed int, signed int, unsigned short, unsigned char) = v23;
unsigned short v25 (signed char, unsigned char);
unsigned short (*v26) (signed char, unsigned char) = v25;
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern unsigned int v29 (unsigned char, unsigned int, signed int, signed short);
extern unsigned int (*v30) (unsigned char, unsigned int, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v142 = 1;
unsigned short v141 = 2;
unsigned char v140 = 7;

unsigned short v25 (signed char v143, unsigned char v144)
{
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
{
for (;;) {
unsigned char v147 = 4;
signed short v146 = -4;
signed int v145 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v23 (signed int v148, signed int v149, unsigned short v150, unsigned char v151)
{
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
history[history_index++] = (int)v151;
{
for (;;) {
signed char v154 = -4;
signed short v153 = 1;
signed char v152 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (signed char v155)
{
history[history_index++] = (int)v155;
{
for (;;) {
signed short v158 = -4;
unsigned int v157 = 2U;
signed int v156 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (unsigned short v159, unsigned int v160, unsigned int v161)
{
history[history_index++] = (int)v159;
history[history_index++] = (int)v160;
history[history_index++] = (int)v161;
{
for (;;) {
unsigned char v164 = 3;
unsigned short v163 = 0;
unsigned int v162 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
