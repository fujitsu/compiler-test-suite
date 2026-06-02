#include <stdlib.h>
extern unsigned char v1 (signed char, unsigned int);
extern unsigned char (*v2) (signed char, unsigned int);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
signed char v5 (unsigned char, signed char, unsigned char, unsigned char);
signed char (*v6) (unsigned char, signed char, unsigned char, unsigned char) = v5;
extern signed int v7 (signed short, signed char, signed int);
extern signed int (*v8) (signed short, signed char, signed int);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern void v13 (signed int, signed short, signed short);
extern void (*v14) (signed int, signed short, signed short);
extern unsigned short v15 (unsigned int, signed int);
extern unsigned short (*v16) (unsigned int, signed int);
extern unsigned int v17 (signed int);
extern unsigned int (*v18) (signed int);
extern signed int v19 (unsigned short, unsigned char, unsigned int, unsigned int);
extern signed int (*v20) (unsigned short, unsigned char, unsigned int, unsigned int);
extern unsigned char v21 (unsigned int, unsigned int);
extern unsigned char (*v22) (unsigned int, unsigned int);
signed short v23 (signed short, signed int, signed char);
signed short (*v24) (signed short, signed int, signed char) = v23;
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned char v27 (signed short);
extern unsigned char (*v28) (signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v57 = 4;
signed short v56 = -3;
unsigned char v55 = 3;

signed short v23 (signed short v58, signed int v59, signed char v60)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
signed char v63 = -1;
signed char v62 = -4;
signed int v61 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (unsigned char v64, signed char v65, unsigned char v66, unsigned char v67)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
unsigned short v70 = 7;
unsigned int v69 = 4U;
signed char v68 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
