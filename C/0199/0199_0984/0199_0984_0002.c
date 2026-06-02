#include <stdlib.h>
unsigned int v3 (unsigned int, signed int, unsigned int);
unsigned int (*v4) (unsigned int, signed int, unsigned int) = v3;
extern void v5 (unsigned int);
extern void (*v6) (unsigned int);
extern signed char v7 (signed short, signed short, unsigned char, unsigned char);
extern signed char (*v8) (signed short, signed short, unsigned char, unsigned char);
extern unsigned char v9 (signed int);
extern unsigned char (*v10) (signed int);
extern void v11 (unsigned short, signed short, signed int, signed int);
extern void (*v12) (unsigned short, signed short, signed int, signed int);
extern unsigned short v13 (unsigned char, unsigned char);
extern unsigned short (*v14) (unsigned char, unsigned char);
extern signed short v15 (signed char);
extern signed short (*v16) (signed char);
extern unsigned int v17 (unsigned int, signed char);
extern unsigned int (*v18) (unsigned int, signed char);
extern unsigned char v19 (signed int, unsigned char);
extern unsigned char (*v20) (signed int, unsigned char);
extern signed short v21 (unsigned short);
extern signed short (*v22) (unsigned short);
extern signed int v23 (unsigned char, unsigned int, unsigned int);
extern signed int (*v24) (unsigned char, unsigned int, unsigned int);
unsigned char v25 (void);
unsigned char (*v26) (void) = v25;
extern signed int v27 (unsigned char);
extern signed int (*v28) (unsigned char);
unsigned short v29 (signed char, unsigned int, unsigned short);
unsigned short (*v30) (signed char, unsigned int, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v95 = 4U;
signed char v94 = -4;
unsigned short v93 = 7;

unsigned short v29 (signed char v96, unsigned int v97, unsigned short v98)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed short v101 = -2;
unsigned int v100 = 2U;
signed char v99 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v25 (void)
{
{
for (;;) {
unsigned short v104 = 4;
signed short v103 = -1;
unsigned char v102 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (unsigned int v105, signed int v106, unsigned int v107)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
unsigned char v110 = 4;
signed int v109 = 0;
signed short v108 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
