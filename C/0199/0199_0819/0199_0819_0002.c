#include <stdlib.h>
unsigned int v3 (void);
unsigned int (*v4) (void) = v3;
extern void v5 (unsigned int);
extern void (*v6) (unsigned int);
extern void v7 (unsigned short, signed int, unsigned short);
extern void (*v8) (unsigned short, signed int, unsigned short);
extern unsigned short v9 (signed int, unsigned short);
extern unsigned short (*v10) (signed int, unsigned short);
extern unsigned short v11 (unsigned short, unsigned int);
extern unsigned short (*v12) (unsigned short, unsigned int);
extern signed short v13 (signed short, signed short, signed char, signed int);
extern signed short (*v14) (signed short, signed short, signed char, signed int);
extern signed char v15 (signed char, signed int, signed short, signed char);
extern signed char (*v16) (signed char, signed int, signed short, signed char);
unsigned char v17 (unsigned int, signed int, signed short, signed char);
unsigned char (*v18) (unsigned int, signed int, signed short, signed char) = v17;
unsigned char v19 (void);
unsigned char (*v20) (void) = v19;
extern unsigned short v21 (signed short, signed short, signed int);
extern unsigned short (*v22) (signed short, signed short, signed int);
extern unsigned char v23 (unsigned int, unsigned char, unsigned char);
extern unsigned char (*v24) (unsigned int, unsigned char, unsigned char);
extern unsigned char v25 (signed int, unsigned int, signed short, unsigned char);
extern unsigned char (*v26) (signed int, unsigned int, signed short, unsigned char);
extern signed short v27 (unsigned int, unsigned char, unsigned int, signed short);
extern signed short (*v28) (unsigned int, unsigned char, unsigned int, signed short);
void v29 (void);
void (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v102 = -3;
unsigned char v101 = 4;
unsigned short v100 = 5;

void v29 (void)
{
{
for (;;) {
signed int v105 = 2;
signed int v104 = 0;
signed int v103 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (void)
{
{
for (;;) {
signed short v108 = -3;
unsigned char v107 = 6;
unsigned short v106 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (unsigned int v109, signed int v110, signed short v111, signed char v112)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned char v115 = 1;
unsigned char v114 = 7;
signed int v113 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (void)
{
{
for (;;) {
unsigned char v118 = 1;
signed char v117 = 3;
unsigned char v116 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
