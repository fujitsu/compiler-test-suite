#include <stdlib.h>
extern unsigned int v1 (unsigned short, signed short, unsigned char);
extern unsigned int (*v2) (unsigned short, signed short, unsigned char);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern signed short v7 (signed int, unsigned char, signed short, unsigned int);
extern signed short (*v8) (signed int, unsigned char, signed short, unsigned int);
signed char v9 (unsigned short);
signed char (*v10) (unsigned short) = v9;
extern signed int v11 (void);
extern signed int (*v12) (void);
extern signed short v13 (signed char, unsigned short, unsigned int, unsigned int);
extern signed short (*v14) (signed char, unsigned short, unsigned int, unsigned int);
extern unsigned char v15 (signed int, signed char, signed short);
extern unsigned char (*v16) (signed int, signed char, signed short);
signed short v17 (unsigned int, signed char, signed short, unsigned char);
signed short (*v18) (unsigned int, signed char, signed short, unsigned char) = v17;
extern unsigned char v19 (signed short, unsigned short, signed int, unsigned char);
extern unsigned char (*v20) (signed short, unsigned short, signed int, unsigned char);
unsigned short v23 (signed char, signed short);
unsigned short (*v24) (signed char, signed short) = v23;
extern unsigned int v25 (signed int, signed int);
extern unsigned int (*v26) (signed int, signed int);
extern signed short v27 (unsigned int, unsigned int, unsigned short);
extern signed short (*v28) (unsigned int, unsigned int, unsigned short);
extern unsigned char v29 (unsigned short, unsigned short);
extern unsigned char (*v30) (unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v68 = 7;
unsigned int v67 = 3U;
signed char v66 = 2;

unsigned short v23 (signed char v69, signed short v70)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed short v73 = 0;
signed int v72 = 0;
unsigned short v71 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (unsigned int v74, signed char v75, signed short v76, unsigned char v77)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
signed char v80 = 1;
signed short v79 = 3;
signed char v78 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (unsigned short v81)
{
history[history_index++] = (int)v81;
{
for (;;) {
signed char v84 = -4;
signed short v83 = 2;
unsigned char v82 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
