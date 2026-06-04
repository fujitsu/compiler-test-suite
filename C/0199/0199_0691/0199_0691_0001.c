#include <stdlib.h>
unsigned short v3 (signed char, signed int, unsigned int, signed short);
unsigned short (*v4) (signed char, signed int, unsigned int, signed short) = v3;
extern void v5 (void);
extern void (*v6) (void);
signed short v7 (void);
signed short (*v8) (void) = v7;
extern unsigned char v9 (signed char);
extern unsigned char (*v10) (signed char);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern unsigned char v13 (unsigned int, signed short, unsigned char);
extern unsigned char (*v14) (unsigned int, signed short, unsigned char);
extern signed short v17 (unsigned short, unsigned char, signed char, signed short);
extern signed short (*v18) (unsigned short, unsigned char, signed char, signed short);
unsigned char v19 (void);
unsigned char (*v20) (void) = v19;
extern unsigned short v21 (signed short);
extern unsigned short (*v22) (signed short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern void v27 (signed short, unsigned int, unsigned short, unsigned short);
extern void (*v28) (signed short, unsigned int, unsigned short, unsigned short);
extern signed char v29 (unsigned char, unsigned short, unsigned int);
extern signed char (*v30) (unsigned char, unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v78 = -1;
unsigned char v77 = 5;
signed short v76 = 3;

unsigned char v19 (void)
{
{
for (;;) {
signed char v81 = 2;
unsigned int v80 = 1U;
unsigned short v79 = 5;
trace++;
switch (trace)
{
case 5: 
return 0;
case 8: 
return 2;
default: abort ();
}
}
}
}

signed short v7 (void)
{
{
for (;;) {
signed int v84 = 0;
signed short v83 = 3;
unsigned int v82 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (signed char v85, signed int v86, unsigned int v87, signed short v88)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
signed short v91 = 3;
signed short v90 = 1;
signed char v89 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
