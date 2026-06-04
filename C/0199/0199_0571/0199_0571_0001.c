#include <stdlib.h>
extern unsigned int v1 (unsigned short);
extern unsigned int (*v2) (unsigned short);
extern unsigned short v3 (unsigned char);
extern unsigned short (*v4) (unsigned char);
extern signed char v5 (signed short);
extern signed char (*v6) (signed short);
void v7 (unsigned char, unsigned int, signed short);
void (*v8) (unsigned char, unsigned int, signed short) = v7;
extern unsigned int v9 (signed char, unsigned short, unsigned int, signed short);
extern unsigned int (*v10) (signed char, unsigned short, unsigned int, signed short);
extern signed int v11 (signed short, signed char);
extern signed int (*v12) (signed short, signed char);
unsigned char v13 (void);
unsigned char (*v14) (void) = v13;
extern signed char v15 (void);
extern signed char (*v16) (void);
signed char v17 (signed char);
signed char (*v18) (signed char) = v17;
extern signed char v19 (unsigned char, unsigned int);
extern signed char (*v20) (unsigned char, unsigned int);
extern unsigned short v23 (signed int, unsigned int, signed char);
extern unsigned short (*v24) (signed int, unsigned int, signed char);
extern signed short v25 (signed int);
extern signed short (*v26) (signed int);
extern void v27 (void);
extern void (*v28) (void);
extern signed short v29 (unsigned short, signed char, unsigned char);
extern signed short (*v30) (unsigned short, signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v55 = -4;
signed short v54 = -3;
signed char v53 = -1;

signed char v17 (signed char v56)
{
history[history_index++] = (int)v56;
{
for (;;) {
unsigned short v59 = 5;
signed char v58 = 0;
unsigned short v57 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (void)
{
{
for (;;) {
signed char v62 = -1;
signed char v61 = -4;
unsigned short v60 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (unsigned char v63, unsigned int v64, signed short v65)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
signed int v68 = -1;
unsigned char v67 = 0;
unsigned char v66 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
