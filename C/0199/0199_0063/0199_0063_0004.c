#include <stdlib.h>
extern signed int v1 (signed int);
extern signed int (*v2) (signed int);
unsigned char v3 (unsigned short, unsigned char, signed short);
unsigned char (*v4) (unsigned short, unsigned char, signed short) = v3;
unsigned char v5 (unsigned int, signed short);
unsigned char (*v6) (unsigned int, signed short) = v5;
extern signed int v7 (unsigned char);
extern signed int (*v8) (unsigned char);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern void v11 (signed char, signed int, signed int, signed int);
extern void (*v12) (signed char, signed int, signed int, signed int);
void v13 (unsigned char, unsigned char);
void (*v14) (unsigned char, unsigned char) = v13;
extern unsigned int v15 (unsigned char, signed short, unsigned char);
extern unsigned int (*v16) (unsigned char, signed short, unsigned char);
extern unsigned int v17 (signed char, unsigned short);
extern unsigned int (*v18) (signed char, unsigned short);
extern signed short v19 (unsigned int, signed char, unsigned int);
extern signed short (*v20) (unsigned int, signed char, unsigned int);
extern unsigned short v21 (signed char, signed char);
extern unsigned short (*v22) (signed char, signed char);
extern unsigned int v25 (unsigned char);
extern unsigned int (*v26) (unsigned char);
extern signed int v27 (unsigned char, unsigned char, unsigned short, unsigned char);
extern signed int (*v28) (unsigned char, unsigned char, unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v139 = -3;
signed short v138 = 1;
signed short v137 = 3;

void v13 (unsigned char v140, unsigned char v141)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
signed short v144 = 0;
unsigned char v143 = 5;
signed short v142 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned int v145, signed short v146)
{
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
signed short v149 = 1;
unsigned int v148 = 6U;
signed int v147 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (unsigned short v150, unsigned char v151, signed short v152)
{
history[history_index++] = (int)v150;
history[history_index++] = (int)v151;
history[history_index++] = (int)v152;
{
for (;;) {
unsigned short v155 = 7;
signed char v154 = 1;
unsigned char v153 = 4;
trace++;
switch (trace)
{
case 10: 
return v153;
default: abort ();
}
}
}
}
