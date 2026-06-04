#include <stdlib.h>
extern signed char v1 (signed char, unsigned char, unsigned int);
extern signed char (*v2) (signed char, unsigned char, unsigned int);
extern signed short v3 (unsigned int);
extern signed short (*v4) (unsigned int);
extern unsigned int v5 (signed short, unsigned short);
extern unsigned int (*v6) (signed short, unsigned short);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern unsigned short v11 (unsigned int, signed short);
extern unsigned short (*v12) (unsigned int, signed short);
extern signed int v13 (signed short, unsigned int, signed short, unsigned char);
extern signed int (*v14) (signed short, unsigned int, signed short, unsigned char);
extern unsigned int v15 (unsigned char, unsigned short, unsigned int, unsigned int);
extern unsigned int (*v16) (unsigned char, unsigned short, unsigned int, unsigned int);
extern unsigned int v19 (unsigned char, unsigned int);
extern unsigned int (*v20) (unsigned char, unsigned int);
signed char v21 (unsigned int, signed char, unsigned char);
signed char (*v22) (unsigned int, signed char, unsigned char) = v21;
void v23 (unsigned int, signed int);
void (*v24) (unsigned int, signed int) = v23;
extern signed short v25 (signed short, unsigned char, signed int, signed char);
extern signed short (*v26) (signed short, unsigned char, signed int, signed char);
extern unsigned int v27 (unsigned short, unsigned short, unsigned short, unsigned short);
extern unsigned int (*v28) (unsigned short, unsigned short, unsigned short, unsigned short);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v80 = 0;
unsigned short v79 = 2;
signed short v78 = -2;

void v23 (unsigned int v81, signed int v82)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
signed int v85 = 1;
unsigned int v84 = 3U;
signed int v83 = 3;
trace++;
switch (trace)
{
case 1: 
return;
case 10: 
return;
default: abort ();
}
}
}
}

signed char v21 (unsigned int v86, signed char v87, unsigned char v88)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
unsigned short v91 = 7;
unsigned char v90 = 6;
signed char v89 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
