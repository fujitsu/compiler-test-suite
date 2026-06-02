#include <stdlib.h>
extern void v1 (signed char, signed char, unsigned short, signed short);
extern void (*v2) (signed char, signed char, unsigned short, signed short);
extern unsigned int v5 (signed int, signed int, unsigned int, signed short);
extern unsigned int (*v6) (signed int, signed int, unsigned int, signed short);
extern unsigned int v7 (signed int, unsigned int, unsigned char);
extern unsigned int (*v8) (signed int, unsigned int, unsigned char);
unsigned short v9 (signed int, signed char, signed int);
unsigned short (*v10) (signed int, signed char, signed int) = v9;
extern unsigned short v11 (unsigned char);
extern unsigned short (*v12) (unsigned char);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern unsigned char v15 (unsigned short, signed char, signed int);
extern unsigned char (*v16) (unsigned short, signed char, signed int);
extern signed char v17 (signed int);
extern signed char (*v18) (signed int);
signed int v19 (void);
signed int (*v20) (void) = v19;
extern unsigned int v21 (unsigned int, unsigned int, signed int);
extern unsigned int (*v22) (unsigned int, unsigned int, signed int);
extern signed int v23 (signed char, unsigned int, signed int, signed short);
extern signed int (*v24) (signed char, unsigned int, signed int, signed short);
extern unsigned short v25 (unsigned int, unsigned int, unsigned char);
extern unsigned short (*v26) (unsigned int, unsigned int, unsigned char);
unsigned int v27 (unsigned int, signed int, signed int);
unsigned int (*v28) (unsigned int, signed int, signed int) = v27;
extern unsigned short v29 (unsigned int, unsigned short, signed char, signed int);
extern unsigned short (*v30) (unsigned int, unsigned short, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v62 = 2;
unsigned char v61 = 0;
signed char v60 = -4;

unsigned int v27 (unsigned int v63, signed int v64, signed int v65)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
signed char v68 = 0;
unsigned char v67 = 5;
signed int v66 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (void)
{
{
for (;;) {
signed short v71 = -1;
signed short v70 = -1;
signed short v69 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (signed int v72, signed char v73, signed int v74)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
unsigned char v77 = 7;
unsigned int v76 = 2U;
unsigned short v75 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
