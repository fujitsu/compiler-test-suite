#include <stdlib.h>
unsigned int v1 (unsigned int);
unsigned int (*v2) (unsigned int) = v1;
extern unsigned short v3 (unsigned short, unsigned short);
extern unsigned short (*v4) (unsigned short, unsigned short);
extern signed char v5 (signed char, signed int);
extern signed char (*v6) (signed char, signed int);
extern void v7 (signed short, signed short, unsigned int, unsigned char);
extern void (*v8) (signed short, signed short, unsigned int, unsigned char);
extern unsigned short v9 (unsigned int, unsigned char, unsigned int);
extern unsigned short (*v10) (unsigned int, unsigned char, unsigned int);
extern void v11 (signed short);
extern void (*v12) (signed short);
extern signed char v13 (unsigned char);
extern signed char (*v14) (unsigned char);
extern void v15 (signed int, unsigned int);
extern void (*v16) (signed int, unsigned int);
extern unsigned short v17 (signed short, unsigned int, unsigned char);
extern unsigned short (*v18) (signed short, unsigned int, unsigned char);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern unsigned short v21 (unsigned short);
extern unsigned short (*v22) (unsigned short);
unsigned int v23 (void);
unsigned int (*v24) (void) = v23;
extern signed int v27 (unsigned int);
extern signed int (*v28) (unsigned int);
extern unsigned int v29 (unsigned char, signed char);
extern unsigned int (*v30) (unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v115 = 6;
signed int v114 = 2;
unsigned short v113 = 5;

unsigned int v23 (void)
{
{
for (;;) {
signed int v118 = 0;
signed short v117 = -2;
signed char v116 = -2;
trace++;
switch (trace)
{
case 2: 
return 0U;
case 4: 
return 3U;
case 6: 
return 3U;
case 8: 
return 0U;
default: abort ();
}
}
}
}

unsigned int v1 (unsigned int v119)
{
history[history_index++] = (int)v119;
{
for (;;) {
unsigned int v122 = 7U;
signed short v121 = -1;
unsigned char v120 = 0;
trace++;
switch (trace)
{
case 0: 
{
signed int v123;
unsigned int v124;
v123 = -3 + -2;
v124 = v119 - 5U;
v15 (v123, v124);
}
break;
case 12: 
return 6U;
default: abort ();
}
}
}
}
