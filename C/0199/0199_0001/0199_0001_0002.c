#include <stdlib.h>
extern signed int v1 (signed short, signed char, unsigned short);
extern signed int (*v2) (signed short, signed char, unsigned short);
unsigned int v3 (unsigned int);
unsigned int (*v4) (unsigned int) = v3;
signed short v5 (unsigned short);
signed short (*v6) (unsigned short) = v5;
extern signed int v7 (void);
extern signed int (*v8) (void);
extern signed char v9 (signed short);
extern signed char (*v10) (signed short);
extern signed short v11 (signed int, unsigned short);
extern signed short (*v12) (signed int, unsigned short);
extern void v13 (void);
extern void (*v14) (void);
extern unsigned char v15 (unsigned int);
extern unsigned char (*v16) (unsigned int);
extern unsigned short v17 (unsigned short);
extern unsigned short (*v18) (unsigned short);
extern signed short v19 (signed char, signed char, unsigned char, signed int);
extern signed short (*v20) (signed char, signed char, unsigned char, signed int);
signed short v21 (signed int, unsigned char, unsigned char, unsigned char);
signed short (*v22) (signed int, unsigned char, unsigned char, unsigned char) = v21;
extern signed short v23 (signed int);
extern signed short (*v24) (signed int);
unsigned short v25 (unsigned char, signed short, signed char);
unsigned short (*v26) (unsigned char, signed short, signed char) = v25;
extern signed short v27 (void);
extern signed short (*v28) (void);
extern unsigned char v29 (unsigned char, unsigned short);
extern unsigned char (*v30) (unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v79 = -4;
signed short v78 = -2;
unsigned int v77 = 6U;

unsigned short v25 (unsigned char v80, signed short v81, signed char v82)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned char v85 = 6;
signed char v84 = 0;
unsigned int v83 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v21 (signed int v86, unsigned char v87, unsigned char v88, unsigned char v89)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned char v92 = 3;
unsigned int v91 = 7U;
unsigned short v90 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (unsigned short v93)
{
history[history_index++] = (int)v93;
{
for (;;) {
signed int v96 = 1;
signed short v95 = 2;
unsigned int v94 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (unsigned int v97)
{
history[history_index++] = (int)v97;
{
for (;;) {
unsigned short v100 = 6;
signed char v99 = -3;
unsigned short v98 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
