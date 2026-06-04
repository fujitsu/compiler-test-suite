#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern signed char v3 (unsigned int, signed short);
extern signed char (*v4) (unsigned int, signed short);
signed short v5 (signed int);
signed short (*v6) (signed int) = v5;
signed int v7 (unsigned char, signed int);
signed int (*v8) (unsigned char, signed int) = v7;
extern void v9 (void);
extern void (*v10) (void);
extern signed char v11 (unsigned short, unsigned int, signed short);
extern signed char (*v12) (unsigned short, unsigned int, signed short);
extern void v13 (signed short, signed int, signed int, signed char);
extern void (*v14) (signed short, signed int, signed int, signed char);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern signed char v17 (signed short, signed short, signed int, signed int);
extern signed char (*v18) (signed short, signed short, signed int, signed int);
extern unsigned char v19 (unsigned short, unsigned char, unsigned int, signed char);
extern unsigned char (*v20) (unsigned short, unsigned char, unsigned int, signed char);
extern unsigned short v23 (signed int);
extern unsigned short (*v24) (signed int);
extern signed char v25 (signed char, signed short, unsigned char, signed int);
extern signed char (*v26) (signed char, signed short, unsigned char, signed int);
signed int v29 (void);
signed int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v96 = 0;
unsigned short v95 = 1;
signed int v94 = -2;

signed int v29 (void)
{
{
for (;;) {
signed short v99 = -4;
unsigned int v98 = 1U;
unsigned int v97 = 6U;
trace++;
switch (trace)
{
case 3: 
return -2;
default: abort ();
}
}
}
}

signed int v7 (unsigned char v100, signed int v101)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
unsigned short v104 = 6;
unsigned short v103 = 3;
unsigned char v102 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (signed int v105)
{
history[history_index++] = (int)v105;
{
for (;;) {
unsigned char v108 = 3;
signed char v107 = 3;
unsigned short v106 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
