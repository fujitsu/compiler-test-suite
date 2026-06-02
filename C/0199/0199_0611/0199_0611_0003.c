#include <stdlib.h>
extern signed int v1 (signed short, signed short, unsigned char, signed int);
extern signed int (*v2) (signed short, signed short, unsigned char, signed int);
extern unsigned int v3 (unsigned int, unsigned int, unsigned char, unsigned int);
extern unsigned int (*v4) (unsigned int, unsigned int, unsigned char, unsigned int);
unsigned char v5 (unsigned short, unsigned int, signed short, unsigned int);
unsigned char (*v6) (unsigned short, unsigned int, signed short, unsigned int) = v5;
extern signed char v7 (unsigned short, signed int, signed char);
extern signed char (*v8) (unsigned short, signed int, signed char);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned int v11 (unsigned int, unsigned int);
extern unsigned int (*v12) (unsigned int, unsigned int);
unsigned char v13 (signed short, signed int, unsigned char, unsigned int);
unsigned char (*v14) (signed short, signed int, unsigned char, unsigned int) = v13;
extern unsigned int v15 (unsigned short, unsigned int, unsigned char, unsigned int);
extern unsigned int (*v16) (unsigned short, unsigned int, unsigned char, unsigned int);
extern signed int v17 (signed short, signed int, signed char);
extern signed int (*v18) (signed short, signed int, signed char);
extern signed int v19 (unsigned char, unsigned char, signed short, signed int);
extern signed int (*v20) (unsigned char, unsigned char, signed short, signed int);
unsigned short v21 (void);
unsigned short (*v22) (void) = v21;
unsigned int v23 (unsigned int, signed int);
unsigned int (*v24) (unsigned int, signed int) = v23;
extern unsigned int v25 (unsigned char, signed int, unsigned short, signed short);
extern unsigned int (*v26) (unsigned char, signed int, unsigned short, signed short);
extern signed short v27 (unsigned short);
extern signed short (*v28) (unsigned short);
extern unsigned int v29 (signed char, signed int, signed short);
extern unsigned int (*v30) (signed char, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v105 = -4;
signed short v104 = 3;
signed short v103 = 3;

unsigned int v23 (unsigned int v106, signed int v107)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
signed int v110 = 2;
unsigned char v109 = 5;
unsigned char v108 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (void)
{
{
for (;;) {
signed char v113 = -4;
unsigned short v112 = 1;
unsigned short v111 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (signed short v114, signed int v115, unsigned char v116, unsigned int v117)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
unsigned short v120 = 0;
signed char v119 = -1;
unsigned char v118 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned short v121, unsigned int v122, signed short v123, unsigned int v124)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
signed int v127 = 2;
signed char v126 = -2;
signed short v125 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
