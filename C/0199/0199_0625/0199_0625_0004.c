#include <stdlib.h>
extern signed char v1 (signed short);
extern signed char (*v2) (signed short);
extern unsigned short v3 (unsigned char, unsigned int, unsigned short, signed char);
extern unsigned short (*v4) (unsigned char, unsigned int, unsigned short, signed char);
extern signed short v5 (unsigned short);
extern signed short (*v6) (unsigned short);
extern unsigned char v7 (unsigned short, signed int);
extern unsigned char (*v8) (unsigned short, signed int);
extern signed short v9 (signed char);
extern signed short (*v10) (signed char);
signed int v11 (unsigned short, unsigned int, signed short, signed short);
signed int (*v12) (unsigned short, unsigned int, signed short, signed short) = v11;
unsigned short v13 (signed short);
unsigned short (*v14) (signed short) = v13;
signed short v15 (unsigned char, unsigned char, signed int, unsigned short);
signed short (*v16) (unsigned char, unsigned char, signed int, unsigned short) = v15;
extern signed int v17 (signed char, unsigned char);
extern signed int (*v18) (signed char, unsigned char);
extern signed int v19 (signed short, signed char);
extern signed int (*v20) (signed short, signed char);
extern signed short v21 (signed int, unsigned int);
extern signed short (*v22) (signed int, unsigned int);
extern unsigned char v23 (unsigned short, unsigned int, signed char);
extern unsigned char (*v24) (unsigned short, unsigned int, signed char);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern unsigned char v27 (signed int, unsigned char, signed short, unsigned short);
extern unsigned char (*v28) (signed int, unsigned char, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v113 = 5;
signed char v112 = -4;
signed short v111 = 3;

signed short v15 (unsigned char v114, unsigned char v115, signed int v116, unsigned short v117)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
signed char v120 = 0;
unsigned short v119 = 2;
signed char v118 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (signed short v121)
{
history[history_index++] = (int)v121;
{
for (;;) {
unsigned char v124 = 7;
unsigned char v123 = 4;
signed int v122 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (unsigned short v125, unsigned int v126, signed short v127, signed short v128)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
unsigned char v131 = 2;
unsigned char v130 = 7;
unsigned short v129 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
