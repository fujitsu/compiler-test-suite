#include <stdlib.h>
extern void v1 (unsigned short, signed int, unsigned char);
extern void (*v2) (unsigned short, signed int, unsigned char);
void v3 (unsigned char, unsigned int, unsigned short, signed char);
void (*v4) (unsigned char, unsigned int, unsigned short, signed char) = v3;
extern signed int v7 (signed short, signed short, signed short);
extern signed int (*v8) (signed short, signed short, signed short);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern unsigned int v15 (unsigned char, signed char, unsigned int);
extern unsigned int (*v16) (unsigned char, signed char, unsigned int);
extern signed char v17 (void);
extern signed char (*v18) (void);
unsigned short v19 (void);
unsigned short (*v20) (void) = v19;
extern unsigned short v21 (signed short, unsigned char);
extern unsigned short (*v22) (signed short, unsigned char);
signed char v25 (unsigned short);
signed char (*v26) (unsigned short) = v25;
extern signed char v27 (signed int);
extern signed char (*v28) (signed int);
extern unsigned short v29 (unsigned short, unsigned int);
extern unsigned short (*v30) (unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v55 = -1;
unsigned char v54 = 6;
unsigned char v53 = 4;

signed char v25 (unsigned short v56)
{
history[history_index++] = (int)v56;
{
for (;;) {
signed short v59 = 3;
unsigned char v58 = 6;
unsigned short v57 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (void)
{
{
for (;;) {
signed int v62 = -2;
unsigned short v61 = 3;
unsigned short v60 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (unsigned char v63, unsigned int v64, unsigned short v65, signed char v66)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned char v69 = 6;
unsigned short v68 = 3;
unsigned int v67 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
