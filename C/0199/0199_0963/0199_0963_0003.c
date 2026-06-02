#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern unsigned int v3 (signed char);
extern unsigned int (*v4) (signed char);
extern signed short v5 (signed int);
extern signed short (*v6) (signed int);
signed int v7 (signed int, signed char);
signed int (*v8) (signed int, signed char) = v7;
extern void v9 (void);
extern void (*v10) (void);
extern unsigned char v11 (signed short);
extern unsigned char (*v12) (signed short);
extern unsigned char v13 (unsigned char);
extern unsigned char (*v14) (unsigned char);
extern unsigned char v17 (signed char, signed int, unsigned int);
extern unsigned char (*v18) (signed char, signed int, unsigned int);
extern void v19 (unsigned char);
extern void (*v20) (unsigned char);
extern void v21 (unsigned char, signed char);
extern void (*v22) (unsigned char, signed char);
extern unsigned char v23 (signed short, signed int, signed char, unsigned short);
extern unsigned char (*v24) (signed short, signed int, signed char, unsigned short);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
unsigned char v29 (signed char);
unsigned char (*v30) (signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v106 = 3;
unsigned int v105 = 5U;
signed char v104 = -3;

unsigned char v29 (signed char v107)
{
history[history_index++] = (int)v107;
{
for (;;) {
signed char v110 = 2;
unsigned char v109 = 6;
unsigned int v108 = 7U;
trace++;
switch (trace)
{
case 9: 
return 5;
default: abort ();
}
}
}
}

signed int v7 (signed int v111, signed char v112)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned char v115 = 2;
signed char v114 = 1;
signed int v113 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
