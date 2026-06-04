#include <stdlib.h>
extern signed char v1 (signed short, signed int);
extern signed char (*v2) (signed short, signed int);
unsigned int v3 (unsigned char, signed short, signed int, unsigned short);
unsigned int (*v4) (unsigned char, signed short, signed int, unsigned short) = v3;
extern unsigned int v7 (unsigned int, unsigned short, signed short, unsigned int);
extern unsigned int (*v8) (unsigned int, unsigned short, signed short, unsigned int);
extern signed short v9 (unsigned char);
extern signed short (*v10) (unsigned char);
extern unsigned char v11 (unsigned short, signed int, unsigned int, unsigned short);
extern unsigned char (*v12) (unsigned short, signed int, unsigned int, unsigned short);
extern unsigned char v13 (signed int, signed int, unsigned char, unsigned short);
extern unsigned char (*v14) (signed int, signed int, unsigned char, unsigned short);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern signed short v19 (signed short, signed short, unsigned int);
extern signed short (*v20) (signed short, signed short, unsigned int);
signed char v21 (signed int, signed short, unsigned int, unsigned int);
signed char (*v22) (signed int, signed short, unsigned int, unsigned int) = v21;
extern unsigned char v23 (signed char, signed short);
extern unsigned char (*v24) (signed char, signed short);
extern signed short v25 (signed char, signed int, unsigned int, signed short);
extern signed short (*v26) (signed char, signed int, unsigned int, signed short);
unsigned char v27 (unsigned int, signed int, unsigned short, signed int);
unsigned char (*v28) (unsigned int, signed int, unsigned short, signed int) = v27;
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v145 = -2;
unsigned short v144 = 5;
unsigned int v143 = 6U;

unsigned char v27 (unsigned int v146, signed int v147, unsigned short v148, signed int v149)
{
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
{
for (;;) {
signed char v152 = -3;
unsigned char v151 = 6;
signed int v150 = 1;
trace++;
switch (trace)
{
case 11: 
return v151;
default: abort ();
}
}
}
}

signed char v21 (signed int v153, signed short v154, unsigned int v155, unsigned int v156)
{
history[history_index++] = (int)v153;
history[history_index++] = (int)v154;
history[history_index++] = (int)v155;
history[history_index++] = (int)v156;
{
for (;;) {
signed short v159 = 1;
unsigned short v158 = 2;
signed char v157 = 3;
trace++;
switch (trace)
{
case 1: 
return v157;
default: abort ();
}
}
}
}

unsigned int v3 (unsigned char v160, signed short v161, signed int v162, unsigned short v163)
{
history[history_index++] = (int)v160;
history[history_index++] = (int)v161;
history[history_index++] = (int)v162;
history[history_index++] = (int)v163;
{
for (;;) {
unsigned int v166 = 1U;
signed short v165 = -1;
unsigned short v164 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
