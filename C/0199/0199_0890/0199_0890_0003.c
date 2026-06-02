#include <stdlib.h>
extern unsigned char v1 (signed int, unsigned int, signed int);
extern unsigned char (*v2) (signed int, unsigned int, signed int);
extern unsigned short v3 (signed char, signed short, signed char, signed char);
extern unsigned short (*v4) (signed char, signed short, signed char, signed char);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern unsigned short v7 (signed short, unsigned short);
extern unsigned short (*v8) (signed short, unsigned short);
signed char v9 (void);
signed char (*v10) (void) = v9;
extern unsigned int v11 (unsigned char);
extern unsigned int (*v12) (unsigned char);
extern signed short v13 (signed int);
extern signed short (*v14) (signed int);
unsigned int v17 (signed short);
unsigned int (*v18) (signed short) = v17;
void v19 (unsigned char, signed char);
void (*v20) (unsigned char, signed char) = v19;
extern unsigned int v21 (signed char, unsigned char, signed int, signed short);
extern unsigned int (*v22) (signed char, unsigned char, signed int, signed short);
extern unsigned int v23 (unsigned short);
extern unsigned int (*v24) (unsigned short);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern unsigned char v27 (unsigned short, signed char);
extern unsigned char (*v28) (unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v111 = 0;
signed int v110 = -4;
unsigned char v109 = 7;

void v19 (unsigned char v112, signed char v113)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
signed short v116 = -4;
signed int v115 = -1;
unsigned int v114 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (signed short v117)
{
history[history_index++] = (int)v117;
{
for (;;) {
signed int v120 = 2;
unsigned char v119 = 6;
signed short v118 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (void)
{
{
for (;;) {
signed int v123 = -1;
unsigned short v122 = 6;
unsigned char v121 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
