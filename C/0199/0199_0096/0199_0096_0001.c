#include <stdlib.h>
unsigned char v3 (unsigned int);
unsigned char (*v4) (unsigned int) = v3;
extern void v5 (signed int, unsigned short, unsigned char);
extern void (*v6) (signed int, unsigned short, unsigned char);
extern unsigned char v7 (signed int, unsigned short);
extern unsigned char (*v8) (signed int, unsigned short);
extern unsigned char v9 (signed int, signed int, unsigned int);
extern unsigned char (*v10) (signed int, signed int, unsigned int);
extern unsigned int v11 (unsigned char, signed char, signed char);
extern unsigned int (*v12) (unsigned char, signed char, signed char);
extern unsigned int v13 (signed char, unsigned short);
extern unsigned int (*v14) (signed char, unsigned short);
extern signed char v15 (unsigned short, unsigned int);
extern signed char (*v16) (unsigned short, unsigned int);
extern void v19 (unsigned short, signed int, unsigned short, unsigned int);
extern void (*v20) (unsigned short, signed int, unsigned short, unsigned int);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
void v29 (signed short, signed int);
void (*v30) (signed short, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v59 = 4;
unsigned char v58 = 0;
signed short v57 = -3;

void v29 (signed short v60, signed int v61)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
signed char v64 = -3;
signed short v63 = 0;
signed short v62 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (unsigned int v65)
{
history[history_index++] = (int)v65;
{
for (;;) {
signed short v68 = -3;
unsigned int v67 = 3U;
signed int v66 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
