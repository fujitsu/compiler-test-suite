#include <stdlib.h>
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern unsigned char v5 (signed short);
extern unsigned char (*v6) (signed short);
extern void v7 (unsigned int, unsigned char, signed int, unsigned short);
extern void (*v8) (unsigned int, unsigned char, signed int, unsigned short);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed short v15 (unsigned int, unsigned char, signed short);
extern signed short (*v16) (unsigned int, unsigned char, signed short);
extern signed int v17 (signed short, signed char);
extern signed int (*v18) (signed short, signed char);
extern void v19 (unsigned short, unsigned short, signed short, unsigned int);
extern void (*v20) (unsigned short, unsigned short, signed short, unsigned int);
extern signed int v21 (unsigned int, signed int, unsigned int);
extern signed int (*v22) (unsigned int, signed int, unsigned int);
extern signed int v23 (signed char, signed char, signed char, unsigned int);
extern signed int (*v24) (signed char, signed char, signed char, unsigned int);
signed short v25 (signed int, signed short, unsigned int, unsigned char);
signed short (*v26) (signed int, signed short, unsigned int, unsigned char) = v25;
void v27 (unsigned char, signed int, unsigned short, signed int);
void (*v28) (unsigned char, signed int, unsigned short, signed int) = v27;
extern unsigned short v29 (unsigned int, unsigned char, signed short, unsigned char);
extern unsigned short (*v30) (unsigned int, unsigned char, signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v146 = -1;
unsigned int v145 = 3U;
unsigned short v144 = 4;

void v27 (unsigned char v147, signed int v148, unsigned short v149, signed int v150)
{
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
{
for (;;) {
unsigned int v153 = 4U;
unsigned short v152 = 2;
unsigned short v151 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v25 (signed int v154, signed short v155, unsigned int v156, unsigned char v157)
{
history[history_index++] = (int)v154;
history[history_index++] = (int)v155;
history[history_index++] = (int)v156;
history[history_index++] = (int)v157;
{
for (;;) {
unsigned char v160 = 2;
unsigned char v159 = 7;
signed char v158 = -1;
trace++;
switch (trace)
{
case 11: 
return v155;
default: abort ();
}
}
}
}
