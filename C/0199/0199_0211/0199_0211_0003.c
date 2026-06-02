#include <stdlib.h>
void v1 (void);
void (*v2) (void) = v1;
extern unsigned int v3 (unsigned int);
extern unsigned int (*v4) (unsigned int);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern signed short v9 (signed short);
extern signed short (*v10) (signed short);
extern unsigned int v11 (signed char, unsigned int, signed int, signed char);
extern unsigned int (*v12) (signed char, unsigned int, signed int, signed char);
extern unsigned int v13 (unsigned int, signed int, unsigned char);
extern unsigned int (*v14) (unsigned int, signed int, unsigned char);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
unsigned char v17 (signed char, unsigned char, unsigned int);
unsigned char (*v18) (signed char, unsigned char, unsigned int) = v17;
extern void v19 (void);
extern void (*v20) (void);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern unsigned char v23 (unsigned char, unsigned short, signed int, unsigned char);
extern unsigned char (*v24) (unsigned char, unsigned short, signed int, unsigned char);
extern signed char v27 (signed char, unsigned short);
extern signed char (*v28) (signed char, unsigned short);
extern signed short v29 (signed char, signed short, signed char, signed short);
extern signed short (*v30) (signed char, signed short, signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v96 = -2;
signed char v95 = 3;
unsigned int v94 = 2U;

unsigned char v17 (signed char v97, unsigned char v98, unsigned int v99)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
signed char v102 = -2;
signed int v101 = -3;
signed short v100 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (void)
{
{
for (;;) {
signed char v105 = 1;
signed int v104 = -4;
signed short v103 = -2;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v106;
unsigned short v107;
signed int v108;
unsigned char v109;
unsigned char v110;
v106 = 3 + 4;
v107 = 6 + 3;
v108 = -2 + -4;
v109 = 1 + 6;
v110 = v23 (v106, v107, v108, v109);
history[history_index++] = (int)v110;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
