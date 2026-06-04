#include <stdlib.h>
extern void v3 (signed int, signed short, unsigned char);
extern void (*v4) (signed int, signed short, unsigned char);
unsigned char v5 (unsigned short);
unsigned char (*v6) (unsigned short) = v5;
signed int v7 (unsigned int, signed short, unsigned int);
signed int (*v8) (unsigned int, signed short, unsigned int) = v7;
extern signed char v9 (unsigned int, unsigned short, unsigned short, unsigned short);
extern signed char (*v10) (unsigned int, unsigned short, unsigned short, unsigned short);
extern signed char v11 (signed char);
extern signed char (*v12) (signed char);
extern signed int v13 (unsigned char, signed char, signed char, unsigned short);
extern signed int (*v14) (unsigned char, signed char, signed char, unsigned short);
extern signed char v15 (unsigned char, signed char, signed short);
extern signed char (*v16) (unsigned char, signed char, signed short);
extern void v17 (signed int, unsigned short, signed short, unsigned int);
extern void (*v18) (signed int, unsigned short, signed short, unsigned int);
extern unsigned char v19 (unsigned int);
extern unsigned char (*v20) (unsigned int);
extern signed int v21 (unsigned char, unsigned int, unsigned int, signed short);
extern signed int (*v22) (unsigned char, unsigned int, unsigned int, signed short);
extern signed int v23 (unsigned short, signed char);
extern signed int (*v24) (unsigned short, signed char);
signed short v25 (signed int, signed char);
signed short (*v26) (signed int, signed char) = v25;
extern signed char v27 (signed short, signed int, unsigned int, signed int);
extern signed char (*v28) (signed short, signed int, unsigned int, signed int);
extern void v29 (signed char);
extern void (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v64 = 1;
signed char v63 = 3;
signed char v62 = -3;

signed short v25 (signed int v65, signed char v66)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned char v69 = 6;
signed char v68 = -3;
signed int v67 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (unsigned int v70, signed short v71, unsigned int v72)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
unsigned short v75 = 4;
signed int v74 = -3;
signed short v73 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned short v76)
{
history[history_index++] = (int)v76;
{
for (;;) {
unsigned short v79 = 4;
signed int v78 = 3;
unsigned char v77 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
