#include <stdlib.h>
extern unsigned char v1 (signed char, signed int, signed char);
extern unsigned char (*v2) (signed char, signed int, signed char);
extern unsigned short v7 (signed char, unsigned int, unsigned int, signed short);
extern unsigned short (*v8) (signed char, unsigned int, unsigned int, signed short);
extern unsigned short v9 (unsigned int);
extern unsigned short (*v10) (unsigned int);
signed char v11 (void);
signed char (*v12) (void) = v11;
extern void v13 (unsigned int, unsigned char, signed char);
extern void (*v14) (unsigned int, unsigned char, signed char);
extern unsigned short v15 (unsigned char);
extern unsigned short (*v16) (unsigned char);
extern signed char v17 (unsigned int);
extern signed char (*v18) (unsigned int);
extern signed char v19 (signed int, signed short, signed char);
extern signed char (*v20) (signed int, signed short, signed char);
signed int v21 (unsigned char);
signed int (*v22) (unsigned char) = v21;
extern signed int v23 (unsigned short, signed short);
extern signed int (*v24) (unsigned short, signed short);
extern unsigned short v25 (unsigned int);
extern unsigned short (*v26) (unsigned int);
extern signed char v27 (unsigned char, unsigned char);
extern signed char (*v28) (unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v99 = 1;
unsigned short v98 = 1;
signed char v97 = 0;

signed int v21 (unsigned char v100)
{
history[history_index++] = (int)v100;
{
for (;;) {
unsigned char v103 = 6;
unsigned int v102 = 2U;
signed short v101 = -3;
trace++;
switch (trace)
{
case 3: 
return -1;
default: abort ();
}
}
}
}

signed char v11 (void)
{
{
for (;;) {
unsigned int v106 = 5U;
signed int v105 = -3;
signed short v104 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
