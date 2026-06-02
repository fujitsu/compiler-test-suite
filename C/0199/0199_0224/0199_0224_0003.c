#include <stdlib.h>
extern signed char v1 (signed int, unsigned int, signed char, signed short);
extern signed char (*v2) (signed int, unsigned int, signed char, signed short);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern signed short v7 (signed char, signed short);
extern signed short (*v8) (signed char, signed short);
unsigned char v9 (signed char);
unsigned char (*v10) (signed char) = v9;
extern unsigned char v11 (unsigned int, signed char, unsigned char);
extern unsigned char (*v12) (unsigned int, signed char, unsigned char);
extern signed char v13 (signed int, signed char);
extern signed char (*v14) (signed int, signed char);
extern unsigned short v15 (signed int, signed short, signed short);
extern unsigned short (*v16) (signed int, signed short, signed short);
extern unsigned int v17 (unsigned int, unsigned short);
extern unsigned int (*v18) (unsigned int, unsigned short);
extern void v19 (unsigned int, signed int);
extern void (*v20) (unsigned int, signed int);
signed char v21 (void);
signed char (*v22) (void) = v21;
extern signed short v23 (signed int);
extern signed short (*v24) (signed int);
extern unsigned int v25 (signed int, unsigned char, signed short);
extern unsigned int (*v26) (signed int, unsigned char, signed short);
extern void v27 (unsigned char);
extern void (*v28) (unsigned char);
extern void v29 (unsigned int, signed int, signed short);
extern void (*v30) (unsigned int, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v100 = -4;
signed char v99 = 2;
signed short v98 = 1;

signed char v21 (void)
{
{
for (;;) {
unsigned short v103 = 4;
unsigned char v102 = 6;
unsigned char v101 = 6;
trace++;
switch (trace)
{
case 4: 
return 2;
case 6: 
return -1;
case 8: 
return -4;
case 10: 
return -3;
default: abort ();
}
}
}
}

unsigned char v9 (signed char v104)
{
history[history_index++] = (int)v104;
{
for (;;) {
unsigned char v107 = 0;
signed int v106 = -1;
unsigned short v105 = 5;
trace++;
switch (trace)
{
case 1: 
return 0;
default: abort ();
}
}
}
}
