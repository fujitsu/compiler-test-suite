#include <stdlib.h>
extern signed short v1 (unsigned char, unsigned char);
extern signed short (*v2) (unsigned char, unsigned char);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern signed char v13 (signed char, unsigned int);
extern signed char (*v14) (signed char, unsigned int);
extern unsigned char v15 (unsigned short, signed char, signed short);
extern unsigned char (*v16) (unsigned short, signed char, signed short);
void v17 (unsigned short);
void (*v18) (unsigned short) = v17;
unsigned int v19 (unsigned short, unsigned int, unsigned char);
unsigned int (*v20) (unsigned short, unsigned int, unsigned char) = v19;
extern signed short v21 (unsigned char, unsigned char);
extern signed short (*v22) (unsigned char, unsigned char);
void v23 (unsigned char, signed short, signed int, signed short);
void (*v24) (unsigned char, signed short, signed int, signed short) = v23;
extern void v25 (unsigned char, signed char);
extern void (*v26) (unsigned char, signed char);
extern signed int v27 (unsigned int, unsigned char, signed int, unsigned int);
extern signed int (*v28) (unsigned int, unsigned char, signed int, unsigned int);
extern unsigned char v29 (signed char, unsigned char);
extern unsigned char (*v30) (signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v118 = 4;
unsigned int v117 = 3U;
unsigned int v116 = 1U;

void v23 (unsigned char v119, signed short v120, signed int v121, signed short v122)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
signed int v125 = 2;
unsigned short v124 = 0;
unsigned short v123 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (unsigned short v126, unsigned int v127, unsigned char v128)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
unsigned char v131 = 5;
unsigned int v130 = 4U;
unsigned int v129 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (unsigned short v132)
{
history[history_index++] = (int)v132;
{
for (;;) {
unsigned char v135 = 3;
signed short v134 = 2;
unsigned short v133 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
