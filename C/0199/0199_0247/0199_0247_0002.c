#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern void v3 (signed int);
extern void (*v4) (signed int);
extern unsigned short v5 (unsigned int, signed int, unsigned char);
extern unsigned short (*v6) (unsigned int, signed int, unsigned char);
unsigned short v7 (unsigned int, unsigned int, signed short, unsigned char);
unsigned short (*v8) (unsigned int, unsigned int, signed short, unsigned char) = v7;
extern unsigned short v9 (signed short);
extern unsigned short (*v10) (signed short);
extern unsigned short v11 (unsigned char, unsigned int);
extern unsigned short (*v12) (unsigned char, unsigned int);
extern unsigned char v13 (unsigned short);
extern unsigned char (*v14) (unsigned short);
extern unsigned short v15 (unsigned char, signed int, signed char, signed int);
extern unsigned short (*v16) (unsigned char, signed int, signed char, signed int);
extern void v17 (void);
extern void (*v18) (void);
extern void v19 (unsigned short, unsigned int);
extern void (*v20) (unsigned short, unsigned int);
unsigned char v21 (signed short, signed short, unsigned short);
unsigned char (*v22) (signed short, signed short, unsigned short) = v21;
extern signed char v23 (void);
extern signed char (*v24) (void);
signed char v25 (void);
signed char (*v26) (void) = v25;
extern unsigned int v27 (unsigned int);
extern unsigned int (*v28) (unsigned int);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v65 = -3;
signed int v64 = -4;
unsigned short v63 = 6;

signed char v25 (void)
{
{
for (;;) {
signed short v68 = -1;
unsigned char v67 = 5;
unsigned short v66 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v21 (signed short v69, signed short v70, unsigned short v71)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed int v74 = -2;
signed char v73 = -3;
unsigned short v72 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (unsigned int v75, unsigned int v76, signed short v77, unsigned char v78)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
unsigned short v81 = 2;
unsigned int v80 = 6U;
unsigned char v79 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
