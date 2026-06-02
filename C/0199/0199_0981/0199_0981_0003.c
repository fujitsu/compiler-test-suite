#include <stdlib.h>
extern unsigned char v1 (unsigned short, unsigned char, signed char);
extern unsigned char (*v2) (unsigned short, unsigned char, signed char);
extern unsigned short v3 (signed int, signed int, signed char);
extern unsigned short (*v4) (signed int, signed int, signed char);
signed short v5 (unsigned short);
signed short (*v6) (unsigned short) = v5;
extern void v9 (unsigned int, signed int, unsigned char);
extern void (*v10) (unsigned int, signed int, unsigned char);
extern unsigned int v11 (signed int);
extern unsigned int (*v12) (signed int);
extern signed int v13 (unsigned char, signed char, signed short, signed int);
extern signed int (*v14) (unsigned char, signed char, signed short, signed int);
extern signed int v15 (unsigned short);
extern signed int (*v16) (unsigned short);
extern void v17 (unsigned int);
extern void (*v18) (unsigned int);
extern void v19 (signed char);
extern void (*v20) (signed char);
unsigned char v21 (signed int, signed int);
unsigned char (*v22) (signed int, signed int) = v21;
extern unsigned short v23 (unsigned short, unsigned int);
extern unsigned short (*v24) (unsigned short, unsigned int);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
unsigned int v29 (unsigned char, unsigned int, unsigned char, unsigned short);
unsigned int (*v30) (unsigned char, unsigned int, unsigned char, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v91 = 6;
unsigned char v90 = 5;
signed int v89 = -4;

unsigned int v29 (unsigned char v92, unsigned int v93, unsigned char v94, unsigned short v95)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
signed char v98 = 2;
unsigned char v97 = 5;
unsigned int v96 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v21 (signed int v99, signed int v100)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed char v103 = -2;
signed char v102 = -4;
unsigned short v101 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (unsigned short v104)
{
history[history_index++] = (int)v104;
{
for (;;) {
signed short v107 = 2;
signed char v106 = 2;
signed short v105 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
