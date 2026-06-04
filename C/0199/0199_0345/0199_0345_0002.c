#include <stdlib.h>
extern void v3 (unsigned short);
extern void (*v4) (unsigned short);
extern signed short v5 (signed int, signed int, signed short, unsigned short);
extern signed short (*v6) (signed int, signed int, signed short, unsigned short);
extern unsigned char v7 (unsigned short, unsigned short, unsigned int);
extern unsigned char (*v8) (unsigned short, unsigned short, unsigned int);
extern void v9 (signed char);
extern void (*v10) (signed char);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern unsigned char v13 (signed char, unsigned char);
extern unsigned char (*v14) (signed char, unsigned char);
signed char v15 (void);
signed char (*v16) (void) = v15;
unsigned char v17 (unsigned int, unsigned short, unsigned int);
unsigned char (*v18) (unsigned int, unsigned short, unsigned int) = v17;
extern signed char v19 (void);
extern signed char (*v20) (void);
extern signed short v23 (unsigned int);
extern signed short (*v24) (unsigned int);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned int v27 (unsigned char, unsigned char, unsigned char);
extern unsigned int (*v28) (unsigned char, unsigned char, unsigned char);
extern void v29 (unsigned int, unsigned int, signed char, signed short);
extern void (*v30) (unsigned int, unsigned int, signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v99 = 5U;
unsigned int v98 = 5U;
signed int v97 = -4;

unsigned char v17 (unsigned int v100, unsigned short v101, unsigned int v102)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed short v105 = -1;
unsigned int v104 = 4U;
unsigned short v103 = 4;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v106;
unsigned char v107;
unsigned char v108;
unsigned int v109;
v106 = 0 + 7;
v107 = 5 - 6;
v108 = 4 - 0;
v109 = v27 (v106, v107, v108);
history[history_index++] = (int)v109;
}
break;
case 3: 
return 3;
default: abort ();
}
}
}
}

signed char v15 (void)
{
{
for (;;) {
signed char v112 = -4;
unsigned short v111 = 3;
unsigned char v110 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
