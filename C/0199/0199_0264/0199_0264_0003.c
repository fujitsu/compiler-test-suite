#include <stdlib.h>
extern void v1 (signed int, unsigned char, signed int);
extern void (*v2) (signed int, unsigned char, signed int);
extern unsigned int v3 (signed short, unsigned char);
extern unsigned int (*v4) (signed short, unsigned char);
extern signed char v5 (unsigned int, signed short);
extern signed char (*v6) (unsigned int, signed short);
extern unsigned short v7 (unsigned int, unsigned short, signed char, unsigned int);
extern unsigned short (*v8) (unsigned int, unsigned short, signed char, unsigned int);
extern signed int v9 (signed short);
extern signed int (*v10) (signed short);
extern unsigned short v11 (signed char, unsigned short, unsigned short);
extern unsigned short (*v12) (signed char, unsigned short, unsigned short);
extern unsigned short v13 (signed char);
extern unsigned short (*v14) (signed char);
unsigned short v15 (signed int, unsigned int, signed int, signed int);
unsigned short (*v16) (signed int, unsigned int, signed int, signed int) = v15;
signed int v19 (void);
signed int (*v20) (void) = v19;
extern void v21 (unsigned char);
extern void (*v22) (unsigned char);
extern unsigned char v23 (signed int);
extern unsigned char (*v24) (signed int);
extern signed char v25 (unsigned char);
extern signed char (*v26) (unsigned char);
signed short v27 (signed char, unsigned short, unsigned int, unsigned int);
signed short (*v28) (signed char, unsigned short, unsigned int, unsigned int) = v27;
extern signed int v29 (unsigned short, signed int);
extern signed int (*v30) (unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v97 = 0;
unsigned char v96 = 5;
signed char v95 = 0;

signed short v27 (signed char v98, unsigned short v99, unsigned int v100, unsigned int v101)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
unsigned int v104 = 1U;
unsigned int v103 = 0U;
signed char v102 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (void)
{
{
for (;;) {
signed int v107 = -1;
unsigned short v106 = 2;
signed int v105 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (signed int v108, unsigned int v109, signed int v110, signed int v111)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
unsigned char v114 = 1;
signed short v113 = -4;
unsigned int v112 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
