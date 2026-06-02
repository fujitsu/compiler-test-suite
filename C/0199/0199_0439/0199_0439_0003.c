#include <stdlib.h>
extern void v1 (signed short, unsigned char, signed int, unsigned int);
extern void (*v2) (signed short, unsigned char, signed int, unsigned int);
extern unsigned int v3 (signed char);
extern unsigned int (*v4) (signed char);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern signed short v7 (signed short, unsigned int);
extern signed short (*v8) (signed short, unsigned int);
extern signed int v9 (unsigned short);
extern signed int (*v10) (unsigned short);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern unsigned char v15 (unsigned short);
extern unsigned char (*v16) (unsigned short);
extern unsigned char v17 (signed int, unsigned short, unsigned char);
extern unsigned char (*v18) (signed int, unsigned short, unsigned char);
extern unsigned short v19 (signed char);
extern unsigned short (*v20) (signed char);
extern void v21 (unsigned int, signed int, unsigned int, unsigned char);
extern void (*v22) (unsigned int, signed int, unsigned int, unsigned char);
signed int v23 (unsigned short, signed char);
signed int (*v24) (unsigned short, signed char) = v23;
unsigned short v25 (signed short, unsigned int, unsigned int, unsigned char);
unsigned short (*v26) (signed short, unsigned int, unsigned int, unsigned char) = v25;
extern unsigned short v27 (signed char);
extern unsigned short (*v28) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v109 = 4;
signed int v108 = 2;
signed short v107 = 0;

unsigned short v25 (signed short v110, unsigned int v111, unsigned int v112, unsigned char v113)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
unsigned int v116 = 1U;
signed char v115 = 3;
signed short v114 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v23 (unsigned short v117, signed char v118)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
signed short v121 = -1;
unsigned short v120 = 3;
unsigned char v119 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
