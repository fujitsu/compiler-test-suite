#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
unsigned short v3 (signed char, signed int, signed int);
unsigned short (*v4) (signed char, signed int, signed int) = v3;
extern unsigned char v5 (signed int, unsigned short, signed int);
extern unsigned char (*v6) (signed int, unsigned short, signed int);
extern signed char v7 (unsigned char, signed char);
extern signed char (*v8) (unsigned char, signed char);
extern void v11 (signed int);
extern void (*v12) (signed int);
extern signed short v13 (unsigned int);
extern signed short (*v14) (unsigned int);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern void v17 (signed int, unsigned int, signed char);
extern void (*v18) (signed int, unsigned int, signed char);
signed short v19 (signed int, unsigned int);
signed short (*v20) (signed int, unsigned int) = v19;
unsigned int v21 (unsigned short);
unsigned int (*v22) (unsigned short) = v21;
extern signed char v23 (unsigned char);
extern signed char (*v24) (unsigned char);
extern signed int v25 (unsigned char, unsigned char, signed char);
extern signed int (*v26) (unsigned char, unsigned char, signed char);
extern signed short v27 (void);
extern signed short (*v28) (void);
signed short v29 (signed char, signed char, unsigned int);
signed short (*v30) (signed char, signed char, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v82 = -1;
unsigned short v81 = 5;
unsigned short v80 = 0;

signed short v29 (signed char v83, signed char v84, unsigned int v85)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
unsigned short v88 = 4;
signed int v87 = 2;
signed int v86 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v21 (unsigned short v89)
{
history[history_index++] = (int)v89;
{
for (;;) {
unsigned int v92 = 2U;
signed int v91 = -4;
unsigned char v90 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (signed int v93, unsigned int v94)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
unsigned int v97 = 3U;
signed int v96 = 1;
unsigned int v95 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (signed char v98, signed int v99, signed int v100)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
unsigned char v103 = 4;
unsigned short v102 = 6;
signed int v101 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
