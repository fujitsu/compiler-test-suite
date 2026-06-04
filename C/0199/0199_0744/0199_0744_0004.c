#include <stdlib.h>
extern signed int v1 (unsigned char, signed char);
extern signed int (*v2) (unsigned char, signed char);
extern signed int v3 (unsigned char, unsigned char);
extern signed int (*v4) (unsigned char, unsigned char);
extern signed int v5 (signed int, unsigned char);
extern signed int (*v6) (signed int, unsigned char);
signed short v7 (void);
signed short (*v8) (void) = v7;
void v9 (signed int);
void (*v10) (signed int) = v9;
extern signed char v11 (signed int, signed short, signed short);
extern signed char (*v12) (signed int, signed short, signed short);
extern signed int v13 (unsigned int);
extern signed int (*v14) (unsigned int);
extern void v15 (signed int, signed short);
extern void (*v16) (signed int, signed short);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern void v19 (unsigned char, signed short, signed short);
extern void (*v20) (unsigned char, signed short, signed short);
extern void v21 (unsigned char, signed char);
extern void (*v22) (unsigned char, signed char);
extern unsigned char v23 (signed char, unsigned short, unsigned short);
extern unsigned char (*v24) (signed char, unsigned short, unsigned short);
extern unsigned short v25 (signed short, signed char, unsigned char);
extern unsigned short (*v26) (signed short, signed char, unsigned char);
extern void v27 (signed short, signed int, signed int);
extern void (*v28) (signed short, signed int, signed int);
extern signed char v29 (signed char);
extern signed char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v130 = -1;
unsigned int v129 = 5U;
unsigned int v128 = 1U;

void v9 (signed int v131)
{
history[history_index++] = (int)v131;
{
for (;;) {
signed int v134 = 1;
unsigned short v133 = 6;
unsigned int v132 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (void)
{
{
for (;;) {
signed short v137 = 0;
signed char v136 = -2;
unsigned char v135 = 4;
trace++;
switch (trace)
{
case 5: 
return -2;
case 7: 
return v137;
case 9: 
return v137;
default: abort ();
}
}
}
}
