#include <stdlib.h>
extern unsigned short v1 (signed char, signed short, unsigned short);
extern unsigned short (*v2) (signed char, signed short, unsigned short);
extern signed int v3 (unsigned char, unsigned short, unsigned int);
extern signed int (*v4) (unsigned char, unsigned short, unsigned int);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern unsigned short v9 (signed char, signed char, signed short, unsigned short);
extern unsigned short (*v10) (signed char, signed char, signed short, unsigned short);
extern unsigned int v11 (unsigned short, signed char);
extern unsigned int (*v12) (unsigned short, signed char);
unsigned char v13 (signed char, signed short, signed int, signed short);
unsigned char (*v14) (signed char, signed short, signed int, signed short) = v13;
extern void v15 (signed short, unsigned char);
extern void (*v16) (signed short, unsigned char);
signed char v17 (unsigned short, unsigned char, signed int, unsigned short);
signed char (*v18) (unsigned short, unsigned char, signed int, unsigned short) = v17;
unsigned char v19 (signed int);
unsigned char (*v20) (signed int) = v19;
extern unsigned char v21 (signed char, unsigned short, unsigned char, signed char);
extern unsigned char (*v22) (signed char, unsigned short, unsigned char, signed char);
extern void v23 (unsigned char, unsigned short);
extern void (*v24) (unsigned char, unsigned short);
extern unsigned int v25 (unsigned char, signed short, signed short, unsigned char);
extern unsigned int (*v26) (unsigned char, signed short, signed short, unsigned char);
extern signed short v29 (unsigned char, signed short, signed int, unsigned char);
extern signed short (*v30) (unsigned char, signed short, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v104 = 0;
signed char v103 = 0;
unsigned char v102 = 3;

unsigned char v19 (signed int v105)
{
history[history_index++] = (int)v105;
{
for (;;) {
signed char v108 = -2;
unsigned char v107 = 1;
unsigned char v106 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (unsigned short v109, unsigned char v110, signed int v111, unsigned short v112)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned char v115 = 6;
signed char v114 = 2;
signed int v113 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (signed char v116, signed short v117, signed int v118, signed short v119)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
unsigned char v122 = 4;
unsigned char v121 = 2;
unsigned int v120 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
