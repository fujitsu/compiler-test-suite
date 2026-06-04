#include <stdlib.h>
extern signed char v3 (unsigned short, signed char, unsigned char);
extern signed char (*v4) (unsigned short, signed char, unsigned char);
extern signed char v5 (unsigned short, signed char, unsigned int, signed short);
extern signed char (*v6) (unsigned short, signed char, unsigned int, signed short);
extern signed short v7 (signed short, unsigned short, signed int);
extern signed short (*v8) (signed short, unsigned short, signed int);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern signed short v11 (signed char);
extern signed short (*v12) (signed char);
extern signed int v13 (unsigned int);
extern signed int (*v14) (unsigned int);
signed char v15 (signed int, signed short, signed char, signed int);
signed char (*v16) (signed int, signed short, signed char, signed int) = v15;
extern signed int v19 (signed short, unsigned short);
extern signed int (*v20) (signed short, unsigned short);
extern unsigned int v21 (signed char, signed int, unsigned short);
extern unsigned int (*v22) (signed char, signed int, unsigned short);
unsigned char v23 (unsigned char, unsigned char, unsigned char);
unsigned char (*v24) (unsigned char, unsigned char, unsigned char) = v23;
void v25 (signed char, signed short, unsigned short);
void (*v26) (signed char, signed short, unsigned short) = v25;
extern void v27 (signed char, unsigned short, unsigned char, unsigned int);
extern void (*v28) (signed char, unsigned short, unsigned char, unsigned int);
extern unsigned short v29 (unsigned char, unsigned char, signed short, unsigned int);
extern unsigned short (*v30) (unsigned char, unsigned char, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v144 = 3;
signed short v143 = 3;
signed short v142 = 2;

void v25 (signed char v145, signed short v146, unsigned short v147)
{
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
{
for (;;) {
signed int v150 = -3;
signed char v149 = 1;
unsigned short v148 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (unsigned char v151, unsigned char v152, unsigned char v153)
{
history[history_index++] = (int)v151;
history[history_index++] = (int)v152;
history[history_index++] = (int)v153;
{
for (;;) {
unsigned short v156 = 1;
signed int v155 = -3;
signed int v154 = 2;
trace++;
switch (trace)
{
case 6: 
return v151;
case 8: 
return v153;
case 10: 
return v153;
default: abort ();
}
}
}
}

signed char v15 (signed int v157, signed short v158, signed char v159, signed int v160)
{
history[history_index++] = (int)v157;
history[history_index++] = (int)v158;
history[history_index++] = (int)v159;
history[history_index++] = (int)v160;
{
for (;;) {
unsigned short v163 = 3;
unsigned char v162 = 6;
unsigned int v161 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
