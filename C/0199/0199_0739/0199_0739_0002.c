#include <stdlib.h>
extern signed int v3 (signed char);
extern signed int (*v4) (signed char);
extern unsigned char v5 (signed short);
extern unsigned char (*v6) (signed short);
extern signed int v7 (signed char, signed int);
extern signed int (*v8) (signed char, signed int);
extern unsigned char v9 (unsigned int, signed int, signed int);
extern unsigned char (*v10) (unsigned int, signed int, signed int);
extern signed short v11 (unsigned char, signed short, signed char);
extern signed short (*v12) (unsigned char, signed short, signed char);
extern signed short v13 (signed short, unsigned short, signed char);
extern signed short (*v14) (signed short, unsigned short, signed char);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern void v17 (unsigned int, unsigned short, unsigned int);
extern void (*v18) (unsigned int, unsigned short, unsigned int);
extern signed char v19 (signed int, signed short, signed short, signed int);
extern signed char (*v20) (signed int, signed short, signed short, signed int);
extern signed char v21 (void);
extern signed char (*v22) (void);
unsigned int v23 (void);
unsigned int (*v24) (void) = v23;
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
signed char v27 (signed short);
signed char (*v28) (signed short) = v27;
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v86 = 0U;
unsigned int v85 = 5U;
signed char v84 = 3;

signed char v27 (signed short v87)
{
history[history_index++] = (int)v87;
{
for (;;) {
signed int v90 = 0;
signed short v89 = -3;
signed short v88 = 0;
trace++;
switch (trace)
{
case 2: 
return 0;
default: abort ();
}
}
}
}

unsigned int v23 (void)
{
{
for (;;) {
signed char v93 = 2;
unsigned short v92 = 5;
unsigned int v91 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
