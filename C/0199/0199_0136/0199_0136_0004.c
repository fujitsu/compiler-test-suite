#include <stdlib.h>
extern signed char v1 (signed char);
extern signed char (*v2) (signed char);
unsigned char v3 (unsigned char, signed char, signed short, unsigned short);
unsigned char (*v4) (unsigned char, signed char, signed short, unsigned short) = v3;
extern signed short v5 (unsigned short, unsigned short);
extern signed short (*v6) (unsigned short, unsigned short);
extern unsigned char v7 (unsigned char, signed char, unsigned int);
extern unsigned char (*v8) (unsigned char, signed char, unsigned int);
extern signed short v9 (signed char, signed char, unsigned char, unsigned short);
extern signed short (*v10) (signed char, signed char, unsigned char, unsigned short);
extern unsigned short v11 (unsigned short, signed short);
extern unsigned short (*v12) (unsigned short, signed short);
signed short v13 (unsigned int, signed char);
signed short (*v14) (unsigned int, signed char) = v13;
extern signed short v15 (signed int, signed int);
extern signed short (*v16) (signed int, signed int);
extern unsigned short v17 (signed int, signed short, unsigned int, unsigned char);
extern unsigned short (*v18) (signed int, signed short, unsigned int, unsigned char);
extern signed short v19 (signed char, signed short);
extern signed short (*v20) (signed char, signed short);
extern unsigned char v21 (unsigned char, signed int, signed short, unsigned char);
extern unsigned char (*v22) (unsigned char, signed int, signed short, unsigned char);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
signed short v25 (signed char, unsigned char, unsigned short);
signed short (*v26) (signed char, unsigned char, unsigned short) = v25;
extern void v27 (unsigned char, signed int, unsigned int, unsigned char);
extern void (*v28) (unsigned char, signed int, unsigned int, unsigned char);
extern signed char v29 (unsigned int, unsigned short);
extern signed char (*v30) (unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v143 = 1;
unsigned char v142 = 1;
signed int v141 = 1;

signed short v25 (signed char v144, unsigned char v145, unsigned short v146)
{
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
signed int v149 = 3;
signed char v148 = 2;
signed short v147 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (unsigned int v150, signed char v151)
{
history[history_index++] = (int)v150;
history[history_index++] = (int)v151;
{
for (;;) {
unsigned int v154 = 7U;
unsigned short v153 = 7;
signed int v152 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (unsigned char v155, signed char v156, signed short v157, unsigned short v158)
{
history[history_index++] = (int)v155;
history[history_index++] = (int)v156;
history[history_index++] = (int)v157;
history[history_index++] = (int)v158;
{
for (;;) {
unsigned char v161 = 6;
signed int v160 = 0;
signed char v159 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
