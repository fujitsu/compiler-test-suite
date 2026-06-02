#include <stdlib.h>
extern unsigned char v1 (signed int);
extern unsigned char (*v2) (signed int);
signed int v3 (unsigned short, unsigned char, signed short);
signed int (*v4) (unsigned short, unsigned char, signed short) = v3;
extern signed short v5 (unsigned int, unsigned char, signed char);
extern signed short (*v6) (unsigned int, unsigned char, signed char);
extern signed short v7 (unsigned char, signed char, signed char);
extern signed short (*v8) (unsigned char, signed char, signed char);
void v9 (unsigned int, signed int, signed char, unsigned int);
void (*v10) (unsigned int, signed int, signed char, unsigned int) = v9;
extern unsigned int v11 (unsigned int, signed short, unsigned char);
extern unsigned int (*v12) (unsigned int, signed short, unsigned char);
extern signed char v13 (signed char, unsigned int, unsigned short);
extern signed char (*v14) (signed char, unsigned int, unsigned short);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern signed short v19 (signed char, unsigned short, signed short, unsigned char);
extern signed short (*v20) (signed char, unsigned short, signed short, unsigned char);
extern unsigned char v21 (unsigned short, unsigned int);
extern unsigned char (*v22) (unsigned short, unsigned int);
extern signed short v23 (signed char);
extern signed short (*v24) (signed char);
extern void v25 (signed short, signed short);
extern void (*v26) (signed short, signed short);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
signed int v29 (void);
signed int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v96 = -2;
unsigned int v95 = 3U;
unsigned char v94 = 7;

signed int v29 (void)
{
{
for (;;) {
signed int v99 = -1;
unsigned char v98 = 7;
signed char v97 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (unsigned int v100, signed int v101, signed char v102, unsigned int v103)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed int v106 = 3;
signed char v105 = 3;
unsigned int v104 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (unsigned short v107, unsigned char v108, signed short v109)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned int v112 = 0U;
unsigned char v111 = 1;
signed short v110 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
