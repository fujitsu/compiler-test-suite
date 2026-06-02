#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern signed char v3 (unsigned int, unsigned int);
extern signed char (*v4) (unsigned int, unsigned int);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern signed char v7 (unsigned char);
extern signed char (*v8) (unsigned char);
extern unsigned short v9 (unsigned short, unsigned short, unsigned short);
extern unsigned short (*v10) (unsigned short, unsigned short, unsigned short);
extern unsigned char v11 (signed int, unsigned char, signed int, unsigned char);
extern unsigned char (*v12) (signed int, unsigned char, signed int, unsigned char);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern unsigned int v15 (unsigned char, signed short, signed char, signed int);
extern unsigned int (*v16) (unsigned char, signed short, signed char, signed int);
extern unsigned char v17 (signed short, signed char);
extern unsigned char (*v18) (signed short, signed char);
signed short v19 (signed int, unsigned short, signed int, unsigned short);
signed short (*v20) (signed int, unsigned short, signed int, unsigned short) = v19;
extern void v21 (void);
extern void (*v22) (void);
unsigned short v23 (void);
unsigned short (*v24) (void) = v23;
void v25 (void);
void (*v26) (void) = v25;
extern signed char v27 (signed short);
extern signed char (*v28) (signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v79 = 0U;
unsigned int v78 = 6U;
unsigned int v77 = 2U;

void v25 (void)
{
{
for (;;) {
signed int v82 = -2;
unsigned char v81 = 1;
signed short v80 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v23 (void)
{
{
for (;;) {
signed char v85 = -1;
unsigned int v84 = 3U;
unsigned short v83 = 2;
trace++;
switch (trace)
{
case 8: 
return 6;
case 10: 
return 5;
default: abort ();
}
}
}
}

signed short v19 (signed int v86, unsigned short v87, signed int v88, unsigned short v89)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned int v92 = 1U;
unsigned char v91 = 6;
signed short v90 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
