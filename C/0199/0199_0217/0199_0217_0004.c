#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned int v5 (unsigned int, signed int, unsigned short, signed short);
extern unsigned int (*v6) (unsigned int, signed int, unsigned short, signed short);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern signed short v9 (unsigned short, signed short);
extern signed short (*v10) (unsigned short, signed short);
extern void v11 (unsigned int, signed int);
extern void (*v12) (unsigned int, signed int);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned int v15 (signed short, signed short, signed char);
extern unsigned int (*v16) (signed short, signed short, signed char);
signed int v17 (void);
signed int (*v18) (void) = v17;
extern unsigned int v19 (signed short, unsigned short);
extern unsigned int (*v20) (signed short, unsigned short);
extern unsigned short v21 (signed short, unsigned char, unsigned char);
extern unsigned short (*v22) (signed short, unsigned char, unsigned char);
unsigned short v23 (unsigned short, unsigned char, signed int, signed int);
unsigned short (*v24) (unsigned short, unsigned char, signed int, signed int) = v23;
extern signed short v25 (void);
extern signed short (*v26) (void);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v130 = 5U;
unsigned int v129 = 3U;
signed short v128 = -2;

unsigned short v23 (unsigned short v131, unsigned char v132, signed int v133, signed int v134)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed short v137 = 0;
signed short v136 = 0;
unsigned char v135 = 6;
trace++;
switch (trace)
{
case 2: 
return v131;
case 4: 
return 7;
case 10: 
return v131;
default: abort ();
}
}
}
}

signed int v17 (void)
{
{
for (;;) {
signed int v140 = -2;
signed int v139 = 1;
unsigned int v138 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
