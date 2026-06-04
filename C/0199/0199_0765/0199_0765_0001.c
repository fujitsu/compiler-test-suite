#include <stdlib.h>
extern void v1 (signed char, signed int, signed int);
extern void (*v2) (signed char, signed int, signed int);
unsigned int v3 (unsigned short);
unsigned int (*v4) (unsigned short) = v3;
extern void v5 (signed char, signed char, unsigned int, unsigned int);
extern void (*v6) (signed char, signed char, unsigned int, unsigned int);
unsigned int v7 (unsigned int, unsigned int, signed int, unsigned short);
unsigned int (*v8) (unsigned int, unsigned int, signed int, unsigned short) = v7;
unsigned char v9 (signed int, signed short);
unsigned char (*v10) (signed int, signed short) = v9;
extern signed short v13 (unsigned short, unsigned char, signed char);
extern signed short (*v14) (unsigned short, unsigned char, signed char);
extern signed int v15 (unsigned char, signed short, unsigned char, unsigned char);
extern signed int (*v16) (unsigned char, signed short, unsigned char, unsigned char);
extern void v17 (void);
extern void (*v18) (void);
extern unsigned int v19 (signed int, signed short, unsigned int, signed short);
extern unsigned int (*v20) (signed int, signed short, unsigned int, signed short);
extern void v21 (void);
extern void (*v22) (void);
extern void v23 (void);
extern void (*v24) (void);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern signed char v29 (signed int, unsigned int);
extern signed char (*v30) (signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v60 = 7;
unsigned char v59 = 0;
unsigned char v58 = 0;

unsigned char v9 (signed int v61, signed short v62)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned int v65 = 1U;
signed short v64 = 1;
signed short v63 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (unsigned int v66, unsigned int v67, signed int v68, unsigned short v69)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
signed short v72 = -2;
unsigned short v71 = 0;
signed int v70 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (unsigned short v73)
{
history[history_index++] = (int)v73;
{
for (;;) {
unsigned int v76 = 1U;
unsigned int v75 = 0U;
unsigned int v74 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
