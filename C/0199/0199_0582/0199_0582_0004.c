#include <stdlib.h>
extern signed char v1 (signed int, signed int, signed char);
extern signed char (*v2) (signed int, signed int, signed char);
extern unsigned short v3 (unsigned short);
extern unsigned short (*v4) (unsigned short);
signed char v5 (void);
signed char (*v6) (void) = v5;
extern unsigned char v7 (signed int, signed char, unsigned char);
extern unsigned char (*v8) (signed int, signed char, unsigned char);
extern void v9 (void);
extern void (*v10) (void);
unsigned char v11 (void);
unsigned char (*v12) (void) = v11;
extern unsigned int v13 (signed short);
extern unsigned int (*v14) (signed short);
extern unsigned int v15 (signed short);
extern unsigned int (*v16) (signed short);
signed short v17 (signed char, signed int, unsigned char);
signed short (*v18) (signed char, signed int, unsigned char) = v17;
unsigned short v19 (unsigned int, signed char, signed char, signed int);
unsigned short (*v20) (unsigned int, signed char, signed char, signed int) = v19;
extern unsigned short v21 (signed short, signed short, signed int);
extern unsigned short (*v22) (signed short, signed short, signed int);
extern unsigned int v23 (unsigned char, unsigned char, unsigned char, unsigned int);
extern unsigned int (*v24) (unsigned char, unsigned char, unsigned char, unsigned int);
extern void v25 (unsigned short, signed char);
extern void (*v26) (unsigned short, signed char);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v117 = 3;
unsigned int v116 = 0U;
signed short v115 = -1;

unsigned short v19 (unsigned int v118, signed char v119, signed char v120, signed int v121)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned char v124 = 0;
signed short v123 = 3;
signed short v122 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (signed char v125, signed int v126, unsigned char v127)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
signed char v130 = -3;
signed short v129 = -4;
unsigned int v128 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (void)
{
{
for (;;) {
unsigned short v133 = 4;
signed char v132 = -4;
unsigned int v131 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (void)
{
{
for (;;) {
signed short v136 = -1;
signed short v135 = 2;
signed int v134 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
