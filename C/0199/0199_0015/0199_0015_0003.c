#include <stdlib.h>
extern signed char v3 (signed int, unsigned char, unsigned char);
extern signed char (*v4) (signed int, unsigned char, unsigned char);
extern signed char v5 (unsigned int);
extern signed char (*v6) (unsigned int);
extern signed char v7 (unsigned short, signed int);
extern signed char (*v8) (unsigned short, signed int);
signed short v9 (signed char, signed int);
signed short (*v10) (signed char, signed int) = v9;
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
void v15 (void);
void (*v16) (void) = v15;
extern void v17 (void);
extern void (*v18) (void);
extern unsigned char v19 (signed char, signed char, unsigned int);
extern unsigned char (*v20) (signed char, signed char, unsigned int);
signed char v21 (signed int, signed short, signed int, signed int);
signed char (*v22) (signed int, signed short, signed int, signed int) = v21;
extern signed char v23 (unsigned short);
extern signed char (*v24) (unsigned short);
extern signed short v25 (void);
extern signed short (*v26) (void);
unsigned short v27 (signed int, unsigned short);
unsigned short (*v28) (signed int, unsigned short) = v27;
extern int history[];
extern int history_index;
extern int trace;
signed short v101 = -1;
signed int v100 = 3;
unsigned short v99 = 0;

unsigned short v27 (signed int v102, unsigned short v103)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed short v106 = 2;
signed short v105 = 0;
unsigned short v104 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v21 (signed int v107, signed short v108, signed int v109, signed int v110)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed short v113 = -3;
unsigned short v112 = 3;
unsigned short v111 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (void)
{
{
for (;;) {
unsigned char v116 = 1;
unsigned int v115 = 2U;
unsigned int v114 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (signed char v117, signed int v118)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
signed short v121 = 1;
signed int v120 = -4;
signed int v119 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
