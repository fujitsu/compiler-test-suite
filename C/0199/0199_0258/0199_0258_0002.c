#include <stdlib.h>
extern void v3 (signed short, signed int, signed short, signed int);
extern void (*v4) (signed short, signed int, signed short, signed int);
void v5 (signed int, signed int, unsigned short);
void (*v6) (signed int, signed int, unsigned short) = v5;
extern signed short v7 (unsigned int, unsigned char, unsigned short);
extern signed short (*v8) (unsigned int, unsigned char, unsigned short);
extern unsigned short v9 (unsigned int, signed char);
extern unsigned short (*v10) (unsigned int, signed char);
extern signed int v13 (unsigned char);
extern signed int (*v14) (unsigned char);
extern unsigned char v15 (signed short, unsigned char, unsigned int);
extern unsigned char (*v16) (signed short, unsigned char, unsigned int);
signed short v17 (signed int, signed char, unsigned char, signed short);
signed short (*v18) (signed int, signed char, unsigned char, signed short) = v17;
extern unsigned char v21 (signed char);
extern unsigned char (*v22) (signed char);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern unsigned char v27 (unsigned char, unsigned char, signed char);
extern unsigned char (*v28) (unsigned char, unsigned char, signed char);
signed int v29 (unsigned char, unsigned int, unsigned int);
signed int (*v30) (unsigned char, unsigned int, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v93 = -4;
signed int v92 = -3;
unsigned short v91 = 6;

signed int v29 (unsigned char v94, unsigned int v95, unsigned int v96)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed int v99 = -2;
unsigned short v98 = 4;
unsigned char v97 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (signed int v100, signed char v101, unsigned char v102, signed short v103)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
unsigned char v106 = 4;
signed char v105 = -1;
unsigned char v104 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (signed int v107, signed int v108, unsigned short v109)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
signed short v112 = 0;
signed char v111 = 3;
unsigned int v110 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
