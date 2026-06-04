#include <stdlib.h>
extern unsigned int v1 (signed int, signed char, signed short, unsigned int);
extern unsigned int (*v2) (signed int, signed char, signed short, unsigned int);
extern unsigned short v3 (signed short, signed char);
extern unsigned short (*v4) (signed short, signed char);
extern unsigned int v5 (signed short, signed int);
extern unsigned int (*v6) (signed short, signed int);
extern void v7 (unsigned char, signed short, signed char, unsigned short);
extern void (*v8) (unsigned char, signed short, signed char, unsigned short);
extern unsigned int v9 (unsigned short, unsigned int);
extern unsigned int (*v10) (unsigned short, unsigned int);
extern void v11 (void);
extern void (*v12) (void);
extern unsigned char v13 (signed int);
extern unsigned char (*v14) (signed int);
extern signed char v15 (signed char, unsigned int, signed char, signed char);
extern signed char (*v16) (signed char, unsigned int, signed char, signed char);
void v17 (unsigned int, signed int);
void (*v18) (unsigned int, signed int) = v17;
extern unsigned int v19 (unsigned short, signed int, unsigned short, unsigned short);
extern unsigned int (*v20) (unsigned short, signed int, unsigned short, unsigned short);
extern signed short v21 (void);
extern signed short (*v22) (void);
void v23 (void);
void (*v24) (void) = v23;
unsigned int v25 (void);
unsigned int (*v26) (void) = v25;
extern unsigned short v27 (signed short, unsigned int, unsigned char);
extern unsigned short (*v28) (signed short, unsigned int, unsigned char);
extern signed int v29 (signed short, signed short);
extern signed int (*v30) (signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v100 = 1U;
signed char v99 = -2;
unsigned short v98 = 1;

unsigned int v25 (void)
{
{
for (;;) {
unsigned int v103 = 5U;
signed char v102 = 0;
signed short v101 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v23 (void)
{
{
for (;;) {
unsigned short v106 = 4;
signed short v105 = 1;
unsigned int v104 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (unsigned int v107, signed int v108)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
unsigned int v111 = 2U;
unsigned short v110 = 2;
unsigned char v109 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
