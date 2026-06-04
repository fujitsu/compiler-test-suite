#include <stdlib.h>
extern void v1 (unsigned int);
extern void (*v2) (unsigned int);
extern signed int v3 (unsigned int, signed int, unsigned char);
extern signed int (*v4) (unsigned int, signed int, unsigned char);
extern signed char v5 (signed int, unsigned int);
extern signed char (*v6) (signed int, unsigned int);
extern void v7 (unsigned short);
extern void (*v8) (unsigned short);
extern unsigned char v9 (signed int);
extern unsigned char (*v10) (signed int);
extern void v11 (unsigned int, unsigned short, unsigned short);
extern void (*v12) (unsigned int, unsigned short, unsigned short);
extern void v13 (signed short, unsigned int, signed short);
extern void (*v14) (signed short, unsigned int, signed short);
extern signed int v15 (unsigned short, unsigned char);
extern signed int (*v16) (unsigned short, unsigned char);
extern void v17 (signed char, unsigned char);
extern void (*v18) (signed char, unsigned char);
unsigned short v19 (void);
unsigned short (*v20) (void) = v19;
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
signed int v23 (void);
signed int (*v24) (void) = v23;
extern signed short v25 (void);
extern signed short (*v26) (void);
extern unsigned int v27 (signed short, unsigned char, signed short);
extern unsigned int (*v28) (signed short, unsigned char, signed short);
extern unsigned int v29 (signed int);
extern unsigned int (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v103 = 1;
signed char v102 = 3;
unsigned char v101 = 7;

signed int v23 (void)
{
{
for (;;) {
signed short v106 = -1;
signed int v105 = -2;
unsigned char v104 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (void)
{
{
for (;;) {
unsigned short v109 = 4;
unsigned char v108 = 3;
unsigned int v107 = 2U;
trace++;
switch (trace)
{
case 8: 
{
unsigned short v110;
v110 = v21 ();
history[history_index++] = (int)v110;
}
break;
case 12: 
return 4;
default: abort ();
}
}
}
}
