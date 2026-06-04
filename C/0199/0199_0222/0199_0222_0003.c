#include <stdlib.h>
extern unsigned char v1 (signed int, unsigned char);
extern unsigned char (*v2) (signed int, unsigned char);
extern unsigned int v3 (signed int);
extern unsigned int (*v4) (signed int);
extern unsigned int v5 (unsigned char, unsigned short);
extern unsigned int (*v6) (unsigned char, unsigned short);
signed char v9 (void);
signed char (*v10) (void) = v9;
signed int v11 (unsigned int, signed short, unsigned char, unsigned int);
signed int (*v12) (unsigned int, signed short, unsigned char, unsigned int) = v11;
extern signed int v13 (void);
extern signed int (*v14) (void);
extern unsigned char v15 (signed int, unsigned char, unsigned int);
extern unsigned char (*v16) (signed int, unsigned char, unsigned int);
extern void v17 (void);
extern void (*v18) (void);
extern void v19 (void);
extern void (*v20) (void);
extern signed short v21 (signed int, signed char);
extern signed short (*v22) (signed int, signed char);
signed int v23 (signed char);
signed int (*v24) (signed char) = v23;
extern signed short v25 (unsigned char);
extern signed short (*v26) (unsigned char);
extern signed short v27 (signed int, signed short, unsigned int, signed short);
extern signed short (*v28) (signed int, signed short, unsigned int, signed short);
unsigned short v29 (unsigned short);
unsigned short (*v30) (unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v107 = 3;
unsigned int v106 = 3U;
signed int v105 = -1;

unsigned short v29 (unsigned short v108)
{
history[history_index++] = (int)v108;
{
for (;;) {
unsigned char v111 = 7;
signed char v110 = 1;
signed char v109 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v23 (signed char v112)
{
history[history_index++] = (int)v112;
{
for (;;) {
signed int v115 = -1;
unsigned int v114 = 7U;
signed char v113 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (unsigned int v116, signed short v117, unsigned char v118, unsigned int v119)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
signed int v122 = -3;
unsigned short v121 = 7;
signed char v120 = -4;
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
signed char v125 = -4;
signed char v124 = 1;
unsigned int v123 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
