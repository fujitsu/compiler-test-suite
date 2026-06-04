#include <stdlib.h>
extern unsigned char v1 (unsigned char, unsigned int, unsigned char, signed char);
extern unsigned char (*v2) (unsigned char, unsigned int, unsigned char, signed char);
extern unsigned int v3 (unsigned short, signed short, signed int);
extern unsigned int (*v4) (unsigned short, signed short, signed int);
signed char v5 (signed char, unsigned char, signed char);
signed char (*v6) (signed char, unsigned char, signed char) = v5;
extern unsigned char v7 (signed int);
extern unsigned char (*v8) (signed int);
extern signed char v9 (signed short, signed char, unsigned int, signed short);
extern signed char (*v10) (signed short, signed char, unsigned int, signed short);
extern unsigned char v11 (unsigned int, unsigned int);
extern unsigned char (*v12) (unsigned int, unsigned int);
extern signed int v13 (signed short);
extern signed int (*v14) (signed short);
extern unsigned int v15 (unsigned short, unsigned short, signed int, signed int);
extern unsigned int (*v16) (unsigned short, unsigned short, signed int, signed int);
signed char v17 (unsigned short, signed int, unsigned short);
signed char (*v18) (unsigned short, signed int, unsigned short) = v17;
extern unsigned short v19 (unsigned char, unsigned short);
extern unsigned short (*v20) (unsigned char, unsigned short);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern void v23 (signed char, unsigned short);
extern void (*v24) (signed char, unsigned short);
extern unsigned short v25 (signed int, signed int, unsigned short);
extern unsigned short (*v26) (signed int, signed int, unsigned short);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
signed short v29 (void);
signed short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v134 = 2U;
unsigned char v133 = 3;
signed short v132 = -3;

signed short v29 (void)
{
{
for (;;) {
unsigned int v137 = 0U;
unsigned char v136 = 3;
unsigned char v135 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (unsigned short v138, signed int v139, unsigned short v140)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
unsigned short v143 = 2;
unsigned char v142 = 0;
signed short v141 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (signed char v144, unsigned char v145, signed char v146)
{
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
signed char v149 = 2;
signed char v148 = -2;
unsigned int v147 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
