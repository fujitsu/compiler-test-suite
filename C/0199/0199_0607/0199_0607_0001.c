#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern signed char v3 (unsigned int, signed short);
extern signed char (*v4) (unsigned int, signed short);
extern signed short v5 (signed int);
extern signed short (*v6) (signed int);
extern signed int v7 (unsigned char, signed int);
extern signed int (*v8) (unsigned char, signed int);
void v9 (void);
void (*v10) (void) = v9;
extern signed char v11 (unsigned short, unsigned int, signed short);
extern signed char (*v12) (unsigned short, unsigned int, signed short);
extern void v13 (signed short, signed int, signed int, signed char);
extern void (*v14) (signed short, signed int, signed int, signed char);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern signed char v17 (signed short, signed short, signed int, signed int);
extern signed char (*v18) (signed short, signed short, signed int, signed int);
extern unsigned char v19 (unsigned short, unsigned char, unsigned int, signed char);
extern unsigned char (*v20) (unsigned short, unsigned char, unsigned int, signed char);
extern unsigned short v23 (signed int);
extern unsigned short (*v24) (signed int);
signed char v25 (signed char, signed short, unsigned char, signed int);
signed char (*v26) (signed char, signed short, unsigned char, signed int) = v25;
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v54 = -4;
signed char v53 = -3;
unsigned short v52 = 7;

signed char v25 (signed char v55, signed short v56, unsigned char v57, signed int v58)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
unsigned int v61 = 3U;
unsigned short v60 = 2;
unsigned char v59 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (void)
{
{
for (;;) {
unsigned short v64 = 6;
unsigned int v63 = 5U;
signed char v62 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
