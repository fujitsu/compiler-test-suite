#include <stdlib.h>
extern unsigned int v1 (unsigned char, unsigned char, signed char);
extern unsigned int (*v2) (unsigned char, unsigned char, signed char);
extern signed char v3 (signed char);
extern signed char (*v4) (signed char);
extern unsigned int v5 (signed short, signed short, unsigned char, signed short);
extern unsigned int (*v6) (signed short, signed short, unsigned char, signed short);
extern signed short v9 (unsigned short, unsigned short);
extern signed short (*v10) (unsigned short, unsigned short);
void v11 (void);
void (*v12) (void) = v11;
unsigned int v13 (void);
unsigned int (*v14) (void) = v13;
extern unsigned short v15 (unsigned short, unsigned short, unsigned char);
extern unsigned short (*v16) (unsigned short, unsigned short, unsigned char);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern void v21 (signed int, unsigned char);
extern void (*v22) (signed int, unsigned char);
extern void v23 (unsigned char, unsigned short, unsigned char, unsigned int);
extern void (*v24) (unsigned char, unsigned short, unsigned char, unsigned int);
extern unsigned char v25 (signed int, unsigned short);
extern unsigned char (*v26) (signed int, unsigned short);
extern unsigned char v27 (unsigned short);
extern unsigned char (*v28) (unsigned short);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v97 = 3;
unsigned char v96 = 6;
unsigned char v95 = 3;

unsigned int v13 (void)
{
{
for (;;) {
signed char v100 = -2;
unsigned short v99 = 7;
unsigned char v98 = 2;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v101;
unsigned char v102;
v101 = v99 + v99;
v102 = v27 (v101);
history[history_index++] = (int)v102;
}
break;
case 15: 
return 2U;
default: abort ();
}
}
}
}

void v11 (void)
{
{
for (;;) {
unsigned short v105 = 7;
signed short v104 = 2;
unsigned int v103 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
