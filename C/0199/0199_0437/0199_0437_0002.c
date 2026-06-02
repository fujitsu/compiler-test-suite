#include <stdlib.h>
extern unsigned short v1 (signed short, unsigned short);
extern unsigned short (*v2) (signed short, unsigned short);
extern unsigned int v3 (signed int);
extern unsigned int (*v4) (signed int);
extern signed int v5 (signed char, unsigned short, signed short, unsigned char);
extern signed int (*v6) (signed char, unsigned short, signed short, unsigned char);
extern unsigned short v7 (unsigned int);
extern unsigned short (*v8) (unsigned int);
signed int v9 (unsigned int, unsigned int, signed char, signed int);
signed int (*v10) (unsigned int, unsigned int, signed char, signed int) = v9;
extern void v11 (signed char, signed int, unsigned short);
extern void (*v12) (signed char, signed int, unsigned short);
extern signed char v13 (signed char, signed short);
extern signed char (*v14) (signed char, signed short);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern unsigned char v17 (signed char, unsigned short);
extern unsigned char (*v18) (signed char, unsigned short);
extern signed char v19 (signed char);
extern signed char (*v20) (signed char);
unsigned short v21 (unsigned char);
unsigned short (*v22) (unsigned char) = v21;
extern void v23 (unsigned short, unsigned int, signed char);
extern void (*v24) (unsigned short, unsigned int, signed char);
extern unsigned short v25 (unsigned short);
extern unsigned short (*v26) (unsigned short);
unsigned short v27 (signed int);
unsigned short (*v28) (signed int) = v27;
extern signed short v29 (unsigned short, unsigned char);
extern signed short (*v30) (unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v65 = 4U;
signed int v64 = 3;
signed char v63 = 0;

unsigned short v27 (signed int v66)
{
history[history_index++] = (int)v66;
{
for (;;) {
signed short v69 = 1;
unsigned int v68 = 7U;
signed short v67 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (unsigned char v70)
{
history[history_index++] = (int)v70;
{
for (;;) {
signed short v73 = -4;
signed short v72 = 1;
unsigned char v71 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (unsigned int v74, unsigned int v75, signed char v76, signed int v77)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
signed int v80 = -2;
unsigned int v79 = 0U;
unsigned int v78 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
