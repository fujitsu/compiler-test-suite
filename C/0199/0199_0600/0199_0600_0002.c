#include <stdlib.h>
extern void v1 (signed char);
extern void (*v2) (signed char);
extern signed short v3 (signed int, signed char, unsigned int);
extern signed short (*v4) (signed int, signed char, unsigned int);
extern unsigned short v5 (signed int, unsigned int, unsigned int, signed short);
extern unsigned short (*v6) (signed int, unsigned int, unsigned int, signed short);
extern signed char v7 (signed char, unsigned char, unsigned int, unsigned int);
extern signed char (*v8) (signed char, unsigned char, unsigned int, unsigned int);
extern signed char v9 (unsigned int, unsigned int, signed char, signed short);
extern signed char (*v10) (unsigned int, unsigned int, signed char, signed short);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern unsigned char v13 (unsigned short, unsigned char, unsigned short, unsigned int);
extern unsigned char (*v14) (unsigned short, unsigned char, unsigned short, unsigned int);
extern signed char v15 (signed char, signed char, signed char);
extern signed char (*v16) (signed char, signed char, signed char);
extern unsigned short v17 (unsigned int, signed short);
extern unsigned short (*v18) (unsigned int, signed short);
extern void v19 (signed short, signed char, signed short, unsigned short);
extern void (*v20) (signed short, signed char, signed short, unsigned short);
unsigned short v21 (void);
unsigned short (*v22) (void) = v21;
extern void v23 (void);
extern void (*v24) (void);
extern unsigned char v25 (signed char, signed short);
extern unsigned char (*v26) (signed char, signed short);
extern signed char v27 (void);
extern signed char (*v28) (void);
void v29 (signed int);
void (*v30) (signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v94 = -1;
unsigned short v93 = 6;
unsigned int v92 = 1U;

void v29 (signed int v95)
{
history[history_index++] = (int)v95;
{
for (;;) {
signed int v98 = -3;
unsigned int v97 = 0U;
signed char v96 = 0;
trace++;
switch (trace)
{
case 5: 
return;
case 9: 
return;
case 11: 
return;
default: abort ();
}
}
}
}

unsigned short v21 (void)
{
{
for (;;) {
unsigned char v101 = 4;
signed short v100 = -1;
signed int v99 = 1;
trace++;
switch (trace)
{
case 2: 
return 5;
default: abort ();
}
}
}
}
