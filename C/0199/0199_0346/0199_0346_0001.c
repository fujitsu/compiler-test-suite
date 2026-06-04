#include <stdlib.h>
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed int v5 (signed int, unsigned short, unsigned char);
extern signed int (*v6) (signed int, unsigned short, unsigned char);
unsigned short v7 (signed short, unsigned char);
unsigned short (*v8) (signed short, unsigned char) = v7;
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned int v11 (signed char, signed char);
extern unsigned int (*v12) (signed char, signed char);
extern unsigned int v13 (unsigned int, signed short, unsigned char, unsigned char);
extern unsigned int (*v14) (unsigned int, signed short, unsigned char, unsigned char);
extern signed short v15 (signed int, signed short, unsigned char, unsigned short);
extern signed short (*v16) (signed int, signed short, unsigned char, unsigned short);
extern signed char v17 (unsigned char, signed int, signed short, signed char);
extern signed char (*v18) (unsigned char, signed int, signed short, signed char);
signed int v19 (signed char, unsigned char, unsigned int, signed char);
signed int (*v20) (signed char, unsigned char, unsigned int, signed char) = v19;
unsigned char v21 (void);
unsigned char (*v22) (void) = v21;
extern unsigned short v23 (signed short, unsigned int, unsigned int, unsigned char);
extern unsigned short (*v24) (signed short, unsigned int, unsigned int, unsigned char);
extern unsigned int v25 (unsigned short);
extern unsigned int (*v26) (unsigned short);
extern void v27 (unsigned short);
extern void (*v28) (unsigned short);
extern unsigned char v29 (signed char, signed int, signed char);
extern unsigned char (*v30) (signed char, signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v93 = 7U;
signed short v92 = -1;
signed int v91 = 2;

unsigned char v21 (void)
{
{
for (;;) {
signed char v96 = -2;
signed int v95 = 1;
signed char v94 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (signed char v97, unsigned char v98, unsigned int v99, signed char v100)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed int v103 = -4;
unsigned int v102 = 3U;
unsigned short v101 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed short v104, unsigned char v105)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed char v108 = -1;
unsigned short v107 = 0;
signed int v106 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
