#include <stdlib.h>
extern signed char v1 (signed int);
extern signed char (*v2) (signed int);
signed char v3 (void);
signed char (*v4) (void) = v3;
extern unsigned short v5 (unsigned char, signed int, signed short);
extern unsigned short (*v6) (unsigned char, signed int, signed short);
extern void v7 (void);
extern void (*v8) (void);
extern signed char v9 (signed short, unsigned short, signed char, signed int);
extern signed char (*v10) (signed short, unsigned short, signed char, signed int);
extern void v11 (void);
extern void (*v12) (void);
unsigned int v13 (signed int, signed short, unsigned short);
unsigned int (*v14) (signed int, signed short, unsigned short) = v13;
extern unsigned int v15 (unsigned short, signed short);
extern unsigned int (*v16) (unsigned short, signed short);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern unsigned char v19 (unsigned int, unsigned short);
extern unsigned char (*v20) (unsigned int, unsigned short);
extern signed short v21 (unsigned char);
extern signed short (*v22) (unsigned char);
extern signed char v25 (void);
extern signed char (*v26) (void);
unsigned char v27 (signed short);
unsigned char (*v28) (signed short) = v27;
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v116 = -2;
signed short v115 = -2;
signed char v114 = 3;

unsigned char v27 (signed short v117)
{
history[history_index++] = (int)v117;
{
for (;;) {
unsigned int v120 = 4U;
unsigned int v119 = 4U;
unsigned char v118 = 2;
trace++;
switch (trace)
{
case 3: 
{
unsigned char v121;
signed short v122;
v121 = v118 + v118;
v122 = v21 (v121);
history[history_index++] = (int)v122;
}
break;
case 5: 
return 2;
default: abort ();
}
}
}
}

unsigned int v13 (signed int v123, signed short v124, unsigned short v125)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
signed int v128 = 3;
signed int v127 = -4;
signed int v126 = -4;
trace++;
switch (trace)
{
case 10: 
{
v7 ();
}
break;
case 12: 
return 3U;
default: abort ();
}
}
}
}

signed char v3 (void)
{
{
for (;;) {
signed short v131 = 0;
signed int v130 = 1;
signed char v129 = 1;
trace++;
switch (trace)
{
case 8: 
return v129;
default: abort ();
}
}
}
}
