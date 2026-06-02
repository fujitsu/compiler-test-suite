#include <stdlib.h>
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern void v5 (signed short, signed int, unsigned int, unsigned int);
extern void (*v6) (signed short, signed int, unsigned int, unsigned int);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern signed int v13 (unsigned int);
extern signed int (*v14) (unsigned int);
extern signed int v15 (void);
extern signed int (*v16) (void);
signed int v17 (signed int, signed short);
signed int (*v18) (signed int, signed short) = v17;
extern signed short v19 (unsigned char, signed char);
extern signed short (*v20) (unsigned char, signed char);
extern unsigned char v21 (signed char, signed int, unsigned short, signed int);
extern unsigned char (*v22) (signed char, signed int, unsigned short, signed int);
extern void v23 (unsigned short, signed int, unsigned char, unsigned short);
extern void (*v24) (unsigned short, signed int, unsigned char, unsigned short);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
void v27 (void);
void (*v28) (void) = v27;
extern unsigned short v29 (signed int, unsigned char, signed int, unsigned short);
extern unsigned short (*v30) (signed int, unsigned char, signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v136 = -1;
unsigned char v135 = 4;
unsigned char v134 = 4;

void v27 (void)
{
{
for (;;) {
signed short v139 = 1;
signed char v138 = -3;
signed short v137 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (signed int v140, signed short v141)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
signed char v144 = -3;
signed short v143 = -4;
signed char v142 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
