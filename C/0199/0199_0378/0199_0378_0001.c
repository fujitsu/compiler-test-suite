#include <stdlib.h>
extern void v1 (unsigned short, unsigned char, unsigned short, signed char);
extern void (*v2) (unsigned short, unsigned char, unsigned short, signed char);
extern void v3 (signed short, unsigned char, unsigned char);
extern void (*v4) (signed short, unsigned char, unsigned char);
signed short v7 (signed short, signed int);
signed short (*v8) (signed short, signed int) = v7;
extern unsigned short v9 (unsigned char, unsigned int);
extern unsigned short (*v10) (unsigned char, unsigned int);
extern unsigned char v11 (signed short, signed short, signed short, unsigned int);
extern unsigned char (*v12) (signed short, signed short, signed short, unsigned int);
extern signed int v13 (void);
extern signed int (*v14) (void);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern unsigned short v17 (signed char);
extern unsigned short (*v18) (signed char);
extern unsigned int v19 (signed int, unsigned int, unsigned int, unsigned char);
extern unsigned int (*v20) (signed int, unsigned int, unsigned int, unsigned char);
extern signed char v21 (unsigned int, unsigned int, unsigned char, signed int);
extern signed char (*v22) (unsigned int, unsigned int, unsigned char, signed int);
extern signed short v23 (void);
extern signed short (*v24) (void);
signed int v25 (void);
signed int (*v26) (void) = v25;
void v27 (void);
void (*v28) (void) = v27;
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v55 = -2;
signed int v54 = 0;
unsigned short v53 = 0;

void v27 (void)
{
{
for (;;) {
signed int v58 = -1;
unsigned char v57 = 7;
unsigned int v56 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v25 (void)
{
{
for (;;) {
unsigned short v61 = 0;
unsigned int v60 = 1U;
signed int v59 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (signed short v62, signed int v63)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
signed int v66 = 2;
unsigned short v65 = 6;
signed int v64 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
