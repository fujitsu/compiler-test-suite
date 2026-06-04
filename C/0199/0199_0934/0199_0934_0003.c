#include <stdlib.h>
extern void v1 (signed char, signed char, unsigned char);
extern void (*v2) (signed char, signed char, unsigned char);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern unsigned int v5 (signed char);
extern unsigned int (*v6) (signed char);
extern signed short v7 (signed int);
extern signed short (*v8) (signed int);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern signed short v11 (signed int);
extern signed short (*v12) (signed int);
extern unsigned int v13 (signed short, signed char, signed short, unsigned char);
extern unsigned int (*v14) (signed short, signed char, signed short, unsigned char);
extern void v15 (signed short, unsigned char, unsigned char);
extern void (*v16) (signed short, unsigned char, unsigned char);
extern signed short v17 (signed char, unsigned int, unsigned int);
extern signed short (*v18) (signed char, unsigned int, unsigned int);
unsigned int v19 (unsigned char);
unsigned int (*v20) (unsigned char) = v19;
extern signed int v21 (void);
extern signed int (*v22) (void);
unsigned int v23 (unsigned int, signed int, unsigned short);
unsigned int (*v24) (unsigned int, signed int, unsigned short) = v23;
extern unsigned int v25 (signed char);
extern unsigned int (*v26) (signed char);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v79 = 2U;
unsigned int v78 = 0U;
signed int v77 = -2;

unsigned int v23 (unsigned int v80, signed int v81, unsigned short v82)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
signed short v85 = -2;
unsigned int v84 = 6U;
signed int v83 = -1;
trace++;
switch (trace)
{
case 2: 
return v84;
default: abort ();
}
}
}
}

unsigned int v19 (unsigned char v86)
{
history[history_index++] = (int)v86;
{
for (;;) {
unsigned char v89 = 1;
unsigned int v88 = 0U;
signed int v87 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
