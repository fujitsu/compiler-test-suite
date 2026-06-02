#include <stdlib.h>
extern signed short v1 (signed int, unsigned short, signed char, unsigned short);
extern signed short (*v2) (signed int, unsigned short, signed char, unsigned short);
extern signed char v3 (unsigned short);
extern signed char (*v4) (unsigned short);
extern unsigned int v5 (unsigned char, unsigned short, unsigned char);
extern unsigned int (*v6) (unsigned char, unsigned short, unsigned char);
extern signed short v7 (signed short, signed char);
extern signed short (*v8) (signed short, signed char);
extern signed char v9 (signed short, unsigned short, signed int, unsigned int);
extern signed char (*v10) (signed short, unsigned short, signed int, unsigned int);
extern signed char v11 (unsigned char);
extern signed char (*v12) (unsigned char);
extern signed int v13 (signed char, signed short, signed char);
extern signed int (*v14) (signed char, signed short, signed char);
unsigned char v15 (unsigned int, unsigned int, signed int, signed short);
unsigned char (*v16) (unsigned int, unsigned int, signed int, signed short) = v15;
unsigned char v17 (unsigned short);
unsigned char (*v18) (unsigned short) = v17;
extern signed char v25 (unsigned int, unsigned short);
extern signed char (*v26) (unsigned int, unsigned short);
unsigned int v29 (signed short);
unsigned int (*v30) (signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v60 = 1;
unsigned char v59 = 2;
signed char v58 = 0;

unsigned int v29 (signed short v61)
{
history[history_index++] = (int)v61;
{
for (;;) {
signed char v64 = -3;
unsigned int v63 = 7U;
signed int v62 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (unsigned short v65)
{
history[history_index++] = (int)v65;
{
for (;;) {
signed char v68 = -1;
signed char v67 = -4;
unsigned char v66 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (unsigned int v69, unsigned int v70, signed int v71, signed short v72)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
unsigned int v75 = 4U;
signed int v74 = -1;
unsigned char v73 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
