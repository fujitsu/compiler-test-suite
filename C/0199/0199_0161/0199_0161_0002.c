#include <stdlib.h>
extern unsigned short v1 (signed int, unsigned char, signed short);
extern unsigned short (*v2) (signed int, unsigned char, signed short);
signed int v3 (signed char);
signed int (*v4) (signed char) = v3;
unsigned int v5 (unsigned int, unsigned int, signed short, signed int);
unsigned int (*v6) (unsigned int, unsigned int, signed short, signed int) = v5;
extern signed short v7 (unsigned short);
extern signed short (*v8) (unsigned short);
extern void v9 (unsigned short, signed short, signed short);
extern void (*v10) (unsigned short, signed short, signed short);
extern void v11 (signed short);
extern void (*v12) (signed short);
extern signed short v13 (unsigned short, unsigned int);
extern signed short (*v14) (unsigned short, unsigned int);
extern signed short v15 (signed short);
extern signed short (*v16) (signed short);
extern signed char v17 (signed char, signed char);
extern signed char (*v18) (signed char, signed char);
extern void v19 (unsigned int, signed int, unsigned int, signed char);
extern void (*v20) (unsigned int, signed int, unsigned int, signed char);
unsigned short v21 (void);
unsigned short (*v22) (void) = v21;
extern signed char v23 (void);
extern signed char (*v24) (void);
extern signed int v25 (unsigned int);
extern signed int (*v26) (unsigned int);
extern unsigned char v29 (unsigned int);
extern unsigned char (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v88 = 4U;
signed short v87 = -1;
unsigned short v86 = 4;

unsigned short v21 (void)
{
{
for (;;) {
unsigned int v91 = 2U;
signed char v90 = 0;
signed char v89 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (unsigned int v92, unsigned int v93, signed short v94, signed int v95)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
signed int v98 = -4;
unsigned int v97 = 6U;
signed int v96 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed char v99)
{
history[history_index++] = (int)v99;
{
for (;;) {
signed short v102 = -1;
unsigned int v101 = 3U;
signed short v100 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
