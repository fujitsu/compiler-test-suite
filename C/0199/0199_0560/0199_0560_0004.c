#include <stdlib.h>
extern unsigned int v3 (signed int, signed char);
extern unsigned int (*v4) (signed int, signed char);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern signed int v9 (signed int, unsigned char);
extern signed int (*v10) (signed int, unsigned char);
extern unsigned char v11 (unsigned short, signed int, signed int);
extern unsigned char (*v12) (unsigned short, signed int, signed int);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern signed char v17 (unsigned char);
extern signed char (*v18) (unsigned char);
unsigned int v19 (unsigned short, unsigned int, signed short);
unsigned int (*v20) (unsigned short, unsigned int, signed short) = v19;
extern signed int v21 (void);
extern signed int (*v22) (void);
extern void v23 (signed char);
extern void (*v24) (signed char);
signed char v25 (unsigned int);
signed char (*v26) (unsigned int) = v25;
signed short v27 (unsigned int, signed char);
signed short (*v28) (unsigned int, signed char) = v27;
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v117 = 4U;
unsigned char v116 = 6;
signed short v115 = -1;

signed short v27 (unsigned int v118, signed char v119)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
signed short v122 = 3;
unsigned int v121 = 7U;
signed short v120 = 3;
trace++;
switch (trace)
{
case 2: 
return v120;
case 4: 
return v122;
case 10: 
return v120;
default: abort ();
}
}
}
}

signed char v25 (unsigned int v123)
{
history[history_index++] = (int)v123;
{
for (;;) {
unsigned char v126 = 3;
unsigned int v125 = 0U;
signed char v124 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (unsigned short v127, unsigned int v128, signed short v129)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
signed int v132 = -3;
unsigned short v131 = 7;
unsigned int v130 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
