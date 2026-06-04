#include <stdlib.h>
extern unsigned short v1 (unsigned int, signed int);
extern unsigned short (*v2) (unsigned int, signed int);
extern void v3 (unsigned int, signed int);
extern void (*v4) (unsigned int, signed int);
extern unsigned short v5 (signed short, signed short);
extern unsigned short (*v6) (signed short, signed short);
signed short v7 (unsigned short, unsigned int, signed char, signed int);
signed short (*v8) (unsigned short, unsigned int, signed char, signed int) = v7;
extern signed int v9 (signed int, signed char, signed char, signed char);
extern signed int (*v10) (signed int, signed char, signed char, signed char);
extern void v11 (unsigned short, unsigned int);
extern void (*v12) (unsigned short, unsigned int);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern unsigned char v15 (unsigned int, unsigned short, unsigned short, unsigned int);
extern unsigned char (*v16) (unsigned int, unsigned short, unsigned short, unsigned int);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed char v23 (signed int, signed int, signed char);
extern signed char (*v24) (signed int, signed int, signed char);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
signed char v27 (void);
signed char (*v28) (void) = v27;
extern unsigned char v29 (signed char, unsigned char, signed short);
extern unsigned char (*v30) (signed char, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v96 = 5;
unsigned short v95 = 2;
signed char v94 = 3;

signed char v27 (void)
{
{
for (;;) {
unsigned int v99 = 2U;
unsigned short v98 = 4;
signed int v97 = 2;
trace++;
switch (trace)
{
case 3: 
return -4;
default: abort ();
}
}
}
}

signed short v7 (unsigned short v100, unsigned int v101, signed char v102, signed int v103)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
unsigned char v106 = 2;
unsigned short v105 = 1;
unsigned int v104 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
