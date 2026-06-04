#include <stdlib.h>
extern void v3 (signed char, unsigned char);
extern void (*v4) (signed char, unsigned char);
extern unsigned char v5 (signed short, unsigned char, unsigned short);
extern unsigned char (*v6) (signed short, unsigned char, unsigned short);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
unsigned int v9 (signed char);
unsigned int (*v10) (signed char) = v9;
extern signed int v11 (void);
extern signed int (*v12) (void);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern unsigned int v17 (unsigned int, unsigned char);
extern unsigned int (*v18) (unsigned int, unsigned char);
extern signed int v19 (unsigned int, unsigned short);
extern signed int (*v20) (unsigned int, unsigned short);
extern signed int v21 (signed short, unsigned int, signed char, unsigned short);
extern signed int (*v22) (signed short, unsigned int, signed char, unsigned short);
unsigned char v23 (unsigned char, signed char);
unsigned char (*v24) (unsigned char, signed char) = v23;
extern signed int v25 (unsigned int, unsigned int, signed char, unsigned int);
extern signed int (*v26) (unsigned int, unsigned int, signed char, unsigned int);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
unsigned char v29 (signed short, signed short, unsigned int);
unsigned char (*v30) (signed short, signed short, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v117 = -4;
unsigned int v116 = 5U;
signed int v115 = 1;

unsigned char v29 (signed short v118, signed short v119, unsigned int v120)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
signed short v123 = 0;
unsigned short v122 = 5;
unsigned char v121 = 6;
trace++;
switch (trace)
{
case 5: 
return 0;
default: abort ();
}
}
}
}

unsigned char v23 (unsigned char v124, signed char v125)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
unsigned char v128 = 0;
unsigned short v127 = 3;
unsigned int v126 = 2U;
trace++;
switch (trace)
{
case 10: 
return v124;
default: abort ();
}
}
}
}

unsigned int v9 (signed char v129)
{
history[history_index++] = (int)v129;
{
for (;;) {
unsigned short v132 = 7;
unsigned char v131 = 2;
unsigned char v130 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
