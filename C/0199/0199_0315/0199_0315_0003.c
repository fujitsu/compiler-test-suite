#include <stdlib.h>
extern unsigned short v1 (unsigned char, signed char);
extern unsigned short (*v2) (unsigned char, signed char);
unsigned short v3 (unsigned char, signed short, signed int);
unsigned short (*v4) (unsigned char, signed short, signed int) = v3;
signed char v5 (unsigned char);
signed char (*v6) (unsigned char) = v5;
extern unsigned int v7 (signed int, unsigned short, signed int);
extern unsigned int (*v8) (signed int, unsigned short, signed int);
extern signed short v9 (unsigned int, signed int, signed short);
extern signed short (*v10) (unsigned int, signed int, signed short);
extern signed char v11 (signed short, signed short, unsigned char, signed int);
extern signed char (*v12) (signed short, signed short, unsigned char, signed int);
extern signed int v13 (void);
extern signed int (*v14) (void);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern signed int v21 (signed short, signed int, signed short);
extern signed int (*v22) (signed short, signed int, signed short);
void v23 (unsigned short);
void (*v24) (unsigned short) = v23;
extern signed char v25 (void);
extern signed char (*v26) (void);
extern void v27 (unsigned int, signed short, unsigned short);
extern void (*v28) (unsigned int, signed short, unsigned short);
extern void v29 (unsigned short, unsigned char, signed int);
extern void (*v30) (unsigned short, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v98 = -2;
unsigned int v97 = 7U;
unsigned char v96 = 7;

void v23 (unsigned short v99)
{
history[history_index++] = (int)v99;
{
for (;;) {
unsigned short v102 = 0;
signed int v101 = 3;
signed int v100 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (unsigned char v103)
{
history[history_index++] = (int)v103;
{
for (;;) {
signed int v106 = 0;
unsigned char v105 = 7;
unsigned short v104 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (unsigned char v107, signed short v108, signed int v109)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned char v112 = 6;
signed char v111 = -2;
signed short v110 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
