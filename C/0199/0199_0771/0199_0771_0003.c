#include <stdlib.h>
extern signed int v1 (unsigned char);
extern signed int (*v2) (unsigned char);
extern unsigned int v3 (unsigned char, unsigned char, signed short);
extern unsigned int (*v4) (unsigned char, unsigned char, signed short);
extern signed char v5 (unsigned char, unsigned char);
extern signed char (*v6) (unsigned char, unsigned char);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
unsigned int v9 (signed char, unsigned char, unsigned char);
unsigned int (*v10) (signed char, unsigned char, unsigned char) = v9;
extern signed short v11 (unsigned int);
extern signed short (*v12) (unsigned int);
unsigned int v13 (unsigned char);
unsigned int (*v14) (unsigned char) = v13;
extern void v15 (signed int, signed int, signed int);
extern void (*v16) (signed int, signed int, signed int);
extern unsigned int v17 (unsigned int);
extern unsigned int (*v18) (unsigned int);
extern void v19 (unsigned int, signed int);
extern void (*v20) (unsigned int, signed int);
unsigned int v23 (signed int, unsigned char, signed int);
unsigned int (*v24) (signed int, unsigned char, signed int) = v23;
extern void v25 (unsigned short, signed int, unsigned char);
extern void (*v26) (unsigned short, signed int, unsigned char);
extern void v27 (unsigned short, unsigned int);
extern void (*v28) (unsigned short, unsigned int);
extern signed int v29 (signed char, signed short, signed short);
extern signed int (*v30) (signed char, signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v110 = -1;
unsigned short v109 = 4;
signed char v108 = 3;

unsigned int v23 (signed int v111, unsigned char v112, signed int v113)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
signed char v116 = -4;
signed char v115 = -4;
unsigned int v114 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (unsigned char v117)
{
history[history_index++] = (int)v117;
{
for (;;) {
signed int v120 = 3;
signed short v119 = -4;
signed char v118 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (signed char v121, unsigned char v122, unsigned char v123)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
signed char v126 = 1;
signed char v125 = 2;
unsigned int v124 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
