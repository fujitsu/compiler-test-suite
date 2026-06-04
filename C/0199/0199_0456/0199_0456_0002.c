#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern signed short v3 (void);
extern signed short (*v4) (void);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern signed char v7 (unsigned char, unsigned int, unsigned char);
extern signed char (*v8) (unsigned char, unsigned int, unsigned char);
extern unsigned short v9 (unsigned int, unsigned char, signed short);
extern unsigned short (*v10) (unsigned int, unsigned char, signed short);
extern unsigned char v11 (signed char);
extern unsigned char (*v12) (signed char);
extern void v13 (signed int);
extern void (*v14) (signed int);
extern signed char v15 (void);
extern signed char (*v16) (void);
signed int v17 (unsigned int, signed int);
signed int (*v18) (unsigned int, signed int) = v17;
unsigned short v19 (signed short, unsigned char, unsigned short, unsigned short);
unsigned short (*v20) (signed short, unsigned char, unsigned short, unsigned short) = v19;
extern signed int v21 (signed short, unsigned int, unsigned char, signed int);
extern signed int (*v22) (signed short, unsigned int, unsigned char, signed int);
extern signed int v23 (signed int, unsigned char, signed short, signed int);
extern signed int (*v24) (signed int, unsigned char, signed short, signed int);
extern unsigned char v25 (signed short, signed short, signed int);
extern unsigned char (*v26) (signed short, signed short, signed int);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v65 = -1;
unsigned short v64 = 6;
unsigned char v63 = 4;

unsigned short v19 (signed short v66, unsigned char v67, unsigned short v68, unsigned short v69)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
unsigned short v72 = 6;
signed short v71 = 0;
signed int v70 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (unsigned int v73, signed int v74)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed int v77 = -4;
unsigned int v76 = 0U;
signed char v75 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
