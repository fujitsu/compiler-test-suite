#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern unsigned short v3 (unsigned char);
extern unsigned short (*v4) (unsigned char);
extern signed int v5 (signed int, signed int, signed char);
extern signed int (*v6) (signed int, signed int, signed char);
extern unsigned int v7 (signed short);
extern unsigned int (*v8) (signed short);
extern signed int v9 (unsigned short);
extern signed int (*v10) (unsigned short);
unsigned int v11 (signed char, signed char, unsigned short, signed char);
unsigned int (*v12) (signed char, signed char, unsigned short, signed char) = v11;
signed char v13 (unsigned int, unsigned char, signed char);
signed char (*v14) (unsigned int, unsigned char, signed char) = v13;
extern signed char v15 (void);
extern signed char (*v16) (void);
void v17 (void);
void (*v18) (void) = v17;
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern unsigned char v21 (signed int, unsigned short, signed char);
extern unsigned char (*v22) (signed int, unsigned short, signed char);
extern signed char v23 (void);
extern signed char (*v24) (void);
extern unsigned short v25 (signed int);
extern unsigned short (*v26) (signed int);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v71 = 7U;
signed short v70 = 3;
signed char v69 = 2;

void v17 (void)
{
{
for (;;) {
signed int v74 = -1;
unsigned char v73 = 5;
unsigned int v72 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (unsigned int v75, unsigned char v76, signed char v77)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
unsigned short v80 = 3;
unsigned int v79 = 2U;
signed char v78 = 0;
trace++;
switch (trace)
{
case 11: 
return -2;
default: abort ();
}
}
}
}

unsigned int v11 (signed char v81, signed char v82, unsigned short v83, signed char v84)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
signed char v87 = -2;
signed int v86 = 2;
signed char v85 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
