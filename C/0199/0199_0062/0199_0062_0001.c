#include <stdlib.h>
extern unsigned int v1 (unsigned int, unsigned char, signed char);
extern unsigned int (*v2) (unsigned int, unsigned char, signed char);
extern signed int v3 (unsigned short, signed int, signed short, unsigned short);
extern signed int (*v4) (unsigned short, signed int, signed short, unsigned short);
extern unsigned int v5 (unsigned int);
extern unsigned int (*v6) (unsigned int);
extern signed int v7 (unsigned short, signed int, unsigned char, unsigned short);
extern signed int (*v8) (unsigned short, signed int, unsigned char, unsigned short);
extern unsigned char v9 (signed char, unsigned short);
extern unsigned char (*v10) (signed char, unsigned short);
signed int v11 (unsigned short);
signed int (*v12) (unsigned short) = v11;
extern signed int v13 (signed short, signed int);
extern signed int (*v14) (signed short, signed int);
extern signed int v15 (unsigned char, signed char, signed short);
extern signed int (*v16) (unsigned char, signed char, signed short);
extern signed char v17 (signed short, unsigned int, signed char);
extern signed char (*v18) (signed short, unsigned int, signed char);
void v19 (signed int, unsigned int, signed short);
void (*v20) (signed int, unsigned int, signed short) = v19;
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern void v25 (signed int, signed int);
extern void (*v26) (signed int, signed int);
extern signed short v27 (unsigned int, unsigned short, signed int, unsigned short);
extern signed short (*v28) (unsigned int, unsigned short, signed int, unsigned short);
unsigned short v29 (unsigned short, signed char, unsigned short);
unsigned short (*v30) (unsigned short, signed char, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v58 = -2;
unsigned char v57 = 2;
signed int v56 = -2;

unsigned short v29 (unsigned short v59, signed char v60, unsigned short v61)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
signed char v64 = -4;
unsigned char v63 = 5;
signed char v62 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (signed int v65, unsigned int v66, signed short v67)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
unsigned short v70 = 0;
signed char v69 = 3;
signed int v68 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (unsigned short v71)
{
history[history_index++] = (int)v71;
{
for (;;) {
unsigned int v74 = 5U;
signed short v73 = -4;
unsigned char v72 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
