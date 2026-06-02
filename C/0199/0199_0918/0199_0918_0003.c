#include <stdlib.h>
extern signed char v1 (unsigned short, signed int, signed int, signed short);
extern signed char (*v2) (unsigned short, signed int, signed int, signed short);
extern void v3 (void);
extern void (*v4) (void);
extern signed int v5 (unsigned int, unsigned char, unsigned short);
extern signed int (*v6) (unsigned int, unsigned char, unsigned short);
signed char v7 (unsigned short, signed short);
signed char (*v8) (unsigned short, signed short) = v7;
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern signed short v11 (signed char, signed short, unsigned char);
extern signed short (*v12) (signed char, signed short, unsigned char);
extern unsigned char v13 (signed char, unsigned char, signed char);
extern unsigned char (*v14) (signed char, unsigned char, signed char);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern unsigned char v19 (signed short, unsigned short, unsigned char);
extern unsigned char (*v20) (signed short, unsigned short, unsigned char);
unsigned short v21 (unsigned char);
unsigned short (*v22) (unsigned char) = v21;
extern unsigned char v25 (signed char, unsigned int);
extern unsigned char (*v26) (signed char, unsigned int);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern signed char v29 (signed char, signed char, signed int, signed char);
extern signed char (*v30) (signed char, signed char, signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v109 = -4;
unsigned char v108 = 6;
unsigned short v107 = 1;

unsigned short v21 (unsigned char v110)
{
history[history_index++] = (int)v110;
{
for (;;) {
signed short v113 = 3;
unsigned int v112 = 4U;
unsigned char v111 = 1;
trace++;
switch (trace)
{
case 9: 
return 2;
default: abort ();
}
}
}
}

signed char v7 (unsigned short v114, signed short v115)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned short v118 = 6;
signed short v117 = 0;
signed int v116 = -4;
trace++;
switch (trace)
{
case 1: 
return -2;
default: abort ();
}
}
}
}
