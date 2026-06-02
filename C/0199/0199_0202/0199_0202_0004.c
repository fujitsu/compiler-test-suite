#include <stdlib.h>
extern void v1 (signed char, signed short, unsigned int);
extern void (*v2) (signed char, signed short, unsigned int);
extern unsigned short v3 (unsigned int, signed char);
extern unsigned short (*v4) (unsigned int, signed char);
extern unsigned short v5 (signed char, signed char);
extern unsigned short (*v6) (signed char, signed char);
extern void v7 (signed short);
extern void (*v8) (signed short);
signed int v9 (signed int, signed short);
signed int (*v10) (signed int, signed short) = v9;
extern unsigned int v11 (unsigned short, unsigned int, signed short);
extern unsigned int (*v12) (unsigned short, unsigned int, signed short);
extern void v13 (unsigned short);
extern void (*v14) (unsigned short);
extern signed char v15 (signed int, signed short, signed short, signed int);
extern signed char (*v16) (signed int, signed short, signed short, signed int);
extern unsigned int v19 (unsigned short);
extern unsigned int (*v20) (unsigned short);
extern signed short v21 (void);
extern signed short (*v22) (void);
signed int v23 (void);
signed int (*v24) (void) = v23;
extern signed int v25 (unsigned int, signed short);
extern signed int (*v26) (unsigned int, signed short);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern void v29 (unsigned short);
extern void (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v135 = 0;
unsigned char v134 = 1;
signed short v133 = 1;

signed int v23 (void)
{
{
for (;;) {
unsigned char v138 = 6;
signed int v137 = 0;
unsigned short v136 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (signed int v139, signed short v140)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
signed char v143 = -3;
signed int v142 = 1;
signed int v141 = 3;
trace++;
switch (trace)
{
case 3: 
return v139;
default: abort ();
}
}
}
}
