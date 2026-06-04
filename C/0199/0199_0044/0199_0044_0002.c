#include <stdlib.h>
extern unsigned int v1 (unsigned short, unsigned char, unsigned short);
extern unsigned int (*v2) (unsigned short, unsigned char, unsigned short);
signed int v3 (unsigned int, unsigned int, unsigned short);
signed int (*v4) (unsigned int, unsigned int, unsigned short) = v3;
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern unsigned int v7 (signed int, signed int, unsigned short);
extern unsigned int (*v8) (signed int, signed int, unsigned short);
extern signed char v9 (unsigned char);
extern signed char (*v10) (unsigned char);
extern unsigned char v13 (unsigned short, unsigned short, signed int, signed int);
extern unsigned char (*v14) (unsigned short, unsigned short, signed int, signed int);
extern signed short v15 (signed char, unsigned short, signed short);
extern signed short (*v16) (signed char, unsigned short, signed short);
extern signed int v17 (signed int, signed int, unsigned int);
extern signed int (*v18) (signed int, signed int, unsigned int);
extern unsigned int v19 (signed char);
extern unsigned int (*v20) (signed char);
extern signed int v21 (void);
extern signed int (*v22) (void);
unsigned int v23 (unsigned char);
unsigned int (*v24) (unsigned char) = v23;
unsigned short v25 (signed char, unsigned short, unsigned short);
unsigned short (*v26) (signed char, unsigned short, unsigned short) = v25;
extern unsigned char v27 (unsigned char, unsigned int, signed short);
extern unsigned char (*v28) (unsigned char, unsigned int, signed short);
extern signed int v29 (signed char, signed short);
extern signed int (*v30) (signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v76 = -2;
signed int v75 = 3;
signed int v74 = 2;

unsigned short v25 (signed char v77, unsigned short v78, unsigned short v79)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned int v82 = 7U;
unsigned char v81 = 1;
unsigned char v80 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v23 (unsigned char v83)
{
history[history_index++] = (int)v83;
{
for (;;) {
signed int v86 = 3;
unsigned short v85 = 1;
unsigned int v84 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (unsigned int v87, unsigned int v88, unsigned short v89)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned short v92 = 4;
signed char v91 = 0;
signed int v90 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
