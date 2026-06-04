#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
void v3 (signed int, signed char);
void (*v4) (signed int, signed char) = v3;
void v5 (unsigned int, unsigned char);
void (*v6) (unsigned int, unsigned char) = v5;
unsigned int v7 (void);
unsigned int (*v8) (void) = v7;
extern signed char v9 (unsigned char, signed int);
extern signed char (*v10) (unsigned char, signed int);
extern signed short v11 (unsigned char);
extern signed short (*v12) (unsigned char);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed char v17 (unsigned char, unsigned int, unsigned int);
extern signed char (*v18) (unsigned char, unsigned int, unsigned int);
extern unsigned int v19 (signed char, unsigned char);
extern unsigned int (*v20) (signed char, unsigned char);
extern unsigned char v21 (signed short);
extern unsigned char (*v22) (signed short);
signed short v23 (void);
signed short (*v24) (void) = v23;
extern unsigned short v25 (unsigned int, signed short, signed int, signed int);
extern unsigned short (*v26) (unsigned int, signed short, signed int, signed int);
unsigned int v27 (signed short, signed short, signed short, unsigned short);
unsigned int (*v28) (signed short, signed short, signed short, unsigned short) = v27;
extern unsigned char v29 (unsigned short);
extern unsigned char (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v106 = 0U;
signed int v105 = 1;
unsigned int v104 = 5U;

unsigned int v27 (signed short v107, signed short v108, signed short v109, unsigned short v110)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed char v113 = -1;
signed short v112 = -3;
signed short v111 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v23 (void)
{
{
for (;;) {
unsigned int v116 = 6U;
unsigned short v115 = 3;
signed int v114 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (void)
{
{
for (;;) {
signed short v119 = 0;
signed short v118 = -3;
unsigned int v117 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (unsigned int v120, unsigned char v121)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned short v124 = 6;
signed char v123 = -4;
unsigned int v122 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (signed int v125, signed char v126)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
unsigned char v129 = 3;
unsigned short v128 = 2;
signed char v127 = 3;
trace++;
switch (trace)
{
case 1: 
return;
case 3: 
return;
default: abort ();
}
}
}
}
