#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
signed short v3 (unsigned char, unsigned char, unsigned char);
signed short (*v4) (unsigned char, unsigned char, unsigned char) = v3;
extern signed char v5 (unsigned int, signed char, unsigned char);
extern signed char (*v6) (unsigned int, signed char, unsigned char);
extern unsigned int v7 (signed int);
extern unsigned int (*v8) (signed int);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern signed int v11 (signed short, unsigned short);
extern signed int (*v12) (signed short, unsigned short);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed int v15 (unsigned int);
extern signed int (*v16) (unsigned int);
unsigned int v17 (signed int, unsigned short, unsigned char);
unsigned int (*v18) (signed int, unsigned short, unsigned char) = v17;
extern signed char v19 (signed char, unsigned char);
extern signed char (*v20) (signed char, unsigned char);
extern void v23 (unsigned int);
extern void (*v24) (unsigned int);
void v25 (void);
void (*v26) (void) = v25;
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern signed char v29 (unsigned short, signed short, signed int);
extern signed char (*v30) (unsigned short, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v99 = 1;
signed char v98 = 0;
unsigned short v97 = 6;

void v25 (void)
{
{
for (;;) {
unsigned short v102 = 0;
unsigned char v101 = 5;
unsigned int v100 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (signed int v103, unsigned short v104, unsigned char v105)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed int v108 = 3;
signed int v107 = -4;
unsigned char v106 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (unsigned char v109, unsigned char v110, unsigned char v111)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
unsigned int v114 = 7U;
signed short v113 = -2;
unsigned int v112 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
