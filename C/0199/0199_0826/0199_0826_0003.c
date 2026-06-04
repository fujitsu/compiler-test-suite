#include <stdlib.h>
extern unsigned char v1 (signed char, unsigned short, signed char, signed int);
extern unsigned char (*v2) (signed char, unsigned short, signed char, signed int);
extern unsigned short v5 (signed short, signed char, signed char);
extern unsigned short (*v6) (signed short, signed char, signed char);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern void v9 (signed short, unsigned char);
extern void (*v10) (signed short, unsigned char);
unsigned char v11 (unsigned short, unsigned int);
unsigned char (*v12) (unsigned short, unsigned int) = v11;
extern signed char v13 (signed short, unsigned int);
extern signed char (*v14) (signed short, unsigned int);
extern unsigned int v15 (signed char, unsigned char, signed short);
extern unsigned int (*v16) (signed char, unsigned char, signed short);
extern void v17 (unsigned int);
extern void (*v18) (unsigned int);
extern signed int v19 (unsigned char, signed short);
extern signed int (*v20) (unsigned char, signed short);
extern void v21 (unsigned char, signed short, unsigned char, unsigned short);
extern void (*v22) (unsigned char, signed short, unsigned char, unsigned short);
extern unsigned int v23 (unsigned int, signed int, signed int);
extern unsigned int (*v24) (unsigned int, signed int, signed int);
unsigned short v25 (void);
unsigned short (*v26) (void) = v25;
extern unsigned short v27 (unsigned int, signed int, signed char);
extern unsigned short (*v28) (unsigned int, signed int, signed char);
extern void v29 (signed int, unsigned short);
extern void (*v30) (signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v101 = -1;
unsigned short v100 = 7;
signed short v99 = -4;

unsigned short v25 (void)
{
{
for (;;) {
unsigned short v104 = 2;
signed char v103 = -2;
signed int v102 = -3;
trace++;
switch (trace)
{
case 1: 
return 2;
case 7: 
return v104;
case 9: 
return 6;
default: abort ();
}
}
}
}

unsigned char v11 (unsigned short v105, unsigned int v106)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed short v109 = -1;
unsigned short v108 = 4;
signed char v107 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
