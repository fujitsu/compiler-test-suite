#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern void v3 (signed char, unsigned short, unsigned short);
extern void (*v4) (signed char, unsigned short, unsigned short);
signed char v5 (void);
signed char (*v6) (void) = v5;
extern unsigned char v7 (signed short, unsigned int, signed char, signed short);
extern unsigned char (*v8) (signed short, unsigned int, signed char, signed short);
void v9 (void);
void (*v10) (void) = v9;
extern unsigned short v11 (unsigned int);
extern unsigned short (*v12) (unsigned int);
extern signed int v13 (unsigned int, signed short, unsigned short, unsigned char);
extern signed int (*v14) (unsigned int, signed short, unsigned short, unsigned char);
extern signed short v15 (unsigned short, unsigned int, signed char);
extern signed short (*v16) (unsigned short, unsigned int, signed char);
extern signed int v17 (signed char, signed int, unsigned int, signed short);
extern signed int (*v18) (signed char, signed int, unsigned int, signed short);
signed int v19 (signed char, unsigned int, signed char, signed int);
signed int (*v20) (signed char, unsigned int, signed char, signed int) = v19;
signed int v21 (unsigned char, signed char, signed char);
signed int (*v22) (unsigned char, signed char, signed char) = v21;
extern unsigned int v23 (unsigned char, unsigned char, signed short);
extern unsigned int (*v24) (unsigned char, unsigned char, signed short);
extern void v25 (unsigned char);
extern void (*v26) (unsigned char);
extern signed char v27 (unsigned char, signed int, signed short);
extern signed char (*v28) (unsigned char, signed int, signed short);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v70 = -4;
signed short v69 = 0;
signed short v68 = 0;

signed int v21 (unsigned char v71, signed char v72, signed char v73)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
unsigned char v76 = 0;
signed char v75 = -1;
signed char v74 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (signed char v77, unsigned int v78, signed char v79, signed int v80)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
signed short v83 = 0;
signed short v82 = -1;
signed short v81 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (void)
{
{
for (;;) {
unsigned char v86 = 2;
signed char v85 = 0;
signed short v84 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (void)
{
{
for (;;) {
unsigned short v89 = 1;
signed char v88 = 2;
unsigned int v87 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
