#include <stdlib.h>
extern unsigned char v1 (unsigned short);
extern unsigned char (*v2) (unsigned short);
extern unsigned char v3 (signed short, unsigned int);
extern unsigned char (*v4) (signed short, unsigned int);
extern unsigned short v5 (unsigned char, signed int);
extern unsigned short (*v6) (unsigned char, signed int);
extern unsigned short v7 (signed int, signed int, signed char, signed char);
extern unsigned short (*v8) (signed int, signed int, signed char, signed char);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern unsigned short v13 (signed char, unsigned short, signed short);
extern unsigned short (*v14) (signed char, unsigned short, signed short);
extern signed short v15 (unsigned short);
extern signed short (*v16) (unsigned short);
extern unsigned short v17 (signed short);
extern unsigned short (*v18) (signed short);
signed int v19 (signed char, unsigned int, unsigned short);
signed int (*v20) (signed char, unsigned int, unsigned short) = v19;
extern signed char v21 (unsigned short, unsigned char);
extern signed char (*v22) (unsigned short, unsigned char);
signed short v23 (unsigned short, unsigned short, signed int);
signed short (*v24) (unsigned short, unsigned short, signed int) = v23;
void v25 (void);
void (*v26) (void) = v25;
extern unsigned int v27 (signed int, unsigned int, unsigned char, unsigned short);
extern unsigned int (*v28) (signed int, unsigned int, unsigned char, unsigned short);
extern unsigned char v29 (unsigned char, unsigned char);
extern unsigned char (*v30) (unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v73 = 1;
unsigned short v72 = 2;
signed char v71 = -1;

void v25 (void)
{
{
for (;;) {
unsigned int v76 = 1U;
unsigned int v75 = 2U;
signed char v74 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v23 (unsigned short v77, unsigned short v78, signed int v79)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned short v82 = 5;
signed char v81 = 0;
signed short v80 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (signed char v83, unsigned int v84, unsigned short v85)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
unsigned short v88 = 1;
signed char v87 = 1;
unsigned short v86 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
