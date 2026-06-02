#include <stdlib.h>
extern signed int v1 (signed short, unsigned char, signed short, unsigned int);
extern signed int (*v2) (signed short, unsigned char, signed short, unsigned int);
extern signed char v3 (signed char, unsigned int, signed short);
extern signed char (*v4) (signed char, unsigned int, signed short);
extern void v5 (void);
extern void (*v6) (void);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern void v11 (unsigned int, signed short, unsigned short, signed short);
extern void (*v12) (unsigned int, signed short, unsigned short, signed short);
extern signed char v13 (unsigned short, signed char, signed int, unsigned char);
extern signed char (*v14) (unsigned short, signed char, signed int, unsigned char);
unsigned int v15 (void);
unsigned int (*v16) (void) = v15;
extern unsigned short v17 (unsigned int, signed short, signed int, signed short);
extern unsigned short (*v18) (unsigned int, signed short, signed int, signed short);
extern void v19 (unsigned short, signed short);
extern void (*v20) (unsigned short, signed short);
extern unsigned short v21 (unsigned char, unsigned int);
extern unsigned short (*v22) (unsigned char, unsigned int);
extern signed char v23 (signed char, signed short);
extern signed char (*v24) (signed char, signed short);
extern unsigned int v25 (unsigned char);
extern unsigned int (*v26) (unsigned char);
unsigned int v27 (signed char, unsigned int, signed char, signed char);
unsigned int (*v28) (signed char, unsigned int, signed char, signed char) = v27;
void v29 (unsigned int);
void (*v30) (unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v102 = 5;
unsigned int v101 = 4U;
unsigned char v100 = 7;

void v29 (unsigned int v103)
{
history[history_index++] = (int)v103;
{
for (;;) {
unsigned char v106 = 1;
unsigned int v105 = 1U;
signed short v104 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v27 (signed char v107, unsigned int v108, signed char v109, signed char v110)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed char v113 = 3;
unsigned short v112 = 4;
signed char v111 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (void)
{
{
for (;;) {
unsigned short v116 = 6;
signed char v115 = 1;
signed short v114 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
