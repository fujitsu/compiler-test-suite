#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
signed int v3 (signed short);
signed int (*v4) (signed short) = v3;
extern unsigned int v5 (unsigned char);
extern unsigned int (*v6) (unsigned char);
extern unsigned int v7 (unsigned char, signed int, signed char, unsigned short);
extern unsigned int (*v8) (unsigned char, signed int, signed char, unsigned short);
signed char v9 (signed short);
signed char (*v10) (signed short) = v9;
extern signed int v11 (unsigned char);
extern signed int (*v12) (unsigned char);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern void v15 (signed short);
extern void (*v16) (signed short);
unsigned char v17 (unsigned short);
unsigned char (*v18) (unsigned short) = v17;
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed char v21 (signed short, signed short);
extern signed char (*v22) (signed short, signed short);
extern signed short v23 (signed short, signed char, unsigned int);
extern signed short (*v24) (signed short, signed char, unsigned int);
extern unsigned int v25 (signed char, unsigned short, unsigned short);
extern unsigned int (*v26) (signed char, unsigned short, unsigned short);
extern signed short v27 (unsigned char, unsigned int);
extern signed short (*v28) (unsigned char, unsigned int);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v80 = 3;
unsigned int v79 = 6U;
signed short v78 = 0;

unsigned char v17 (unsigned short v81)
{
history[history_index++] = (int)v81;
{
for (;;) {
unsigned short v84 = 4;
signed int v83 = 2;
signed short v82 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (signed short v85)
{
history[history_index++] = (int)v85;
{
for (;;) {
unsigned short v88 = 7;
unsigned char v87 = 3;
unsigned int v86 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed short v89)
{
history[history_index++] = (int)v89;
{
for (;;) {
signed short v92 = -3;
signed short v91 = 3;
signed int v90 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
