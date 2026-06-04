#include <stdlib.h>
extern void v1 (unsigned short);
extern void (*v2) (unsigned short);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
unsigned char v5 (unsigned short, signed short);
unsigned char (*v6) (unsigned short, signed short) = v5;
extern unsigned char v7 (unsigned int, signed int);
extern unsigned char (*v8) (unsigned int, signed int);
signed int v9 (void);
signed int (*v10) (void) = v9;
void v11 (void);
void (*v12) (void) = v11;
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned char v15 (signed int);
extern unsigned char (*v16) (signed int);
extern unsigned int v17 (unsigned short, unsigned char, signed short, unsigned char);
extern unsigned int (*v18) (unsigned short, unsigned char, signed short, unsigned char);
extern void v19 (unsigned short);
extern void (*v20) (unsigned short);
extern void v21 (signed short, signed int);
extern void (*v22) (signed short, signed int);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern signed int v25 (signed char, signed char, signed int);
extern signed int (*v26) (signed char, signed char, signed int);
extern unsigned char v27 (signed char, signed short, unsigned int);
extern unsigned char (*v28) (signed char, signed short, unsigned int);
extern unsigned int v29 (signed short, unsigned char);
extern unsigned int (*v30) (signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v100 = 1;
unsigned char v99 = 6;
unsigned int v98 = 0U;

void v11 (void)
{
{
for (;;) {
unsigned short v103 = 1;
signed char v102 = -3;
signed char v101 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (void)
{
{
for (;;) {
unsigned int v106 = 4U;
signed short v105 = 1;
signed char v104 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned short v107, signed short v108)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed short v111 = 1;
unsigned char v110 = 5;
signed char v109 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
