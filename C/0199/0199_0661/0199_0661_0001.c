#include <stdlib.h>
extern signed short v1 (signed int, unsigned short);
extern signed short (*v2) (signed int, unsigned short);
extern signed short v3 (unsigned int, signed short);
extern signed short (*v4) (unsigned int, signed short);
extern signed int v5 (unsigned char, signed short);
extern signed int (*v6) (unsigned char, signed short);
signed char v7 (unsigned char, unsigned int, unsigned short, unsigned char);
signed char (*v8) (unsigned char, unsigned int, unsigned short, unsigned char) = v7;
extern signed short v9 (void);
extern signed short (*v10) (void);
extern signed int v11 (void);
extern signed int (*v12) (void);
unsigned int v13 (void);
unsigned int (*v14) (void) = v13;
extern unsigned short v15 (signed char, signed int, signed char);
extern unsigned short (*v16) (signed char, signed int, signed char);
extern signed char v17 (unsigned short, unsigned short);
extern signed char (*v18) (unsigned short, unsigned short);
extern signed short v19 (signed int, unsigned int, unsigned char, unsigned char);
extern signed short (*v20) (signed int, unsigned int, unsigned char, unsigned char);
extern signed char v21 (signed int, signed char, unsigned int);
extern signed char (*v22) (signed int, signed char, unsigned int);
extern void v23 (signed char, signed char);
extern void (*v24) (signed char, signed char);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
signed char v29 (signed int, signed int);
signed char (*v30) (signed int, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v73 = 2;
signed int v72 = 1;
unsigned int v71 = 7U;

signed char v29 (signed int v74, signed int v75)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
signed char v78 = 1;
signed short v77 = 3;
unsigned int v76 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (void)
{
{
for (;;) {
signed int v81 = -1;
signed int v80 = 3;
unsigned char v79 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (unsigned char v82, unsigned int v83, unsigned short v84, unsigned char v85)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed char v88 = 3;
unsigned int v87 = 4U;
signed int v86 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
