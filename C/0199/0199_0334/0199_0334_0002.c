#include <stdlib.h>
extern unsigned int v3 (unsigned int);
extern unsigned int (*v4) (unsigned int);
signed char v5 (unsigned char, signed short);
signed char (*v6) (unsigned char, signed short) = v5;
extern signed int v7 (unsigned char, signed short);
extern signed int (*v8) (unsigned char, signed short);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern signed short v13 (unsigned char);
extern signed short (*v14) (unsigned char);
extern unsigned short v15 (signed char, signed char, unsigned char, signed char);
extern unsigned short (*v16) (signed char, signed char, unsigned char, signed char);
void v17 (signed char, unsigned char, signed char);
void (*v18) (signed char, unsigned char, signed char) = v17;
extern unsigned short v19 (unsigned int, signed int, signed char);
extern unsigned short (*v20) (unsigned int, signed int, signed char);
extern void v21 (signed short, signed char, unsigned int);
extern void (*v22) (signed short, signed char, unsigned int);
signed int v23 (unsigned short);
signed int (*v24) (unsigned short) = v23;
extern void v25 (unsigned short, signed short);
extern void (*v26) (unsigned short, signed short);
extern unsigned short v27 (signed short, unsigned int, unsigned short, unsigned int);
extern unsigned short (*v28) (signed short, unsigned int, unsigned short, unsigned int);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v86 = 2U;
signed short v85 = 0;
unsigned short v84 = 4;

signed int v23 (unsigned short v87)
{
history[history_index++] = (int)v87;
{
for (;;) {
unsigned short v90 = 2;
unsigned char v89 = 3;
signed int v88 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (signed char v91, unsigned char v92, signed char v93)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
unsigned char v96 = 4;
unsigned short v95 = 1;
signed int v94 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (unsigned char v97, signed short v98)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
unsigned char v101 = 5;
unsigned short v100 = 2;
unsigned short v99 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
