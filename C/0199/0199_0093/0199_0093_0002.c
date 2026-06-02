#include <stdlib.h>
extern unsigned char v1 (signed int, signed short, unsigned char, unsigned int);
extern unsigned char (*v2) (signed int, signed short, unsigned char, unsigned int);
extern unsigned short v3 (signed short, unsigned char, unsigned short, signed int);
extern unsigned short (*v4) (signed short, unsigned char, unsigned short, signed int);
extern unsigned int v5 (signed char, signed int, signed int);
extern unsigned int (*v6) (signed char, signed int, signed int);
extern signed char v7 (unsigned int, unsigned int);
extern signed char (*v8) (unsigned int, unsigned int);
signed char v9 (void);
signed char (*v10) (void) = v9;
extern signed short v11 (void);
extern signed short (*v12) (void);
extern unsigned short v13 (signed short, unsigned short, signed short);
extern unsigned short (*v14) (signed short, unsigned short, signed short);
extern signed int v15 (signed int, signed short);
extern signed int (*v16) (signed int, signed short);
extern signed int v17 (unsigned short, signed char, signed int, signed char);
extern signed int (*v18) (unsigned short, signed char, signed int, signed char);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed char v21 (signed short, unsigned short, signed int, unsigned int);
extern signed char (*v22) (signed short, unsigned short, signed int, unsigned int);
extern void v23 (unsigned short, signed int, signed int, signed char);
extern void (*v24) (unsigned short, signed int, signed int, signed char);
extern signed char v25 (unsigned int, unsigned short);
extern signed char (*v26) (unsigned int, unsigned short);
extern signed short v27 (signed short);
extern signed short (*v28) (signed short);
void v29 (unsigned short, signed short, signed short);
void (*v30) (unsigned short, signed short, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v82 = -3;
signed char v81 = -2;
signed int v80 = 0;

void v29 (unsigned short v83, signed short v84, signed short v85)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
unsigned int v88 = 3U;
signed int v87 = 0;
signed int v86 = -2;
trace++;
switch (trace)
{
case 3: 
return;
default: abort ();
}
}
}
}

signed char v9 (void)
{
{
for (;;) {
unsigned int v91 = 0U;
signed int v90 = 2;
unsigned short v89 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
