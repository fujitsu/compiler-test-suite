#include <stdlib.h>
extern signed char v1 (unsigned short, unsigned int);
extern signed char (*v2) (unsigned short, unsigned int);
extern unsigned char v3 (unsigned char, signed short);
extern unsigned char (*v4) (unsigned char, signed short);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern signed int v7 (unsigned int, signed short, unsigned short, signed char);
extern signed int (*v8) (unsigned int, signed short, unsigned short, signed char);
unsigned char v9 (void);
unsigned char (*v10) (void) = v9;
extern unsigned int v11 (unsigned short, unsigned char);
extern unsigned int (*v12) (unsigned short, unsigned char);
extern unsigned char v13 (unsigned int, unsigned int, signed char);
extern unsigned char (*v14) (unsigned int, unsigned int, signed char);
extern signed char v15 (signed int, signed short, unsigned int, unsigned char);
extern signed char (*v16) (signed int, signed short, unsigned int, unsigned char);
unsigned short v19 (signed short, signed int);
unsigned short (*v20) (signed short, signed int) = v19;
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
signed short v23 (unsigned short, unsigned char);
signed short (*v24) (unsigned short, unsigned char) = v23;
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern signed int v29 (unsigned char, unsigned int, signed int);
extern signed int (*v30) (unsigned char, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v106 = 0;
unsigned short v105 = 5;
unsigned char v104 = 3;

signed short v23 (unsigned short v107, unsigned char v108)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
unsigned char v111 = 4;
signed int v110 = 1;
signed short v109 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (signed short v112, signed int v113)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
unsigned char v116 = 4;
signed char v115 = -4;
unsigned char v114 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (void)
{
{
for (;;) {
signed short v119 = 3;
unsigned int v118 = 7U;
signed char v117 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
