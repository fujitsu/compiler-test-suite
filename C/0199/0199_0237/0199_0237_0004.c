#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern void v5 (signed int, signed short, signed char);
extern void (*v6) (signed int, signed short, signed char);
extern signed short v7 (void);
extern signed short (*v8) (void);
unsigned char v9 (signed int, unsigned int);
unsigned char (*v10) (signed int, unsigned int) = v9;
extern signed int v11 (signed int, signed int, unsigned int);
extern signed int (*v12) (signed int, signed int, unsigned int);
extern signed char v13 (signed short, unsigned int, unsigned short);
extern signed char (*v14) (signed short, unsigned int, unsigned short);
extern unsigned int v15 (unsigned char, unsigned int, unsigned short);
extern unsigned int (*v16) (unsigned char, unsigned int, unsigned short);
extern signed short v17 (signed char, unsigned char, unsigned short, signed int);
extern signed short (*v18) (signed char, unsigned char, unsigned short, signed int);
void v19 (signed short, unsigned char, unsigned char, signed int);
void (*v20) (signed short, unsigned char, unsigned char, signed int) = v19;
extern unsigned int v21 (unsigned short, unsigned int, signed char, unsigned int);
extern unsigned int (*v22) (unsigned short, unsigned int, signed char, unsigned int);
extern void v23 (unsigned short, unsigned int, signed char, unsigned int);
extern void (*v24) (unsigned short, unsigned int, signed char, unsigned int);
extern signed char v25 (signed int, signed char, signed int);
extern signed char (*v26) (signed int, signed char, signed int);
extern unsigned short v27 (unsigned char, signed char, unsigned short, unsigned short);
extern unsigned short (*v28) (unsigned char, signed char, unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v150 = 3U;
unsigned char v149 = 4;
signed short v148 = -2;

void v19 (signed short v151, unsigned char v152, unsigned char v153, signed int v154)
{
history[history_index++] = (int)v151;
history[history_index++] = (int)v152;
history[history_index++] = (int)v153;
history[history_index++] = (int)v154;
{
for (;;) {
signed short v157 = 2;
unsigned int v156 = 2U;
unsigned int v155 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (signed int v158, unsigned int v159)
{
history[history_index++] = (int)v158;
history[history_index++] = (int)v159;
{
for (;;) {
unsigned short v162 = 1;
unsigned int v161 = 4U;
unsigned int v160 = 2U;
trace++;
switch (trace)
{
case 3: 
return 5;
default: abort ();
}
}
}
}
