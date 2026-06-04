#include <stdlib.h>
extern unsigned char v1 (unsigned char, unsigned char);
extern unsigned char (*v2) (unsigned char, unsigned char);
extern unsigned int v3 (unsigned char, signed short, unsigned char, unsigned char);
extern unsigned int (*v4) (unsigned char, signed short, unsigned char, unsigned char);
signed short v5 (signed int, signed short, unsigned int, unsigned int);
signed short (*v6) (signed int, signed short, unsigned int, unsigned int) = v5;
extern unsigned int v7 (unsigned char, unsigned short, signed char, signed char);
extern unsigned int (*v8) (unsigned char, unsigned short, signed char, signed char);
extern void v9 (void);
extern void (*v10) (void);
signed short v11 (signed int);
signed short (*v12) (signed int) = v11;
extern unsigned short v13 (signed char, signed char, unsigned int);
extern unsigned short (*v14) (signed char, signed char, unsigned int);
extern void v15 (signed short);
extern void (*v16) (signed short);
extern void v17 (unsigned int, signed int);
extern void (*v18) (unsigned int, signed int);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern signed short v21 (signed short, signed short, signed int);
extern signed short (*v22) (signed short, signed short, signed int);
extern signed short v25 (unsigned short, unsigned int, unsigned int, unsigned int);
extern signed short (*v26) (unsigned short, unsigned int, unsigned int, unsigned int);
extern void v27 (void);
extern void (*v28) (void);
unsigned int v29 (unsigned short);
unsigned int (*v30) (unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v85 = -1;
unsigned char v84 = 1;
signed char v83 = 0;

unsigned int v29 (unsigned short v86)
{
history[history_index++] = (int)v86;
{
for (;;) {
signed short v89 = -3;
unsigned int v88 = 7U;
signed short v87 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (signed int v90)
{
history[history_index++] = (int)v90;
{
for (;;) {
unsigned char v93 = 2;
unsigned int v92 = 3U;
unsigned int v91 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (signed int v94, signed short v95, unsigned int v96, unsigned int v97)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed short v100 = 3;
signed int v99 = 0;
unsigned int v98 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
