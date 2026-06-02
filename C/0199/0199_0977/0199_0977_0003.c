#include <stdlib.h>
extern unsigned char v3 (signed char, unsigned int, signed char);
extern unsigned char (*v4) (signed char, unsigned int, signed char);
signed char v7 (void);
signed char (*v8) (void) = v7;
extern unsigned short v9 (signed int);
extern unsigned short (*v10) (signed int);
extern unsigned short v11 (signed char);
extern unsigned short (*v12) (signed char);
extern unsigned int v13 (unsigned char, unsigned short, signed int, signed int);
extern unsigned int (*v14) (unsigned char, unsigned short, signed int, signed int);
extern unsigned short v15 (signed short, signed char);
extern unsigned short (*v16) (signed short, signed char);
extern void v17 (void);
extern void (*v18) (void);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern void v21 (signed short);
extern void (*v22) (signed short);
unsigned short v25 (unsigned short, unsigned int);
unsigned short (*v26) (unsigned short, unsigned int) = v25;
extern signed int v27 (unsigned int, unsigned int, unsigned char);
extern signed int (*v28) (unsigned int, unsigned int, unsigned char);
signed int v29 (void);
signed int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v99 = 1;
unsigned int v98 = 5U;
unsigned int v97 = 5U;

signed int v29 (void)
{
{
for (;;) {
signed int v102 = -1;
unsigned int v101 = 4U;
signed char v100 = 0;
trace++;
switch (trace)
{
case 1: 
return -2;
case 3: 
return 1;
default: abort ();
}
}
}
}

unsigned short v25 (unsigned short v103, unsigned int v104)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
unsigned short v107 = 1;
signed char v106 = -4;
signed char v105 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (void)
{
{
for (;;) {
signed short v110 = -3;
unsigned short v109 = 3;
unsigned short v108 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
