#include <stdlib.h>
unsigned int v1 (signed int, signed int, unsigned short, unsigned char);
unsigned int (*v2) (signed int, signed int, unsigned short, unsigned char) = v1;
extern void v3 (unsigned char);
extern void (*v4) (unsigned char);
extern signed char v5 (unsigned short, unsigned char);
extern signed char (*v6) (unsigned short, unsigned char);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern unsigned char v9 (unsigned int, unsigned char, signed int);
extern unsigned char (*v10) (unsigned int, unsigned char, signed int);
extern unsigned int v11 (signed short, signed short, signed int);
extern unsigned int (*v12) (signed short, signed short, signed int);
void v13 (void);
void (*v14) (void) = v13;
extern unsigned short v15 (unsigned char);
extern unsigned short (*v16) (unsigned char);
extern unsigned char v17 (unsigned int, unsigned char, unsigned short, signed short);
extern unsigned char (*v18) (unsigned int, unsigned char, unsigned short, signed short);
extern void v21 (unsigned int, unsigned short, signed int, signed int);
extern void (*v22) (unsigned int, unsigned short, signed int, signed int);
extern void v23 (void);
extern void (*v24) (void);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern signed char v27 (signed short, unsigned short);
extern signed char (*v28) (signed short, unsigned short);
extern void v29 (unsigned short);
extern void (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v103 = 4;
unsigned short v102 = 0;
signed short v101 = -4;

void v13 (void)
{
{
for (;;) {
unsigned char v106 = 5;
signed short v105 = -2;
unsigned char v104 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (signed int v107, signed int v108, unsigned short v109, unsigned char v110)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
unsigned char v113 = 7;
signed short v112 = 1;
unsigned char v111 = 6;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v114;
v114 = 6 + 6;
v3 (v114);
}
break;
case 16: 
return 2U;
default: abort ();
}
}
}
}
