#include <stdlib.h>
signed short v3 (unsigned short, unsigned short);
signed short (*v4) (unsigned short, unsigned short) = v3;
extern void v5 (signed short, signed short);
extern void (*v6) (signed short, signed short);
extern signed char v7 (unsigned char, signed int, signed char, unsigned int);
extern signed char (*v8) (unsigned char, signed int, signed char, unsigned int);
extern signed short v9 (unsigned short, unsigned char, signed short);
extern signed short (*v10) (unsigned short, unsigned char, signed short);
extern signed char v11 (signed char, unsigned char);
extern signed char (*v12) (signed char, unsigned char);
extern unsigned char v13 (signed char, signed char, unsigned char);
extern unsigned char (*v14) (signed char, signed char, unsigned char);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
void v17 (unsigned int, signed int);
void (*v18) (unsigned int, signed int) = v17;
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned short v23 (signed char, signed char);
extern unsigned short (*v24) (signed char, signed char);
extern unsigned int v25 (unsigned char, signed int, signed char);
extern unsigned int (*v26) (unsigned char, signed int, signed char);
extern unsigned char v27 (unsigned char);
extern unsigned char (*v28) (unsigned char);
unsigned char v29 (unsigned int);
unsigned char (*v30) (unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v97 = -2;
signed char v96 = -1;
unsigned char v95 = 5;

unsigned char v29 (unsigned int v98)
{
history[history_index++] = (int)v98;
{
for (;;) {
unsigned char v101 = 4;
signed char v100 = 0;
unsigned short v99 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (unsigned int v102, signed int v103)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed int v106 = 3;
signed short v105 = -3;
unsigned char v104 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (unsigned short v107, unsigned short v108)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed short v111 = -3;
unsigned char v110 = 0;
unsigned int v109 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
