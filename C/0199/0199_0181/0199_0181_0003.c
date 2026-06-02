#include <stdlib.h>
extern void v1 (unsigned int);
extern void (*v2) (unsigned int);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
unsigned int v7 (signed char, unsigned int);
unsigned int (*v8) (signed char, unsigned int) = v7;
extern unsigned int v9 (unsigned short, signed char, signed int, signed int);
extern unsigned int (*v10) (unsigned short, signed char, signed int, signed int);
extern signed char v11 (signed int);
extern signed char (*v12) (signed int);
void v13 (void);
void (*v14) (void) = v13;
extern unsigned int v15 (signed char);
extern unsigned int (*v16) (signed char);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
unsigned short v21 (signed int, unsigned int, unsigned short);
unsigned short (*v22) (signed int, unsigned int, unsigned short) = v21;
extern signed short v23 (unsigned int, signed char);
extern signed short (*v24) (unsigned int, signed char);
extern unsigned int v25 (unsigned int, signed int, signed char, unsigned char);
extern unsigned int (*v26) (unsigned int, signed int, signed char, unsigned char);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v100 = 4;
unsigned short v99 = 1;
unsigned char v98 = 2;

unsigned short v21 (signed int v101, unsigned int v102, unsigned short v103)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
unsigned int v106 = 2U;
unsigned short v105 = 0;
signed short v104 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (void)
{
{
for (;;) {
signed char v109 = 0;
unsigned char v108 = 7;
signed char v107 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (signed char v110, unsigned int v111)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
signed short v114 = 3;
signed int v113 = 1;
unsigned int v112 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
