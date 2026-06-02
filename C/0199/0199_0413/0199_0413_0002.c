#include <stdlib.h>
extern signed short v3 (void);
extern signed short (*v4) (void);
extern unsigned char v5 (signed short, unsigned char, unsigned short);
extern unsigned char (*v6) (signed short, unsigned char, unsigned short);
extern signed short v7 (signed short);
extern signed short (*v8) (signed short);
signed short v9 (signed int, signed short);
signed short (*v10) (signed int, signed short) = v9;
extern void v11 (signed int, signed int, signed int);
extern void (*v12) (signed int, signed int, signed int);
unsigned int v13 (signed char, signed char, signed char);
unsigned int (*v14) (signed char, signed char, signed char) = v13;
extern unsigned short v15 (unsigned char, signed int);
extern unsigned short (*v16) (unsigned char, signed int);
extern unsigned char v17 (unsigned short);
extern unsigned char (*v18) (unsigned short);
extern void v19 (unsigned char, unsigned int);
extern void (*v20) (unsigned char, unsigned int);
extern unsigned short v21 (unsigned int, unsigned int, unsigned short, signed char);
extern unsigned short (*v22) (unsigned int, unsigned int, unsigned short, signed char);
extern unsigned int v23 (signed short, signed int, unsigned int);
extern unsigned int (*v24) (signed short, signed int, unsigned int);
extern signed int v25 (signed int, signed short);
extern signed int (*v26) (signed int, signed short);
signed int v27 (unsigned short);
signed int (*v28) (unsigned short) = v27;
extern signed char v29 (signed char);
extern signed char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v75 = 1;
unsigned int v74 = 4U;
signed int v73 = 2;

signed int v27 (unsigned short v76)
{
history[history_index++] = (int)v76;
{
for (;;) {
signed int v79 = -1;
signed int v78 = 0;
unsigned int v77 = 0U;
trace++;
switch (trace)
{
case 1: 
return v79;
default: abort ();
}
}
}
}

unsigned int v13 (signed char v80, signed char v81, signed char v82)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned char v85 = 5;
signed short v84 = 1;
signed char v83 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (signed int v86, signed short v87)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
signed int v90 = 0;
unsigned char v89 = 6;
signed int v88 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
