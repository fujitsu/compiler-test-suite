#include <stdlib.h>
extern signed short v3 (unsigned int, signed char);
extern signed short (*v4) (unsigned int, signed char);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
unsigned char v9 (void);
unsigned char (*v10) (void) = v9;
extern signed int v13 (unsigned short, unsigned short);
extern signed int (*v14) (unsigned short, unsigned short);
signed char v15 (unsigned char, signed short, signed int, unsigned int);
signed char (*v16) (unsigned char, signed short, signed int, unsigned int) = v15;
extern signed int v19 (unsigned short);
extern signed int (*v20) (unsigned short);
extern void v21 (signed short, signed short, unsigned short, signed char);
extern void (*v22) (signed short, signed short, unsigned short, signed char);
extern unsigned int v23 (signed int);
extern unsigned int (*v24) (signed int);
extern signed int v25 (signed short, unsigned int, signed short);
extern signed int (*v26) (signed short, unsigned int, signed short);
signed char v27 (void);
signed char (*v28) (void) = v27;
extern unsigned short v29 (signed char, unsigned int, signed short, signed char);
extern unsigned short (*v30) (signed char, unsigned int, signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v114 = 6U;
signed char v113 = 1;
unsigned int v112 = 4U;

signed char v27 (void)
{
{
for (;;) {
unsigned char v117 = 7;
signed short v116 = -4;
unsigned char v115 = 0;
trace++;
switch (trace)
{
case 4: 
return 1;
case 8: 
return 3;
case 10: 
return 0;
default: abort ();
}
}
}
}

signed char v15 (unsigned char v118, signed short v119, signed int v120, unsigned int v121)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
signed short v124 = 2;
unsigned int v123 = 3U;
unsigned short v122 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (void)
{
{
for (;;) {
unsigned int v127 = 5U;
unsigned char v126 = 7;
signed int v125 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
