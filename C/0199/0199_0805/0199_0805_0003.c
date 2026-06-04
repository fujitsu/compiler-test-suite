#include <stdlib.h>
extern void v3 (unsigned char);
extern void (*v4) (unsigned char);
extern unsigned short v5 (signed short, unsigned char, unsigned char, signed char);
extern unsigned short (*v6) (signed short, unsigned char, unsigned char, signed char);
extern unsigned short v7 (signed char, unsigned short, signed short, unsigned int);
extern unsigned short (*v8) (signed char, unsigned short, signed short, unsigned int);
extern unsigned short v9 (signed short, signed char, unsigned char);
extern unsigned short (*v10) (signed short, signed char, unsigned char);
extern void v11 (signed int, signed int, signed short, unsigned short);
extern void (*v12) (signed int, signed int, signed short, unsigned short);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
unsigned int v17 (unsigned short, signed short, unsigned char);
unsigned int (*v18) (unsigned short, signed short, unsigned char) = v17;
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed short v21 (signed int, signed int, unsigned int, signed char);
extern signed short (*v22) (signed int, signed int, unsigned int, signed char);
extern signed int v23 (unsigned short, signed short, unsigned int, unsigned int);
extern signed int (*v24) (unsigned short, signed short, unsigned int, unsigned int);
extern unsigned int v25 (unsigned short, unsigned short, signed int, unsigned char);
extern unsigned int (*v26) (unsigned short, unsigned short, signed int, unsigned char);
extern void v27 (unsigned int, unsigned int, unsigned int);
extern void (*v28) (unsigned int, unsigned int, unsigned int);
extern unsigned int v29 (unsigned int);
extern unsigned int (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v132 = 7;
signed char v131 = -2;
unsigned int v130 = 1U;

unsigned int v17 (unsigned short v133, signed short v134, unsigned char v135)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
signed char v138 = 0;
unsigned int v137 = 7U;
unsigned int v136 = 0U;
trace++;
switch (trace)
{
case 9: 
return v137;
default: abort ();
}
}
}
}
