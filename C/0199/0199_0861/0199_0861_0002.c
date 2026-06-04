#include <stdlib.h>
extern unsigned short v1 (unsigned char, unsigned short, unsigned int);
extern unsigned short (*v2) (unsigned char, unsigned short, unsigned int);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern unsigned short v5 (signed char, unsigned int, signed char);
extern unsigned short (*v6) (signed char, unsigned int, signed char);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern unsigned short v9 (unsigned int, signed char, unsigned char, signed char);
extern unsigned short (*v10) (unsigned int, signed char, unsigned char, signed char);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern signed int v13 (unsigned int, signed int);
extern signed int (*v14) (unsigned int, signed int);
extern signed short v15 (unsigned char, signed int);
extern signed short (*v16) (unsigned char, signed int);
extern void v17 (void);
extern void (*v18) (void);
void v19 (unsigned char, unsigned short, signed short);
void (*v20) (unsigned char, unsigned short, signed short) = v19;
unsigned int v23 (unsigned int, signed int);
unsigned int (*v24) (unsigned int, signed int) = v23;
extern void v25 (signed short, unsigned int, signed short, unsigned short);
extern void (*v26) (signed short, unsigned int, signed short, unsigned short);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v53 = -4;
signed int v52 = 3;
unsigned char v51 = 1;

unsigned int v23 (unsigned int v54, signed int v55)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned char v58 = 7;
unsigned int v57 = 3U;
signed short v56 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (unsigned char v59, unsigned short v60, signed short v61)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
signed short v64 = 2;
signed short v63 = -3;
unsigned short v62 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
