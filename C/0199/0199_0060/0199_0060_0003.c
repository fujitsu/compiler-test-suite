#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
signed int v3 (signed char, signed int, signed int);
signed int (*v4) (signed char, signed int, signed int) = v3;
extern void v5 (unsigned char, signed short, unsigned short, unsigned int);
extern void (*v6) (unsigned char, signed short, unsigned short, unsigned int);
extern unsigned short v7 (signed int, signed int, signed short);
extern unsigned short (*v8) (signed int, signed int, signed short);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern signed char v11 (unsigned short, unsigned int);
extern signed char (*v12) (unsigned short, unsigned int);
extern void v13 (signed short, signed char, signed short);
extern void (*v14) (signed short, signed char, signed short);
extern signed char v15 (unsigned char, signed int, unsigned char);
extern signed char (*v16) (unsigned char, signed int, unsigned char);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern unsigned char v19 (unsigned char);
extern unsigned char (*v20) (unsigned char);
extern unsigned char v21 (unsigned int, signed char, signed short);
extern unsigned char (*v22) (unsigned int, signed char, signed short);
extern unsigned short v23 (unsigned short, unsigned short, signed int, unsigned char);
extern unsigned short (*v24) (unsigned short, unsigned short, signed int, unsigned char);
signed char v25 (void);
signed char (*v26) (void) = v25;
extern unsigned char v27 (unsigned short, signed char, signed int, unsigned short);
extern unsigned char (*v28) (unsigned short, signed char, signed int, unsigned short);
void v29 (unsigned char, signed int, unsigned short, signed int);
void (*v30) (unsigned char, signed int, unsigned short, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v108 = -2;
unsigned char v107 = 7;
signed int v106 = -4;

void v29 (unsigned char v109, signed int v110, unsigned short v111, signed int v112)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned short v115 = 0;
signed char v114 = 2;
signed int v113 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v25 (void)
{
{
for (;;) {
unsigned int v118 = 1U;
signed short v117 = -3;
signed char v116 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed char v119, signed int v120, signed int v121)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned short v124 = 0;
unsigned int v123 = 6U;
signed char v122 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
