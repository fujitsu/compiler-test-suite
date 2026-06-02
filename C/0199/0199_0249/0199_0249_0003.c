#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern unsigned int v3 (unsigned short);
extern unsigned int (*v4) (unsigned short);
extern signed int v5 (unsigned short, unsigned short, unsigned short, unsigned char);
extern signed int (*v6) (unsigned short, unsigned short, unsigned short, unsigned char);
signed short v7 (signed short, signed char, unsigned int, signed char);
signed short (*v8) (signed short, signed char, unsigned int, signed char) = v7;
extern unsigned int v9 (signed short, unsigned char, signed int, signed short);
extern unsigned int (*v10) (signed short, unsigned char, signed int, signed short);
unsigned char v11 (signed char, unsigned short);
unsigned char (*v12) (signed char, unsigned short) = v11;
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed char v17 (unsigned short);
extern signed char (*v18) (unsigned short);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed short v21 (unsigned short, signed int, signed int);
extern signed short (*v22) (unsigned short, signed int, signed int);
extern signed char v23 (signed int, signed short, signed short, unsigned short);
extern signed char (*v24) (signed int, signed short, signed short, unsigned short);
extern signed char v25 (signed int);
extern signed char (*v26) (signed int);
void v27 (unsigned int, unsigned char);
void (*v28) (unsigned int, unsigned char) = v27;
extern unsigned char v29 (unsigned short, unsigned int, signed int);
extern unsigned char (*v30) (unsigned short, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v102 = 5U;
signed short v101 = 1;
signed int v100 = -1;

void v27 (unsigned int v103, unsigned char v104)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
signed int v107 = 0;
unsigned char v106 = 2;
unsigned char v105 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (signed char v108, unsigned short v109)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned short v112 = 3;
unsigned short v111 = 0;
signed short v110 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (signed short v113, signed char v114, unsigned int v115, signed char v116)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
signed short v119 = -2;
unsigned char v118 = 1;
signed int v117 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
