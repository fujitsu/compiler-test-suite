#include <stdlib.h>
extern signed short v1 (unsigned short, unsigned short);
extern signed short (*v2) (unsigned short, unsigned short);
unsigned short v3 (signed int, unsigned short, signed short, unsigned short);
unsigned short (*v4) (signed int, unsigned short, signed short, unsigned short) = v3;
extern void v5 (void);
extern void (*v6) (void);
extern signed int v7 (unsigned short);
extern signed int (*v8) (unsigned short);
extern unsigned char v9 (signed char);
extern unsigned char (*v10) (signed char);
extern unsigned short v11 (unsigned short, signed char, unsigned short, signed char);
extern unsigned short (*v12) (unsigned short, signed char, unsigned short, signed char);
signed char v13 (signed char, unsigned short, unsigned char, signed char);
signed char (*v14) (signed char, unsigned short, unsigned char, signed char) = v13;
extern unsigned char v15 (signed char, unsigned short);
extern unsigned char (*v16) (signed char, unsigned short);
extern unsigned int v17 (unsigned int);
extern unsigned int (*v18) (unsigned int);
extern signed char v23 (signed short, unsigned short, signed char);
extern signed char (*v24) (signed short, unsigned short, signed char);
extern unsigned char v25 (unsigned char, signed char, unsigned char, unsigned short);
extern unsigned char (*v26) (unsigned char, signed char, unsigned char, unsigned short);
extern unsigned int v27 (unsigned short, unsigned short, unsigned short);
extern unsigned int (*v28) (unsigned short, unsigned short, unsigned short);
extern unsigned int v29 (signed char, unsigned char, signed char);
extern unsigned int (*v30) (signed char, unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v57 = 7;
unsigned short v56 = 0;
signed char v55 = 0;

signed char v13 (signed char v58, unsigned short v59, unsigned char v60, signed char v61)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
signed short v64 = -2;
unsigned int v63 = 3U;
unsigned short v62 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (signed int v65, unsigned short v66, signed short v67, unsigned short v68)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
signed short v71 = -4;
unsigned int v70 = 4U;
signed int v69 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
