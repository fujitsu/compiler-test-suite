#include <stdlib.h>
extern unsigned int v3 (signed short, signed char, unsigned int);
extern unsigned int (*v4) (signed short, signed char, unsigned int);
unsigned char v5 (unsigned int, signed char, signed int, unsigned int);
unsigned char (*v6) (unsigned int, signed char, signed int, unsigned int) = v5;
extern void v7 (void);
extern void (*v8) (void);
extern signed int v9 (signed int, signed int, signed short);
extern signed int (*v10) (signed int, signed int, signed short);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern signed int v13 (unsigned char, signed short);
extern signed int (*v14) (unsigned char, signed short);
extern signed short v15 (signed char, signed short, unsigned int, unsigned short);
extern signed short (*v16) (signed char, signed short, unsigned int, unsigned short);
signed short v17 (unsigned int);
signed short (*v18) (unsigned int) = v17;
extern unsigned char v19 (signed int, unsigned int, signed int);
extern unsigned char (*v20) (signed int, unsigned int, signed int);
extern signed int v21 (signed char, signed int, signed char, unsigned char);
extern signed int (*v22) (signed char, signed int, signed char, unsigned char);
extern void v23 (unsigned short, signed short, signed char, unsigned char);
extern void (*v24) (unsigned short, signed short, signed char, unsigned char);
extern signed int v25 (signed char, signed short);
extern signed int (*v26) (signed char, signed short);
signed int v27 (signed int, signed short);
signed int (*v28) (signed int, signed short) = v27;
extern signed short v29 (unsigned short);
extern signed short (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v97 = 3U;
signed char v96 = -2;
signed char v95 = -4;

signed int v27 (signed int v98, signed short v99)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
signed short v102 = 2;
signed char v101 = -1;
signed int v100 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (unsigned int v103)
{
history[history_index++] = (int)v103;
{
for (;;) {
signed short v106 = -3;
unsigned short v105 = 7;
unsigned int v104 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned int v107, signed char v108, signed int v109, unsigned int v110)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
unsigned short v113 = 2;
unsigned int v112 = 7U;
unsigned int v111 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
