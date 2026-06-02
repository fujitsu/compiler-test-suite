#include <stdlib.h>
extern unsigned int v1 (signed short, unsigned int, unsigned char);
extern unsigned int (*v2) (signed short, unsigned int, unsigned char);
extern void v3 (void);
extern void (*v4) (void);
extern unsigned char v5 (signed int, signed short, unsigned int, unsigned char);
extern unsigned char (*v6) (signed int, signed short, unsigned int, unsigned char);
extern void v7 (signed short);
extern void (*v8) (signed short);
signed int v9 (void);
signed int (*v10) (void) = v9;
extern signed short v11 (unsigned char, unsigned int);
extern signed short (*v12) (unsigned char, unsigned int);
extern signed int v13 (unsigned char, signed short, signed short);
extern signed int (*v14) (unsigned char, signed short, signed short);
extern signed int v15 (signed char);
extern signed int (*v16) (signed char);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern unsigned short v19 (signed int, unsigned char, signed char);
extern unsigned short (*v20) (signed int, unsigned char, signed char);
extern signed short v21 (signed short, signed char);
extern signed short (*v22) (signed short, signed char);
signed char v25 (unsigned char);
signed char (*v26) (unsigned char) = v25;
extern signed int v27 (void);
extern signed int (*v28) (void);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v124 = 0;
unsigned char v123 = 3;
signed int v122 = -4;

signed char v25 (unsigned char v125)
{
history[history_index++] = (int)v125;
{
for (;;) {
signed char v128 = -3;
unsigned int v127 = 5U;
unsigned short v126 = 1;
trace++;
switch (trace)
{
case 5: 
return 0;
case 7: 
return v128;
default: abort ();
}
}
}
}

signed int v9 (void)
{
{
for (;;) {
unsigned short v131 = 0;
signed char v130 = -4;
signed short v129 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
