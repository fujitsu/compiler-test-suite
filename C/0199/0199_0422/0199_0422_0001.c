#include <stdlib.h>
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed short v5 (unsigned char, signed char, signed int, signed int);
extern signed short (*v6) (unsigned char, signed char, signed int, signed int);
signed int v7 (signed short, unsigned short, signed short, signed char);
signed int (*v8) (signed short, unsigned short, signed short, signed char) = v7;
signed char v9 (void);
signed char (*v10) (void) = v9;
extern unsigned int v11 (signed int, signed short, unsigned short, signed short);
extern unsigned int (*v12) (signed int, signed short, unsigned short, signed short);
extern unsigned char v13 (unsigned short, signed int);
extern unsigned char (*v14) (unsigned short, signed int);
extern signed char v15 (unsigned int, signed short, unsigned char, signed char);
extern signed char (*v16) (unsigned int, signed short, unsigned char, signed char);
extern signed int v17 (signed short, unsigned short, unsigned short, signed short);
extern signed int (*v18) (signed short, unsigned short, unsigned short, signed short);
unsigned int v19 (void);
unsigned int (*v20) (void) = v19;
extern void v21 (signed char, signed char, signed short);
extern void (*v22) (signed char, signed char, signed short);
extern signed short v23 (unsigned char, unsigned char, signed short);
extern signed short (*v24) (unsigned char, unsigned char, signed short);
extern unsigned int v25 (signed int, signed char, unsigned char, unsigned short);
extern unsigned int (*v26) (signed int, signed char, unsigned char, unsigned short);
extern signed char v27 (unsigned short, unsigned char);
extern signed char (*v28) (unsigned short, unsigned char);
extern signed int v29 (signed short, signed char);
extern signed int (*v30) (signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v70 = 2U;
unsigned char v69 = 1;
signed int v68 = 1;

unsigned int v19 (void)
{
{
for (;;) {
signed char v73 = 0;
signed int v72 = -1;
unsigned char v71 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (void)
{
{
for (;;) {
signed short v76 = 1;
signed char v75 = -3;
unsigned int v74 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (signed short v77, unsigned short v78, signed short v79, signed char v80)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
signed char v83 = 1;
signed int v82 = 2;
signed short v81 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
