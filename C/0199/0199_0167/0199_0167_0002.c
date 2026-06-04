#include <stdlib.h>
extern void v1 (signed short, unsigned short, signed short, signed char);
extern void (*v2) (signed short, unsigned short, signed short, signed char);
extern void v3 (signed short, unsigned int, unsigned short, signed int);
extern void (*v4) (signed short, unsigned int, unsigned short, signed int);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern void v9 (signed int, unsigned int, unsigned int, unsigned char);
extern void (*v10) (signed int, unsigned int, unsigned int, unsigned char);
signed short v11 (unsigned int, unsigned char, signed short);
signed short (*v12) (unsigned int, unsigned char, signed short) = v11;
extern void v13 (unsigned int, signed int, signed int);
extern void (*v14) (unsigned int, signed int, signed int);
extern void v15 (unsigned char, signed short);
extern void (*v16) (unsigned char, signed short);
extern unsigned short v17 (unsigned int, signed int, unsigned short, signed char);
extern unsigned short (*v18) (unsigned int, signed int, unsigned short, signed char);
extern signed int v19 (signed short, unsigned int, signed int);
extern signed int (*v20) (signed short, unsigned int, signed int);
extern unsigned char v21 (unsigned char, unsigned int);
extern unsigned char (*v22) (unsigned char, unsigned int);
signed int v23 (signed short, unsigned short, signed int, unsigned int);
signed int (*v24) (signed short, unsigned short, signed int, unsigned int) = v23;
signed short v25 (signed short, unsigned char, signed int);
signed short (*v26) (signed short, unsigned char, signed int) = v25;
extern unsigned short v27 (unsigned int, unsigned int, unsigned int);
extern unsigned short (*v28) (unsigned int, unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v72 = 7U;
unsigned int v71 = 6U;
unsigned char v70 = 5;

signed short v25 (signed short v73, unsigned char v74, signed int v75)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
signed char v78 = 2;
signed char v77 = 3;
unsigned short v76 = 5;
trace++;
switch (trace)
{
case 6: 
return v73;
default: abort ();
}
}
}
}

signed int v23 (signed short v79, unsigned short v80, signed int v81, unsigned int v82)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
signed short v85 = -1;
unsigned char v84 = 6;
unsigned char v83 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (unsigned int v86, unsigned char v87, signed short v88)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
unsigned short v91 = 2;
signed short v90 = 2;
unsigned short v89 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
