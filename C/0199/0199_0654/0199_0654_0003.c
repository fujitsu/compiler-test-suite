#include <stdlib.h>
extern unsigned short v1 (unsigned int, signed int);
extern unsigned short (*v2) (unsigned int, signed int);
extern void v3 (unsigned int, signed int);
extern void (*v4) (unsigned int, signed int);
extern unsigned short v5 (signed short, signed short);
extern unsigned short (*v6) (signed short, signed short);
extern signed short v7 (unsigned short, unsigned int, signed char, signed int);
extern signed short (*v8) (unsigned short, unsigned int, signed char, signed int);
extern signed int v9 (signed int, signed char, signed char, signed char);
extern signed int (*v10) (signed int, signed char, signed char, signed char);
extern void v11 (unsigned short, unsigned int);
extern void (*v12) (unsigned short, unsigned int);
signed char v13 (void);
signed char (*v14) (void) = v13;
unsigned char v15 (unsigned int, unsigned short, unsigned short, unsigned int);
unsigned char (*v16) (unsigned int, unsigned short, unsigned short, unsigned int) = v15;
extern signed char v17 (void);
extern signed char (*v18) (void);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed char v23 (signed int, signed int, signed char);
extern signed char (*v24) (signed int, signed int, signed char);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern signed char v27 (void);
extern signed char (*v28) (void);
extern unsigned char v29 (signed char, unsigned char, signed short);
extern unsigned char (*v30) (signed char, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v109 = 6;
signed char v108 = 0;
signed char v107 = -1;

unsigned char v15 (unsigned int v110, unsigned short v111, unsigned short v112, unsigned int v113)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
unsigned short v116 = 4;
signed char v115 = 1;
unsigned int v114 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (void)
{
{
for (;;) {
unsigned char v119 = 4;
signed int v118 = 3;
signed char v117 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
