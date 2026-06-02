#include <stdlib.h>
extern unsigned int v1 (unsigned char, signed int, signed short, signed int);
extern unsigned int (*v2) (unsigned char, signed int, signed short, signed int);
extern unsigned char v3 (signed int);
extern unsigned char (*v4) (signed int);
extern void v5 (unsigned short, unsigned short, unsigned char);
extern void (*v6) (unsigned short, unsigned short, unsigned char);
unsigned int v7 (unsigned char);
unsigned int (*v8) (unsigned char) = v7;
extern unsigned int v9 (signed char, unsigned short);
extern unsigned int (*v10) (signed char, unsigned short);
extern signed int v11 (unsigned short, signed short, unsigned char);
extern signed int (*v12) (unsigned short, signed short, unsigned char);
unsigned char v13 (signed short, signed char);
unsigned char (*v14) (signed short, signed char) = v13;
unsigned int v17 (unsigned int, unsigned char, signed int);
unsigned int (*v18) (unsigned int, unsigned char, signed int) = v17;
extern void v19 (void);
extern void (*v20) (void);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern signed int v23 (void);
extern signed int (*v24) (void);
void v27 (signed short, unsigned char, signed int);
void (*v28) (signed short, unsigned char, signed int) = v27;
extern signed int v29 (unsigned int);
extern signed int (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v118 = 1U;
unsigned short v117 = 0;
signed int v116 = 0;

void v27 (signed short v119, unsigned char v120, signed int v121)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
signed int v124 = -4;
unsigned short v123 = 2;
unsigned char v122 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (unsigned int v125, unsigned char v126, signed int v127)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
unsigned short v130 = 6;
unsigned int v129 = 3U;
unsigned char v128 = 2;
trace++;
switch (trace)
{
case 11: 
return v125;
default: abort ();
}
}
}
}

unsigned char v13 (signed short v131, signed char v132)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
signed char v135 = -1;
unsigned short v134 = 6;
signed int v133 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (unsigned char v136)
{
history[history_index++] = (int)v136;
{
for (;;) {
unsigned char v139 = 4;
unsigned short v138 = 0;
unsigned int v137 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
