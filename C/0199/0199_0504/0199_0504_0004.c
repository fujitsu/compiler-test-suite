#include <stdlib.h>
extern void v1 (unsigned int);
extern void (*v2) (unsigned int);
unsigned char v5 (signed int, signed short, unsigned short);
unsigned char (*v6) (signed int, signed short, unsigned short) = v5;
extern signed short v9 (unsigned char, unsigned short, unsigned int, unsigned int);
extern signed short (*v10) (unsigned char, unsigned short, unsigned int, unsigned int);
extern void v11 (unsigned char);
extern void (*v12) (unsigned char);
extern signed char v13 (unsigned char, unsigned short);
extern signed char (*v14) (unsigned char, unsigned short);
extern void v15 (signed short, unsigned char);
extern void (*v16) (signed short, unsigned char);
extern unsigned int v17 (unsigned short, signed int);
extern unsigned int (*v18) (unsigned short, signed int);
signed int v19 (signed char, unsigned short);
signed int (*v20) (signed char, unsigned short) = v19;
extern signed short v21 (void);
extern signed short (*v22) (void);
extern void v23 (unsigned int, unsigned char, unsigned char);
extern void (*v24) (unsigned int, unsigned char, unsigned char);
extern signed short v25 (signed int, signed int, signed char);
extern signed short (*v26) (signed int, signed int, signed char);
extern unsigned short v27 (signed int, signed short);
extern unsigned short (*v28) (signed int, signed short);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v129 = 4U;
signed int v128 = 3;
signed short v127 = 0;

signed int v19 (signed char v130, unsigned short v131)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
unsigned int v134 = 4U;
unsigned int v133 = 3U;
unsigned int v132 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (signed int v135, signed short v136, unsigned short v137)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
unsigned int v140 = 7U;
unsigned short v139 = 7;
signed char v138 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
