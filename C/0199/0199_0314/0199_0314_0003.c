#include <stdlib.h>
extern unsigned char v1 (signed int, unsigned char, unsigned char);
extern unsigned char (*v2) (signed int, unsigned char, unsigned char);
extern signed short v3 (signed short);
extern signed short (*v4) (signed short);
extern signed char v5 (signed char);
extern signed char (*v6) (signed char);
unsigned int v7 (signed char, signed char);
unsigned int (*v8) (signed char, signed char) = v7;
extern unsigned char v9 (signed short, unsigned short, unsigned int);
extern unsigned char (*v10) (signed short, unsigned short, unsigned int);
extern signed int v13 (signed short, unsigned short);
extern signed int (*v14) (signed short, unsigned short);
extern void v15 (signed int, signed short, signed int);
extern void (*v16) (signed int, signed short, signed int);
extern signed char v17 (unsigned int, signed char, unsigned int, signed int);
extern signed char (*v18) (unsigned int, signed char, unsigned int, signed int);
signed short v19 (signed char, unsigned short, signed char);
signed short (*v20) (signed char, unsigned short, signed char) = v19;
signed int v21 (signed int);
signed int (*v22) (signed int) = v21;
extern signed short v23 (unsigned int, signed short);
extern signed short (*v24) (unsigned int, signed short);
extern signed int v25 (unsigned int, unsigned short);
extern signed int (*v26) (unsigned int, unsigned short);
extern void v27 (unsigned char, signed short, unsigned int, signed short);
extern void (*v28) (unsigned char, signed short, unsigned int, signed short);
signed int v29 (unsigned short, signed char);
signed int (*v30) (unsigned short, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v92 = 3U;
unsigned int v91 = 3U;
unsigned int v90 = 7U;

signed int v29 (unsigned short v93, signed char v94)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
signed short v97 = -1;
signed char v96 = -2;
unsigned int v95 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (signed int v98)
{
history[history_index++] = (int)v98;
{
for (;;) {
unsigned char v101 = 6;
signed short v100 = -3;
unsigned int v99 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (signed char v102, unsigned short v103, signed char v104)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
signed int v107 = 1;
unsigned char v106 = 3;
signed char v105 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (signed char v108, signed char v109)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
signed int v112 = 2;
signed int v111 = -3;
unsigned char v110 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
