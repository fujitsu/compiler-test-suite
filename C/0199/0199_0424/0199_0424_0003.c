#include <stdlib.h>
extern void v3 (void);
extern void (*v4) (void);
extern unsigned int v5 (unsigned char, unsigned int);
extern unsigned int (*v6) (unsigned char, unsigned int);
extern signed int v7 (signed short, unsigned int, unsigned int);
extern signed int (*v8) (signed short, unsigned int, unsigned int);
extern signed int v9 (unsigned int, unsigned int, signed char, unsigned char);
extern signed int (*v10) (unsigned int, unsigned int, signed char, unsigned char);
extern signed short v11 (unsigned short);
extern signed short (*v12) (unsigned short);
extern unsigned char v13 (signed short, signed int);
extern unsigned char (*v14) (signed short, signed int);
extern unsigned short v17 (signed short, signed int);
extern unsigned short (*v18) (signed short, signed int);
extern void v19 (unsigned short, unsigned short);
extern void (*v20) (unsigned short, unsigned short);
extern signed short v21 (signed short);
extern signed short (*v22) (signed short);
extern signed int v23 (signed char, signed short);
extern signed int (*v24) (signed char, signed short);
signed short v25 (unsigned short, signed short);
signed short (*v26) (unsigned short, signed short) = v25;
unsigned int v27 (signed short, unsigned short, signed char, unsigned short);
unsigned int (*v28) (signed short, unsigned short, signed char, unsigned short) = v27;
extern signed short v29 (signed short, unsigned short, signed short, signed int);
extern signed short (*v30) (signed short, unsigned short, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v125 = 2;
signed short v124 = -1;
signed int v123 = -1;

unsigned int v27 (signed short v126, unsigned short v127, signed char v128, unsigned short v129)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
signed char v132 = 1;
unsigned int v131 = 1U;
signed short v130 = 1;
trace++;
switch (trace)
{
case 6: 
return v131;
default: abort ();
}
}
}
}

signed short v25 (unsigned short v133, signed short v134)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
unsigned int v137 = 5U;
signed char v136 = 3;
signed int v135 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
