#include <stdlib.h>
extern unsigned char v1 (unsigned short, signed short, unsigned short);
extern unsigned char (*v2) (unsigned short, signed short, unsigned short);
extern signed short v3 (signed short, unsigned int, unsigned short, signed char);
extern signed short (*v4) (signed short, unsigned int, unsigned short, signed char);
extern unsigned short v5 (signed int);
extern unsigned short (*v6) (signed int);
signed char v7 (unsigned char, signed int, signed short, signed char);
signed char (*v8) (unsigned char, signed int, signed short, signed char) = v7;
extern signed short v9 (signed short, unsigned int, unsigned int, unsigned int);
extern signed short (*v10) (signed short, unsigned int, unsigned int, unsigned int);
extern signed char v11 (unsigned short, unsigned int);
extern signed char (*v12) (unsigned short, unsigned int);
unsigned short v13 (signed int);
unsigned short (*v14) (signed int) = v13;
extern unsigned short v15 (signed short, unsigned int, unsigned char);
extern unsigned short (*v16) (signed short, unsigned int, unsigned char);
extern unsigned char v17 (signed char);
extern unsigned char (*v18) (signed char);
extern unsigned int v19 (unsigned short, unsigned int, signed short);
extern unsigned int (*v20) (unsigned short, unsigned int, signed short);
extern signed char v21 (unsigned int, signed short, signed short, signed char);
extern signed char (*v22) (unsigned int, signed short, signed short, signed char);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern void v25 (void);
extern void (*v26) (void);
extern signed short v27 (signed int);
extern signed short (*v28) (signed int);
extern signed char v29 (unsigned char, unsigned int);
extern signed char (*v30) (unsigned char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v59 = 1;
unsigned short v58 = 0;
signed short v57 = 3;

unsigned short v13 (signed int v60)
{
history[history_index++] = (int)v60;
{
for (;;) {
unsigned short v63 = 4;
signed int v62 = 2;
signed short v61 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (unsigned char v64, signed int v65, signed short v66, signed char v67)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
unsigned int v70 = 0U;
unsigned int v69 = 3U;
unsigned char v68 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
