#include <stdlib.h>
extern signed short v3 (unsigned int, signed char);
extern signed short (*v4) (unsigned int, signed char);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern signed int v13 (unsigned short, unsigned short);
extern signed int (*v14) (unsigned short, unsigned short);
extern signed char v15 (unsigned char, signed short, signed int, unsigned int);
extern signed char (*v16) (unsigned char, signed short, signed int, unsigned int);
extern signed int v19 (unsigned short);
extern signed int (*v20) (unsigned short);
void v21 (signed short, signed short, unsigned short, signed char);
void (*v22) (signed short, signed short, unsigned short, signed char) = v21;
extern unsigned int v23 (signed int);
extern unsigned int (*v24) (signed int);
extern signed int v25 (signed short, unsigned int, signed short);
extern signed int (*v26) (signed short, unsigned int, signed short);
extern signed char v27 (void);
extern signed char (*v28) (void);
unsigned short v29 (signed char, unsigned int, signed short, signed char);
unsigned short (*v30) (signed char, unsigned int, signed short, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v85 = 1;
unsigned int v84 = 6U;
signed char v83 = -1;

unsigned short v29 (signed char v86, unsigned int v87, signed short v88, signed char v89)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned char v92 = 0;
signed short v91 = 1;
signed int v90 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v21 (signed short v93, signed short v94, unsigned short v95, signed char v96)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed char v99 = 0;
unsigned short v98 = 1;
signed int v97 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
