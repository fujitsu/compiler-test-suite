#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern signed short v3 (unsigned char, signed char);
extern signed short (*v4) (unsigned char, signed char);
extern signed short v5 (signed char, unsigned char, unsigned char);
extern signed short (*v6) (signed char, unsigned char, unsigned char);
extern signed int v7 (signed short, signed int);
extern signed int (*v8) (signed short, signed int);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned char v11 (signed short, unsigned char, signed int);
extern unsigned char (*v12) (signed short, unsigned char, signed int);
signed short v13 (signed char);
signed short (*v14) (signed char) = v13;
unsigned char v15 (signed int, unsigned char, unsigned short);
unsigned char (*v16) (signed int, unsigned char, unsigned short) = v15;
extern signed int v17 (unsigned short, signed int);
extern signed int (*v18) (unsigned short, signed int);
extern void v19 (signed int, unsigned int, signed char, signed char);
extern void (*v20) (signed int, unsigned int, signed char, signed char);
extern void v21 (unsigned int, signed int, unsigned short, signed int);
extern void (*v22) (unsigned int, signed int, unsigned short, signed int);
extern signed short v23 (unsigned char, signed int);
extern signed short (*v24) (unsigned char, signed int);
extern signed char v25 (unsigned short, unsigned short);
extern signed char (*v26) (unsigned short, unsigned short);
extern unsigned char v27 (unsigned short, unsigned short, unsigned short, unsigned int);
extern unsigned char (*v28) (unsigned short, unsigned short, unsigned short, unsigned int);
unsigned int v29 (signed char, signed int);
unsigned int (*v30) (signed char, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v101 = 1U;
unsigned char v100 = 1;
signed int v99 = -4;

unsigned int v29 (signed char v102, signed int v103)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
unsigned int v106 = 2U;
signed short v105 = 1;
unsigned short v104 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (signed int v107, unsigned char v108, unsigned short v109)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned int v112 = 3U;
unsigned int v111 = 7U;
signed char v110 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (signed char v113)
{
history[history_index++] = (int)v113;
{
for (;;) {
signed char v116 = -2;
unsigned char v115 = 0;
unsigned int v114 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
