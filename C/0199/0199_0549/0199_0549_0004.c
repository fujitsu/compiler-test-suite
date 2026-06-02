#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
unsigned short v5 (signed char);
unsigned short (*v6) (signed char) = v5;
extern unsigned short v7 (signed short, unsigned short, unsigned int);
extern unsigned short (*v8) (signed short, unsigned short, unsigned int);
signed char v9 (unsigned short, signed char);
signed char (*v10) (unsigned short, signed char) = v9;
extern signed int v11 (signed char, unsigned char);
extern signed int (*v12) (signed char, unsigned char);
extern unsigned char v13 (signed int, signed int, unsigned short, signed short);
extern unsigned char (*v14) (signed int, signed int, unsigned short, signed short);
extern signed char v15 (unsigned int, signed int, unsigned short);
extern signed char (*v16) (unsigned int, signed int, unsigned short);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern void v23 (signed int, unsigned int, signed int);
extern void (*v24) (signed int, unsigned int, signed int);
extern signed char v25 (signed int, signed int, unsigned int, unsigned short);
extern signed char (*v26) (signed int, signed int, unsigned int, unsigned short);
extern unsigned char v27 (signed int, signed short, unsigned char, signed int);
extern unsigned char (*v28) (signed int, signed short, unsigned char, signed int);
unsigned char v29 (unsigned short, unsigned short, signed short, unsigned short);
unsigned char (*v30) (unsigned short, unsigned short, signed short, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v129 = 0U;
signed short v128 = -4;
unsigned char v127 = 5;

unsigned char v29 (unsigned short v130, unsigned short v131, signed short v132, unsigned short v133)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
unsigned short v136 = 5;
unsigned short v135 = 1;
signed int v134 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (unsigned short v137, signed char v138)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
signed int v141 = 2;
signed char v140 = -2;
signed int v139 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (signed char v142)
{
history[history_index++] = (int)v142;
{
for (;;) {
signed char v145 = -2;
unsigned short v144 = 0;
unsigned char v143 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
