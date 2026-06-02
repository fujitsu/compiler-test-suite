#include <stdlib.h>
extern unsigned char v1 (signed int);
extern unsigned char (*v2) (signed int);
extern void v3 (void);
extern void (*v4) (void);
extern void v5 (void);
extern void (*v6) (void);
extern void v7 (unsigned short, unsigned char, signed char);
extern void (*v8) (unsigned short, unsigned char, signed char);
extern void v9 (void);
extern void (*v10) (void);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern void v17 (unsigned int, unsigned int, unsigned int);
extern void (*v18) (unsigned int, unsigned int, unsigned int);
extern unsigned int v19 (unsigned int, signed int);
extern unsigned int (*v20) (unsigned int, signed int);
signed int v21 (unsigned int);
signed int (*v22) (unsigned int) = v21;
void v23 (signed short, signed int, signed int, unsigned int);
void (*v24) (signed short, signed int, signed int, unsigned int) = v23;
extern unsigned char v25 (unsigned int, signed int);
extern unsigned char (*v26) (unsigned int, signed int);
signed char v27 (void);
signed char (*v28) (void) = v27;
extern unsigned int v29 (unsigned int, signed int);
extern unsigned int (*v30) (unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v70 = 7U;
unsigned char v69 = 5;
unsigned char v68 = 4;

signed char v27 (void)
{
{
for (;;) {
unsigned int v73 = 0U;
signed char v72 = 2;
signed char v71 = -1;
trace++;
switch (trace)
{
case 2: 
return v71;
default: abort ();
}
}
}
}

void v23 (signed short v74, signed int v75, signed int v76, unsigned int v77)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
unsigned short v80 = 1;
signed char v79 = 3;
signed short v78 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (unsigned int v81)
{
history[history_index++] = (int)v81;
{
for (;;) {
unsigned int v84 = 6U;
signed short v83 = -4;
signed int v82 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
