#include <stdlib.h>
extern unsigned char v1 (unsigned char);
extern unsigned char (*v2) (unsigned char);
extern signed int v3 (unsigned short, signed short);
extern signed int (*v4) (unsigned short, signed short);
extern unsigned int v5 (signed char, signed short, signed char, unsigned int);
extern unsigned int (*v6) (signed char, signed short, signed char, unsigned int);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern void v9 (signed char, unsigned char);
extern void (*v10) (signed char, unsigned char);
extern unsigned int v11 (signed int, unsigned short);
extern unsigned int (*v12) (signed int, unsigned short);
extern void v13 (void);
extern void (*v14) (void);
unsigned char v17 (void);
unsigned char (*v18) (void) = v17;
extern unsigned short v19 (signed short);
extern unsigned short (*v20) (signed short);
extern unsigned short v21 (unsigned char, signed short);
extern unsigned short (*v22) (unsigned char, signed short);
extern signed short v23 (unsigned int);
extern signed short (*v24) (unsigned int);
extern signed char v25 (unsigned short);
extern signed char (*v26) (unsigned short);
signed char v27 (unsigned short);
signed char (*v28) (unsigned short) = v27;
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v125 = 5;
signed int v124 = -4;
unsigned short v123 = 5;

signed char v27 (unsigned short v126)
{
history[history_index++] = (int)v126;
{
for (;;) {
signed int v129 = -1;
signed short v128 = 1;
unsigned char v127 = 0;
trace++;
switch (trace)
{
case 3: 
return 1;
case 5: 
return 0;
default: abort ();
}
}
}
}

unsigned char v17 (void)
{
{
for (;;) {
unsigned short v132 = 0;
signed char v131 = -4;
signed char v130 = -3;
trace++;
switch (trace)
{
case 11: 
return 7;
default: abort ();
}
}
}
}
