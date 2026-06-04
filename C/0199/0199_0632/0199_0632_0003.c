#include <stdlib.h>
extern signed int v1 (signed short, unsigned int, signed int);
extern signed int (*v2) (signed short, unsigned int, signed int);
extern signed short v3 (signed short);
extern signed short (*v4) (signed short);
unsigned int v5 (void);
unsigned int (*v6) (void) = v5;
unsigned short v7 (signed char, unsigned short, signed int, unsigned int);
unsigned short (*v8) (signed char, unsigned short, signed int, unsigned int) = v7;
extern signed int v9 (unsigned char, unsigned int);
extern signed int (*v10) (unsigned char, unsigned int);
extern signed char v11 (unsigned short, unsigned char, unsigned char, unsigned int);
extern signed char (*v12) (unsigned short, unsigned char, unsigned char, unsigned int);
extern unsigned char v13 (signed char, unsigned int, unsigned char);
extern unsigned char (*v14) (signed char, unsigned int, unsigned char);
extern signed int v15 (signed char, signed short, signed short);
extern signed int (*v16) (signed char, signed short, signed short);
extern signed short v17 (unsigned int, signed int, signed int);
extern signed short (*v18) (unsigned int, signed int, signed int);
extern void v19 (signed int, signed char, signed short);
extern void (*v20) (signed int, signed char, signed short);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern signed short v23 (unsigned char, signed char);
extern signed short (*v24) (unsigned char, signed char);
unsigned char v25 (unsigned char, unsigned char, signed short);
unsigned char (*v26) (unsigned char, unsigned char, signed short) = v25;
extern unsigned char v27 (unsigned int, signed short);
extern unsigned char (*v28) (unsigned int, signed short);
extern signed short v29 (signed short, unsigned char);
extern signed short (*v30) (signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v94 = -1;
signed char v93 = -4;
unsigned int v92 = 5U;

unsigned char v25 (unsigned char v95, unsigned char v96, signed short v97)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed char v100 = 2;
signed short v99 = 2;
unsigned int v98 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed char v101, unsigned short v102, signed int v103, unsigned int v104)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
signed short v107 = -4;
signed int v106 = -4;
unsigned short v105 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (void)
{
{
for (;;) {
unsigned short v110 = 6;
signed short v109 = 1;
unsigned char v108 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
