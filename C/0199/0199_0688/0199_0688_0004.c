#include <stdlib.h>
extern unsigned short v1 (unsigned short, signed int);
extern unsigned short (*v2) (unsigned short, signed int);
extern signed int v3 (unsigned short, unsigned short, signed int, unsigned char);
extern signed int (*v4) (unsigned short, unsigned short, signed int, unsigned char);
extern signed int v5 (unsigned short, unsigned char, unsigned char, signed char);
extern signed int (*v6) (unsigned short, unsigned char, unsigned char, signed char);
extern signed short v7 (unsigned char, unsigned short, signed int, signed char);
extern signed short (*v8) (unsigned char, unsigned short, signed int, signed char);
unsigned char v9 (signed short, unsigned int, signed char, signed char);
unsigned char (*v10) (signed short, unsigned int, signed char, signed char) = v9;
extern void v11 (unsigned char, signed short, unsigned short, signed int);
extern void (*v12) (unsigned char, signed short, unsigned short, signed int);
extern signed int v13 (unsigned short, signed short, signed short, unsigned char);
extern signed int (*v14) (unsigned short, signed short, signed short, unsigned char);
unsigned char v15 (void);
unsigned char (*v16) (void) = v15;
extern unsigned short v19 (signed short, signed short);
extern unsigned short (*v20) (signed short, signed short);
extern signed int v21 (unsigned char, unsigned short, signed int, signed char);
extern signed int (*v22) (unsigned char, unsigned short, signed int, signed char);
extern unsigned int v23 (unsigned char);
extern unsigned int (*v24) (unsigned char);
extern signed short v25 (signed short);
extern signed short (*v26) (signed short);
extern void v27 (signed int, unsigned short);
extern void (*v28) (signed int, unsigned short);
extern signed int v29 (unsigned int, unsigned int);
extern signed int (*v30) (unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v151 = 1;
signed short v150 = 0;
unsigned int v149 = 5U;

unsigned char v15 (void)
{
{
for (;;) {
unsigned int v154 = 5U;
signed short v153 = -1;
unsigned int v152 = 3U;
trace++;
switch (trace)
{
case 6: 
return 5;
default: abort ();
}
}
}
}

unsigned char v9 (signed short v155, unsigned int v156, signed char v157, signed char v158)
{
history[history_index++] = (int)v155;
history[history_index++] = (int)v156;
history[history_index++] = (int)v157;
history[history_index++] = (int)v158;
{
for (;;) {
signed char v161 = -1;
signed short v160 = 2;
signed char v159 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
