#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern void v7 (unsigned char, unsigned int, unsigned short);
extern void (*v8) (unsigned char, unsigned int, unsigned short);
signed short v9 (signed int);
signed short (*v10) (signed int) = v9;
extern void v11 (void);
extern void (*v12) (void);
extern signed short v13 (signed int, signed int, unsigned char);
extern signed short (*v14) (signed int, signed int, unsigned char);
extern signed char v15 (signed char, unsigned char);
extern signed char (*v16) (signed char, unsigned char);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern unsigned short v23 (unsigned char, unsigned char, unsigned int);
extern unsigned short (*v24) (unsigned char, unsigned char, unsigned int);
extern unsigned short v25 (unsigned int, unsigned short);
extern unsigned short (*v26) (unsigned int, unsigned short);
unsigned int v27 (signed char);
unsigned int (*v28) (signed char) = v27;
extern void v29 (unsigned int, signed short, signed short, signed short);
extern void (*v30) (unsigned int, signed short, signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v78 = 1U;
signed int v77 = 2;
signed int v76 = -3;

unsigned int v27 (signed char v79)
{
history[history_index++] = (int)v79;
{
for (;;) {
unsigned int v82 = 1U;
unsigned char v81 = 2;
unsigned int v80 = 0U;
trace++;
switch (trace)
{
case 9: 
return v82;
default: abort ();
}
}
}
}

signed short v9 (signed int v83)
{
history[history_index++] = (int)v83;
{
for (;;) {
signed char v86 = -2;
signed int v85 = -4;
unsigned short v84 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
