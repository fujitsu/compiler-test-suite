#include <stdlib.h>
extern signed int v3 (unsigned short, unsigned int);
extern signed int (*v4) (unsigned short, unsigned int);
extern signed short v7 (unsigned char, signed int, signed char, unsigned short);
extern signed short (*v8) (unsigned char, signed int, signed char, unsigned short);
extern unsigned int v9 (unsigned short);
extern unsigned int (*v10) (unsigned short);
void v11 (void);
void (*v12) (void) = v11;
unsigned int v15 (signed char, unsigned int, unsigned short);
unsigned int (*v16) (signed char, unsigned int, unsigned short) = v15;
signed short v17 (void);
signed short (*v18) (void) = v17;
extern signed short v19 (void);
extern signed short (*v20) (void);
extern signed char v21 (signed char, unsigned short, unsigned int, unsigned int);
extern signed char (*v22) (signed char, unsigned short, unsigned int, unsigned int);
extern unsigned int v23 (signed short, unsigned int, signed int, signed short);
extern unsigned int (*v24) (signed short, unsigned int, signed int, signed short);
extern signed short v25 (signed int);
extern signed short (*v26) (signed int);
extern unsigned int v27 (signed int, unsigned short);
extern unsigned int (*v28) (signed int, unsigned short);
extern signed short v29 (signed short);
extern signed short (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v88 = 3U;
signed short v87 = 0;
signed int v86 = 2;

signed short v17 (void)
{
{
for (;;) {
unsigned short v91 = 3;
unsigned char v90 = 4;
signed char v89 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (signed char v92, unsigned int v93, unsigned short v94)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
unsigned short v97 = 6;
unsigned char v96 = 7;
unsigned int v95 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (void)
{
{
for (;;) {
signed int v100 = 3;
signed short v99 = 1;
signed char v98 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
