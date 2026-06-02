#include <stdlib.h>
extern unsigned int v3 (signed char, signed char, unsigned int, signed char);
extern unsigned int (*v4) (signed char, signed char, unsigned int, signed char);
extern unsigned short v5 (signed int, unsigned int, unsigned char);
extern unsigned short (*v6) (signed int, unsigned int, unsigned char);
extern signed char v7 (unsigned short, unsigned short, unsigned int);
extern signed char (*v8) (unsigned short, unsigned short, unsigned int);
signed short v9 (unsigned char, signed char, unsigned int);
signed short (*v10) (unsigned char, signed char, unsigned int) = v9;
extern signed short v11 (void);
extern signed short (*v12) (void);
extern signed char v13 (unsigned char);
extern signed char (*v14) (unsigned char);
signed short v15 (signed int, signed short);
signed short (*v16) (signed int, signed short) = v15;
extern signed int v17 (unsigned char, unsigned int, unsigned short);
extern signed int (*v18) (unsigned char, unsigned int, unsigned short);
extern void v19 (void);
extern void (*v20) (void);
extern signed short v21 (unsigned int, unsigned char);
extern signed short (*v22) (unsigned int, unsigned char);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern signed int v27 (void);
extern signed int (*v28) (void);
unsigned short v29 (unsigned char, unsigned char);
unsigned short (*v30) (unsigned char, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v123 = 3;
signed char v122 = 3;
signed int v121 = -3;

unsigned short v29 (unsigned char v124, unsigned char v125)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
unsigned int v128 = 6U;
signed int v127 = -3;
signed short v126 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (signed int v129, signed short v130)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
unsigned char v133 = 7;
signed short v132 = 2;
signed int v131 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (unsigned char v134, signed char v135, unsigned int v136)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
signed char v139 = 2;
signed short v138 = 1;
signed int v137 = 2;
trace++;
switch (trace)
{
case 3: 
return v138;
case 7: 
return 0;
default: abort ();
}
}
}
}
