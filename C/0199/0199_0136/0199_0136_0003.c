#include <stdlib.h>
extern signed char v1 (signed char);
extern signed char (*v2) (signed char);
extern unsigned char v3 (unsigned char, signed char, signed short, unsigned short);
extern unsigned char (*v4) (unsigned char, signed char, signed short, unsigned short);
extern signed short v5 (unsigned short, unsigned short);
extern signed short (*v6) (unsigned short, unsigned short);
extern unsigned char v7 (unsigned char, signed char, unsigned int);
extern unsigned char (*v8) (unsigned char, signed char, unsigned int);
extern signed short v9 (signed char, signed char, unsigned char, unsigned short);
extern signed short (*v10) (signed char, signed char, unsigned char, unsigned short);
extern unsigned short v11 (unsigned short, signed short);
extern unsigned short (*v12) (unsigned short, signed short);
extern signed short v13 (unsigned int, signed char);
extern signed short (*v14) (unsigned int, signed char);
extern signed short v15 (signed int, signed int);
extern signed short (*v16) (signed int, signed int);
extern unsigned short v17 (signed int, signed short, unsigned int, unsigned char);
extern unsigned short (*v18) (signed int, signed short, unsigned int, unsigned char);
signed short v19 (signed char, signed short);
signed short (*v20) (signed char, signed short) = v19;
extern unsigned char v21 (unsigned char, signed int, signed short, unsigned char);
extern unsigned char (*v22) (unsigned char, signed int, signed short, unsigned char);
unsigned char v23 (void);
unsigned char (*v24) (void) = v23;
extern signed short v25 (signed char, unsigned char, unsigned short);
extern signed short (*v26) (signed char, unsigned char, unsigned short);
extern void v27 (unsigned char, signed int, unsigned int, unsigned char);
extern void (*v28) (unsigned char, signed int, unsigned int, unsigned char);
extern signed char v29 (unsigned int, unsigned short);
extern signed char (*v30) (unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v132 = 0;
signed short v131 = 0;
unsigned char v130 = 4;

unsigned char v23 (void)
{
{
for (;;) {
unsigned char v135 = 3;
unsigned char v134 = 6;
unsigned int v133 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (signed char v136, signed short v137)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed short v140 = -2;
signed short v139 = 3;
signed short v138 = 1;
trace++;
switch (trace)
{
case 4: 
return v137;
default: abort ();
}
}
}
}
