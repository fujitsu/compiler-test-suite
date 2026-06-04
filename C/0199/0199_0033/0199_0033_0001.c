#include <stdlib.h>
extern signed char v1 (unsigned int, unsigned int, signed int);
extern signed char (*v2) (unsigned int, unsigned int, signed int);
extern unsigned short v3 (unsigned char, unsigned int, signed short);
extern unsigned short (*v4) (unsigned char, unsigned int, signed short);
extern unsigned short v5 (signed short, unsigned char, unsigned int);
extern unsigned short (*v6) (signed short, unsigned char, unsigned int);
extern signed int v7 (unsigned char);
extern signed int (*v8) (unsigned char);
unsigned short v9 (unsigned short, unsigned char, signed short);
unsigned short (*v10) (unsigned short, unsigned char, signed short) = v9;
extern signed short v11 (signed short);
extern signed short (*v12) (signed short);
unsigned char v13 (unsigned short, signed short);
unsigned char (*v14) (unsigned short, signed short) = v13;
extern signed short v15 (void);
extern signed short (*v16) (void);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
signed int v19 (signed short, signed int);
signed int (*v20) (signed short, signed int) = v19;
extern unsigned char v21 (signed int, signed int, unsigned int);
extern unsigned char (*v22) (signed int, signed int, unsigned int);
extern signed char v23 (signed int);
extern signed char (*v24) (signed int);
extern signed int v25 (signed int, signed int, unsigned short, signed char);
extern signed int (*v26) (signed int, signed int, unsigned short, signed char);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern unsigned char v29 (signed int);
extern unsigned char (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v63 = 4U;
signed int v62 = -1;
unsigned int v61 = 1U;

signed int v19 (signed short v64, signed int v65)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
signed int v68 = -2;
signed int v67 = 0;
signed int v66 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (unsigned short v69, signed short v70)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
unsigned char v73 = 4;
unsigned char v72 = 0;
signed int v71 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (unsigned short v74, unsigned char v75, signed short v76)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
signed short v79 = -4;
signed char v78 = -1;
unsigned int v77 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
