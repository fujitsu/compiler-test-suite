#include <stdlib.h>
extern signed int v3 (unsigned int);
extern signed int (*v4) (unsigned int);
extern unsigned int v5 (signed short, signed int, unsigned short);
extern unsigned int (*v6) (signed short, signed int, unsigned short);
extern unsigned int v7 (signed char, unsigned int);
extern unsigned int (*v8) (signed char, unsigned int);
extern signed short v9 (signed short, signed int, signed char, unsigned short);
extern signed short (*v10) (signed short, signed int, signed char, unsigned short);
extern signed short v11 (unsigned int, signed short);
extern signed short (*v12) (unsigned int, signed short);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
signed short v15 (unsigned short, signed short);
signed short (*v16) (unsigned short, signed short) = v15;
extern unsigned char v17 (unsigned int);
extern unsigned char (*v18) (unsigned int);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed short v23 (void);
extern signed short (*v24) (void);
signed int v25 (signed char);
signed int (*v26) (signed char) = v25;
signed char v27 (void);
signed char (*v28) (void) = v27;
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v120 = 2;
signed char v119 = -1;
signed int v118 = -4;

signed char v27 (void)
{
{
for (;;) {
unsigned char v123 = 4;
signed short v122 = 3;
signed int v121 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v25 (signed char v124)
{
history[history_index++] = (int)v124;
{
for (;;) {
signed char v127 = -3;
signed short v126 = -4;
signed int v125 = -4;
trace++;
switch (trace)
{
case 1: 
return 2;
case 3: 
return v125;
case 8: 
return v125;
default: abort ();
}
}
}
}

signed short v15 (unsigned short v128, signed short v129)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned short v132 = 0;
signed int v131 = -3;
signed int v130 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
