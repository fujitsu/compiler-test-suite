#include <stdlib.h>
extern unsigned int v1 (signed short);
extern unsigned int (*v2) (signed short);
signed char v3 (signed int, signed int, signed int, signed short);
signed char (*v4) (signed int, signed int, signed int, signed short) = v3;
void v5 (signed short, signed int);
void (*v6) (signed short, signed int) = v5;
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern unsigned int v11 (unsigned short, signed int, unsigned char);
extern unsigned int (*v12) (unsigned short, signed int, unsigned char);
extern unsigned int v15 (unsigned int, signed short);
extern unsigned int (*v16) (unsigned int, signed short);
extern signed char v17 (signed char, signed int, signed char, signed int);
extern signed char (*v18) (signed char, signed int, signed char, signed int);
extern unsigned int v19 (unsigned int, unsigned int, signed int, signed char);
extern unsigned int (*v20) (unsigned int, unsigned int, signed int, signed char);
extern unsigned short v21 (signed int, unsigned int);
extern unsigned short (*v22) (signed int, unsigned int);
unsigned char v23 (void);
unsigned char (*v24) (void) = v23;
signed int v25 (unsigned char, signed short, signed short);
signed int (*v26) (unsigned char, signed short, signed short) = v25;
extern signed char v27 (signed int);
extern signed char (*v28) (signed int);
extern unsigned int v29 (unsigned char, signed int, unsigned int, unsigned short);
extern unsigned int (*v30) (unsigned char, signed int, unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v105 = 3;
signed short v104 = -3;
unsigned int v103 = 5U;

signed int v25 (unsigned char v106, signed short v107, signed short v108)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
unsigned int v111 = 0U;
signed int v110 = -2;
signed int v109 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (void)
{
{
for (;;) {
unsigned char v114 = 0;
unsigned int v113 = 4U;
unsigned int v112 = 6U;
trace++;
switch (trace)
{
case 1: 
return v114;
case 11: 
return v114;
default: abort ();
}
}
}
}

void v5 (signed short v115, signed int v116)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
unsigned char v119 = 4;
unsigned short v118 = 6;
signed char v117 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (signed int v120, signed int v121, signed int v122, signed short v123)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
unsigned char v126 = 0;
signed char v125 = -3;
signed short v124 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
