#include <stdlib.h>
extern unsigned char v1 (signed char, signed short, unsigned short);
extern unsigned char (*v2) (signed char, signed short, unsigned short);
extern void v3 (signed int, signed char, signed char);
extern void (*v4) (signed int, signed char, signed char);
extern signed int v5 (unsigned char, signed char, signed int);
extern signed int (*v6) (unsigned char, signed char, signed int);
unsigned short v7 (signed short, signed char);
unsigned short (*v8) (signed short, signed char) = v7;
extern unsigned char v9 (signed int, unsigned short, unsigned short);
extern unsigned char (*v10) (signed int, unsigned short, unsigned short);
extern void v11 (unsigned int, signed int);
extern void (*v12) (unsigned int, signed int);
extern signed int v13 (unsigned int, unsigned char);
extern signed int (*v14) (unsigned int, unsigned char);
unsigned int v15 (void);
unsigned int (*v16) (void) = v15;
unsigned short v17 (signed char, signed short, unsigned short);
unsigned short (*v18) (signed char, signed short, unsigned short) = v17;
extern signed short v19 (signed char);
extern signed short (*v20) (signed char);
extern void v21 (signed char, signed short);
extern void (*v22) (signed char, signed short);
extern signed int v23 (unsigned char, unsigned int, unsigned int);
extern signed int (*v24) (unsigned char, unsigned int, unsigned int);
extern signed char v25 (signed char);
extern signed char (*v26) (signed char);
extern signed int v27 (signed short, unsigned char, signed char);
extern signed int (*v28) (signed short, unsigned char, signed char);
extern unsigned short v29 (unsigned int, unsigned short, unsigned char);
extern unsigned short (*v30) (unsigned int, unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v105 = 7U;
signed int v104 = 1;
signed char v103 = 2;

unsigned short v17 (signed char v106, signed short v107, unsigned short v108)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
unsigned int v111 = 2U;
unsigned int v110 = 3U;
unsigned int v109 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (void)
{
{
for (;;) {
unsigned short v114 = 5;
unsigned short v113 = 6;
unsigned char v112 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed short v115, signed char v116)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
unsigned int v119 = 0U;
signed int v118 = 0;
unsigned short v117 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
