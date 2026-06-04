#include <stdlib.h>
extern void v1 (signed int, signed char, unsigned short, signed int);
extern void (*v2) (signed int, signed char, unsigned short, signed int);
extern unsigned short v3 (unsigned char, unsigned char, unsigned int);
extern unsigned short (*v4) (unsigned char, unsigned char, unsigned int);
void v5 (unsigned char);
void (*v6) (unsigned char) = v5;
extern signed char v7 (signed char, unsigned char, signed short, signed int);
extern signed char (*v8) (signed char, unsigned char, signed short, signed int);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern signed char v11 (unsigned short, signed char);
extern signed char (*v12) (unsigned short, signed char);
extern signed char v13 (signed int);
extern signed char (*v14) (signed int);
signed int v15 (signed int, signed short, signed char);
signed int (*v16) (signed int, signed short, signed char) = v15;
extern signed short v17 (unsigned char, signed short, signed int);
extern signed short (*v18) (unsigned char, signed short, signed int);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned short v21 (unsigned short);
extern unsigned short (*v22) (unsigned short);
extern signed char v23 (unsigned char, signed short);
extern signed char (*v24) (unsigned char, signed short);
extern unsigned short v25 (signed char, unsigned char, signed int, unsigned short);
extern unsigned short (*v26) (signed char, unsigned char, signed int, unsigned short);
extern unsigned int v27 (signed int);
extern unsigned int (*v28) (signed int);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v135 = 7;
signed int v134 = 1;
signed int v133 = -4;

signed int v15 (signed int v136, signed short v137, signed char v138)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
signed short v141 = 0;
signed char v140 = 3;
signed int v139 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (unsigned char v142)
{
history[history_index++] = (int)v142;
{
for (;;) {
unsigned char v145 = 0;
signed int v144 = -1;
unsigned short v143 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
