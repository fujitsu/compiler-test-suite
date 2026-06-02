#include <stdlib.h>
extern signed char v3 (signed int);
extern signed char (*v4) (signed int);
extern unsigned int v5 (unsigned short);
extern unsigned int (*v6) (unsigned short);
extern void v7 (signed char, unsigned char, unsigned char);
extern void (*v8) (signed char, unsigned char, unsigned char);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern signed int v11 (signed char, unsigned int);
extern signed int (*v12) (signed char, unsigned int);
extern unsigned char v13 (unsigned short);
extern unsigned char (*v14) (unsigned short);
extern unsigned char v15 (unsigned int, signed short);
extern unsigned char (*v16) (unsigned int, signed short);
unsigned int v17 (unsigned char);
unsigned int (*v18) (unsigned char) = v17;
extern signed int v19 (unsigned short, signed char);
extern signed int (*v20) (unsigned short, signed char);
extern void v21 (signed int);
extern void (*v22) (signed int);
extern unsigned short v23 (unsigned char, signed int);
extern unsigned short (*v24) (unsigned char, signed int);
extern unsigned short v25 (unsigned char, unsigned int, signed char);
extern unsigned short (*v26) (unsigned char, unsigned int, signed char);
unsigned int v27 (signed int, signed short, signed int, signed int);
unsigned int (*v28) (signed int, signed short, signed int, signed int) = v27;
unsigned short v29 (signed int);
unsigned short (*v30) (signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v122 = -2;
unsigned char v121 = 4;
signed char v120 = -4;

unsigned short v29 (signed int v123)
{
history[history_index++] = (int)v123;
{
for (;;) {
unsigned short v126 = 3;
signed short v125 = -4;
unsigned char v124 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v27 (signed int v127, signed short v128, signed int v129, signed int v130)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
signed char v133 = -2;
signed char v132 = -3;
signed char v131 = 3;
trace++;
switch (trace)
{
case 5: 
return 3U;
default: abort ();
}
}
}
}

unsigned int v17 (unsigned char v134)
{
history[history_index++] = (int)v134;
{
for (;;) {
signed short v137 = -1;
signed int v136 = -3;
signed short v135 = -2;
trace++;
switch (trace)
{
case 3: 
return 1U;
case 10: 
return 7U;
default: abort ();
}
}
}
}
