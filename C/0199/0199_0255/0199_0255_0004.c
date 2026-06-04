#include <stdlib.h>
extern signed int v1 (signed short, unsigned short, unsigned int);
extern signed int (*v2) (signed short, unsigned short, unsigned int);
extern unsigned char v3 (signed char, signed int);
extern unsigned char (*v4) (signed char, signed int);
extern void v5 (void);
extern void (*v6) (void);
extern void v7 (unsigned char);
extern void (*v8) (unsigned char);
extern unsigned char v9 (signed char);
extern unsigned char (*v10) (signed char);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
unsigned char v13 (unsigned short, unsigned short, signed short);
unsigned char (*v14) (unsigned short, unsigned short, signed short) = v13;
void v15 (signed short, unsigned short, signed short);
void (*v16) (signed short, unsigned short, signed short) = v15;
extern unsigned short v17 (unsigned int, unsigned char, unsigned int, unsigned short);
extern unsigned short (*v18) (unsigned int, unsigned char, unsigned int, unsigned short);
extern unsigned char v19 (unsigned short, unsigned short, unsigned short, signed short);
extern unsigned char (*v20) (unsigned short, unsigned short, unsigned short, signed short);
extern unsigned int v21 (signed char, unsigned short, signed char, signed char);
extern unsigned int (*v22) (signed char, unsigned short, signed char, signed char);
extern void v23 (signed short, signed int, unsigned char);
extern void (*v24) (signed short, signed int, unsigned char);
extern signed char v25 (signed char, unsigned int, unsigned int, signed int);
extern signed char (*v26) (signed char, unsigned int, unsigned int, signed int);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern unsigned short v29 (unsigned short, signed short, signed char, signed short);
extern unsigned short (*v30) (unsigned short, signed short, signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v153 = 0;
unsigned int v152 = 0U;
unsigned char v151 = 4;

void v15 (signed short v154, unsigned short v155, signed short v156)
{
history[history_index++] = (int)v154;
history[history_index++] = (int)v155;
history[history_index++] = (int)v156;
{
for (;;) {
signed int v159 = 3;
signed int v158 = 3;
unsigned int v157 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (unsigned short v160, unsigned short v161, signed short v162)
{
history[history_index++] = (int)v160;
history[history_index++] = (int)v161;
history[history_index++] = (int)v162;
{
for (;;) {
unsigned short v165 = 2;
unsigned short v164 = 4;
unsigned char v163 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
