#include <stdlib.h>
extern signed int v1 (unsigned char, unsigned char, unsigned char, unsigned int);
extern signed int (*v2) (unsigned char, unsigned char, unsigned char, unsigned int);
extern unsigned short v3 (unsigned char, signed short, unsigned char);
extern unsigned short (*v4) (unsigned char, signed short, unsigned char);
extern signed int v5 (signed short);
extern signed int (*v6) (signed short);
extern signed short v7 (signed int, signed int, signed short, unsigned short);
extern signed short (*v8) (signed int, signed int, signed short, unsigned short);
extern signed short v9 (unsigned int, signed char);
extern signed short (*v10) (unsigned int, signed char);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern signed char v13 (signed int);
extern signed char (*v14) (signed int);
extern signed int v15 (signed char, unsigned short, unsigned short, unsigned int);
extern signed int (*v16) (signed char, unsigned short, unsigned short, unsigned int);
signed int v17 (unsigned char, signed int, signed char);
signed int (*v18) (unsigned char, signed int, signed char) = v17;
extern void v19 (unsigned int, signed int, signed int);
extern void (*v20) (unsigned int, signed int, signed int);
extern unsigned char v21 (signed int, unsigned short, signed char);
extern unsigned char (*v22) (signed int, unsigned short, signed char);
extern signed short v23 (unsigned int, signed char, unsigned short);
extern signed short (*v24) (unsigned int, signed char, unsigned short);
extern void v25 (unsigned char, signed short, unsigned char);
extern void (*v26) (unsigned char, signed short, unsigned char);
extern unsigned char v27 (signed short, unsigned char, signed short);
extern unsigned char (*v28) (signed short, unsigned char, signed short);
unsigned char v29 (signed int);
unsigned char (*v30) (signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v134 = 0;
unsigned short v133 = 0;
unsigned int v132 = 7U;

unsigned char v29 (signed int v135)
{
history[history_index++] = (int)v135;
{
for (;;) {
unsigned short v138 = 4;
unsigned int v137 = 7U;
unsigned short v136 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (unsigned char v139, signed int v140, signed char v141)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
signed char v144 = -2;
unsigned short v143 = 6;
unsigned int v142 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
