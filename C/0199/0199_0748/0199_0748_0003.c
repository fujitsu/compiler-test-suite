#include <stdlib.h>
unsigned int v3 (signed char, unsigned char, unsigned short);
unsigned int (*v4) (signed char, unsigned char, unsigned short) = v3;
extern unsigned short v5 (unsigned char, unsigned short, signed short);
extern unsigned short (*v6) (unsigned char, unsigned short, signed short);
extern unsigned int v7 (unsigned char, signed char, unsigned int);
extern unsigned int (*v8) (unsigned char, signed char, unsigned int);
extern void v9 (unsigned int, unsigned char, signed char, unsigned char);
extern void (*v10) (unsigned int, unsigned char, signed char, unsigned char);
void v11 (signed char);
void (*v12) (signed char) = v11;
extern signed short v13 (void);
extern signed short (*v14) (void);
extern signed int v15 (unsigned char, unsigned int);
extern signed int (*v16) (unsigned char, unsigned int);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern signed char v21 (unsigned char);
extern signed char (*v22) (unsigned char);
signed int v23 (unsigned int);
signed int (*v24) (unsigned int) = v23;
void v27 (signed int);
void (*v28) (signed int) = v27;
extern unsigned int v29 (unsigned char, signed short);
extern unsigned int (*v30) (unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v102 = -3;
signed short v101 = 1;
signed char v100 = 1;

void v27 (signed int v103)
{
history[history_index++] = (int)v103;
{
for (;;) {
unsigned int v106 = 6U;
unsigned int v105 = 2U;
signed short v104 = -3;
trace++;
switch (trace)
{
case 9: 
return;
default: abort ();
}
}
}
}

signed int v23 (unsigned int v107)
{
history[history_index++] = (int)v107;
{
for (;;) {
unsigned int v110 = 5U;
unsigned char v109 = 3;
signed short v108 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (signed char v111)
{
history[history_index++] = (int)v111;
{
for (;;) {
signed char v114 = -4;
signed int v113 = 1;
signed short v112 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (signed char v115, unsigned char v116, unsigned short v117)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
unsigned char v120 = 1;
unsigned int v119 = 2U;
signed char v118 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
