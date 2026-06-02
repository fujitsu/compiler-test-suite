#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed int v3 (unsigned short);
extern signed int (*v4) (unsigned short);
extern signed short v5 (signed char);
extern signed short (*v6) (signed char);
extern unsigned int v7 (unsigned int);
extern unsigned int (*v8) (unsigned int);
extern signed char v9 (signed short);
extern signed char (*v10) (signed short);
extern signed int v11 (unsigned char, signed char, signed char, signed short);
extern signed int (*v12) (unsigned char, signed char, signed char, signed short);
extern unsigned int v13 (signed int, signed int);
extern unsigned int (*v14) (signed int, signed int);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern unsigned short v17 (signed short, unsigned char);
extern unsigned short (*v18) (signed short, unsigned char);
signed short v19 (void);
signed short (*v20) (void) = v19;
signed int v21 (unsigned short, unsigned int);
signed int (*v22) (unsigned short, unsigned int) = v21;
extern signed int v25 (signed short, unsigned char);
extern signed int (*v26) (signed short, unsigned char);
signed int v27 (signed char);
signed int (*v28) (signed char) = v27;
extern signed int v29 (signed int, signed short, unsigned short, unsigned char);
extern signed int (*v30) (signed int, signed short, unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v119 = 4;
unsigned int v118 = 6U;
unsigned short v117 = 2;

signed int v27 (signed char v120)
{
history[history_index++] = (int)v120;
{
for (;;) {
unsigned char v123 = 2;
signed short v122 = 0;
unsigned int v121 = 3U;
trace++;
switch (trace)
{
case 6: 
return -4;
case 8: 
return -3;
case 10: 
return 0;
default: abort ();
}
}
}
}

signed int v21 (unsigned short v124, unsigned int v125)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
unsigned int v128 = 6U;
signed int v127 = 1;
unsigned int v126 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (void)
{
{
for (;;) {
unsigned char v131 = 4;
signed int v130 = -4;
signed int v129 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
