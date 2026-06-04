#include <stdlib.h>
extern signed int v1 (signed int, signed short, signed char, unsigned int);
extern signed int (*v2) (signed int, signed short, signed char, unsigned int);
extern signed int v3 (unsigned short, signed short, signed char);
extern signed int (*v4) (unsigned short, signed short, signed char);
extern signed short v5 (unsigned int, unsigned short);
extern signed short (*v6) (unsigned int, unsigned short);
extern void v7 (unsigned short);
extern void (*v8) (unsigned short);
extern unsigned short v9 (unsigned short);
extern unsigned short (*v10) (unsigned short);
extern unsigned char v11 (unsigned char, unsigned short, signed int, unsigned char);
extern unsigned char (*v12) (unsigned char, unsigned short, signed int, unsigned char);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern signed int v21 (unsigned int, unsigned int, unsigned char, signed int);
extern signed int (*v22) (unsigned int, unsigned int, unsigned char, signed int);
unsigned int v23 (signed char, signed short, unsigned char);
unsigned int (*v24) (signed char, signed short, unsigned char) = v23;
extern signed int v25 (signed short, unsigned short);
extern signed int (*v26) (signed short, unsigned short);
signed char v27 (signed short, unsigned short);
signed char (*v28) (signed short, unsigned short) = v27;
extern void v29 (unsigned char, signed int, signed short, unsigned int);
extern void (*v30) (unsigned char, signed int, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v135 = 0;
unsigned char v134 = 2;
signed char v133 = -3;

signed char v27 (signed short v136, unsigned short v137)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed short v140 = -4;
unsigned int v139 = 5U;
signed short v138 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v23 (signed char v141, signed short v142, unsigned char v143)
{
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
unsigned short v146 = 4;
unsigned int v145 = 0U;
signed short v144 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
