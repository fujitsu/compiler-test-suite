#include <stdlib.h>
extern signed char v1 (unsigned int);
extern signed char (*v2) (unsigned int);
extern void v3 (unsigned char);
extern void (*v4) (unsigned char);
extern void v7 (void);
extern void (*v8) (void);
extern unsigned int v9 (unsigned short);
extern unsigned int (*v10) (unsigned short);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern signed short v13 (void);
extern signed short (*v14) (void);
signed char v15 (signed int, unsigned short, unsigned char, unsigned int);
signed char (*v16) (signed int, unsigned short, unsigned char, unsigned int) = v15;
extern unsigned char v17 (signed short, signed int, unsigned short);
extern unsigned char (*v18) (signed short, signed int, unsigned short);
unsigned int v19 (signed short, unsigned char);
unsigned int (*v20) (signed short, unsigned char) = v19;
extern signed short v21 (signed short, unsigned char);
extern signed short (*v22) (signed short, unsigned char);
unsigned char v23 (unsigned int, unsigned char, unsigned short, unsigned int);
unsigned char (*v24) (unsigned int, unsigned char, unsigned short, unsigned int) = v23;
extern signed short v25 (signed int, signed short, unsigned char);
extern signed short (*v26) (signed int, signed short, unsigned char);
extern signed int v27 (unsigned char, unsigned int, unsigned char, signed char);
extern signed int (*v28) (unsigned char, unsigned int, unsigned char, signed char);
extern void v29 (signed int, unsigned short, unsigned int, signed short);
extern void (*v30) (signed int, unsigned short, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v108 = 0;
unsigned short v107 = 3;
unsigned char v106 = 4;

unsigned char v23 (unsigned int v109, unsigned char v110, unsigned short v111, unsigned int v112)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
signed char v115 = -1;
unsigned short v114 = 3;
unsigned short v113 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (signed short v116, unsigned char v117)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
signed char v120 = -2;
unsigned char v119 = 2;
signed int v118 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (signed int v121, unsigned short v122, unsigned char v123, unsigned int v124)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned int v127 = 0U;
unsigned short v126 = 1;
unsigned short v125 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
