#include <stdlib.h>
extern unsigned char v3 (unsigned short, signed short, signed short);
extern unsigned char (*v4) (unsigned short, signed short, signed short);
extern signed int v5 (signed short, unsigned char, signed int, signed char);
extern signed int (*v6) (signed short, unsigned char, signed int, signed char);
extern signed short v7 (signed short);
extern signed short (*v8) (signed short);
extern signed char v9 (signed int);
extern signed char (*v10) (signed int);
extern unsigned char v11 (signed int, unsigned char, signed char);
extern unsigned char (*v12) (signed int, unsigned char, signed char);
extern unsigned short v13 (signed short, signed short);
extern unsigned short (*v14) (signed short, signed short);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern signed int v21 (unsigned short, signed int);
extern signed int (*v22) (unsigned short, signed int);
extern signed short v23 (signed int, signed int, unsigned short, signed int);
extern signed short (*v24) (signed int, signed int, unsigned short, signed int);
unsigned short v27 (void);
unsigned short (*v28) (void) = v27;
signed short v29 (signed short, signed char);
signed short (*v30) (signed short, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v114 = 2U;
signed short v113 = 3;
signed short v112 = 2;

signed short v29 (signed short v115, signed char v116)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
unsigned short v119 = 4;
signed int v118 = -2;
unsigned char v117 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v27 (void)
{
{
for (;;) {
unsigned char v122 = 2;
signed int v121 = 3;
signed short v120 = 2;
trace++;
switch (trace)
{
case 10: 
return 5;
default: abort ();
}
}
}
}
