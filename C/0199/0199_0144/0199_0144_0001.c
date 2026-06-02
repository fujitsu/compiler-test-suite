#include <stdlib.h>
extern void v1 (signed int, signed char);
extern void (*v2) (signed int, signed char);
extern signed short v3 (void);
extern signed short (*v4) (void);
extern void v5 (signed int);
extern void (*v6) (signed int);
extern void v7 (signed int, signed int, unsigned short, signed char);
extern void (*v8) (signed int, signed int, unsigned short, signed char);
extern unsigned char v9 (unsigned short, signed short, signed int, signed char);
extern unsigned char (*v10) (unsigned short, signed short, signed int, signed char);
extern signed char v11 (signed int, signed int, signed int);
extern signed char (*v12) (signed int, signed int, signed int);
signed int v13 (signed char, unsigned int, signed int, unsigned char);
signed int (*v14) (signed char, unsigned int, signed int, unsigned char) = v13;
unsigned short v15 (signed char);
unsigned short (*v16) (signed char) = v15;
extern unsigned short v17 (signed short, signed int);
extern unsigned short (*v18) (signed short, signed int);
extern void v19 (unsigned int, unsigned short, signed char);
extern void (*v20) (unsigned int, unsigned short, signed char);
extern unsigned char v21 (unsigned short, signed char);
extern unsigned char (*v22) (unsigned short, signed char);
extern unsigned int v23 (unsigned int, unsigned short, unsigned short, signed short);
extern unsigned int (*v24) (unsigned int, unsigned short, unsigned short, signed short);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern void v27 (unsigned short, signed char, signed char, unsigned int);
extern void (*v28) (unsigned short, signed char, signed char, unsigned int);
extern void v29 (unsigned short, signed char, unsigned int, signed int);
extern void (*v30) (unsigned short, signed char, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v63 = -4;
unsigned int v62 = 1U;
signed int v61 = -3;

unsigned short v15 (signed char v64)
{
history[history_index++] = (int)v64;
{
for (;;) {
signed short v67 = 1;
signed char v66 = -1;
unsigned int v65 = 3U;
trace++;
switch (trace)
{
case 7: 
return 7;
default: abort ();
}
}
}
}

signed int v13 (signed char v68, unsigned int v69, signed int v70, unsigned char v71)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed int v74 = -3;
signed short v73 = -2;
unsigned char v72 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
