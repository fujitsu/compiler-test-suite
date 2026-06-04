#include <stdlib.h>
extern unsigned int v1 (signed int, signed int);
extern unsigned int (*v2) (signed int, signed int);
extern unsigned char v3 (signed short, unsigned short, unsigned int);
extern unsigned char (*v4) (signed short, unsigned short, unsigned int);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern unsigned char v7 (unsigned char, unsigned short, unsigned short);
extern unsigned char (*v8) (unsigned char, unsigned short, unsigned short);
void v9 (void);
void (*v10) (void) = v9;
extern signed short v11 (unsigned int, signed char, unsigned short, unsigned short);
extern signed short (*v12) (unsigned int, signed char, unsigned short, unsigned short);
extern void v13 (unsigned short);
extern void (*v14) (unsigned short);
extern signed char v15 (signed char);
extern signed char (*v16) (signed char);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern unsigned int v19 (signed char, signed int, unsigned short);
extern unsigned int (*v20) (signed char, signed int, unsigned short);
extern signed int v21 (signed short, unsigned short, unsigned char);
extern signed int (*v22) (signed short, unsigned short, unsigned char);
extern signed char v23 (signed short, unsigned int);
extern signed char (*v24) (signed short, unsigned int);
extern signed short v25 (signed short, unsigned short, signed int);
extern signed short (*v26) (signed short, unsigned short, signed int);
unsigned char v27 (unsigned int, unsigned int, signed char);
unsigned char (*v28) (unsigned int, unsigned int, signed char) = v27;
extern int history[];
extern int history_index;
extern int trace;
signed short v99 = 2;
unsigned char v98 = 5;
signed short v97 = -3;

unsigned char v27 (unsigned int v100, unsigned int v101, signed char v102)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed char v105 = 0;
unsigned short v104 = 3;
signed char v103 = 1;
trace++;
switch (trace)
{
case 7: 
return 2;
default: abort ();
}
}
}
}

void v9 (void)
{
{
for (;;) {
unsigned int v108 = 5U;
signed short v107 = 0;
unsigned char v106 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
