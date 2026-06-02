#include <stdlib.h>
extern signed char v3 (signed int, signed char, signed short, unsigned char);
extern signed char (*v4) (signed int, signed char, signed short, unsigned char);
extern void v5 (signed int, signed short);
extern void (*v6) (signed int, signed short);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern signed short v9 (signed char, unsigned short, signed int);
extern signed short (*v10) (signed char, unsigned short, signed int);
signed char v11 (unsigned int, signed short);
signed char (*v12) (unsigned int, signed short) = v11;
extern unsigned short v13 (signed short, unsigned int, unsigned char, unsigned int);
extern unsigned short (*v14) (signed short, unsigned int, unsigned char, unsigned int);
signed short v15 (void);
signed short (*v16) (void) = v15;
extern void v17 (signed short, signed char);
extern void (*v18) (signed short, signed char);
extern unsigned short v19 (unsigned short, unsigned short, unsigned short);
extern unsigned short (*v20) (unsigned short, unsigned short, unsigned short);
unsigned short v21 (unsigned char);
unsigned short (*v22) (unsigned char) = v21;
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern signed char v25 (signed char, unsigned short, signed char);
extern signed char (*v26) (signed char, unsigned short, signed char);
extern unsigned int v27 (unsigned short);
extern unsigned int (*v28) (unsigned short);
extern unsigned char v29 (unsigned int, signed int, unsigned short);
extern unsigned char (*v30) (unsigned int, signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v134 = 2;
unsigned char v133 = 5;
signed char v132 = 3;

unsigned short v21 (unsigned char v135)
{
history[history_index++] = (int)v135;
{
for (;;) {
signed int v138 = -3;
unsigned short v137 = 1;
signed int v136 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (void)
{
{
for (;;) {
unsigned char v141 = 1;
signed short v140 = -3;
signed char v139 = 3;
trace++;
switch (trace)
{
case 7: 
return v140;
case 11: 
return 0;
default: abort ();
}
}
}
}

signed char v11 (unsigned int v142, signed short v143)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
unsigned short v146 = 5;
signed char v145 = -1;
signed char v144 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
