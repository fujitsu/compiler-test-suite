#include <stdlib.h>
extern signed int v1 (signed short, signed int, signed int);
extern signed int (*v2) (signed short, signed int, signed int);
extern signed short v3 (signed int, unsigned char, unsigned int, unsigned char);
extern signed short (*v4) (signed int, unsigned char, unsigned int, unsigned char);
extern void v7 (void);
extern void (*v8) (void);
extern unsigned char v9 (unsigned int, unsigned char, unsigned short);
extern unsigned char (*v10) (unsigned int, unsigned char, unsigned short);
extern signed short v11 (signed char, unsigned short, unsigned char, unsigned int);
extern signed short (*v12) (signed char, unsigned short, unsigned char, unsigned int);
extern signed short v13 (unsigned short, signed int);
extern signed short (*v14) (unsigned short, signed int);
extern signed short v15 (unsigned int);
extern signed short (*v16) (unsigned int);
extern unsigned int v17 (signed char, unsigned int, signed char, unsigned int);
extern unsigned int (*v18) (signed char, unsigned int, signed char, unsigned int);
extern signed int v19 (unsigned char, unsigned short, signed char, unsigned char);
extern signed int (*v20) (unsigned char, unsigned short, signed char, unsigned char);
extern unsigned int v21 (signed char, signed int);
extern unsigned int (*v22) (signed char, signed int);
signed short v23 (signed int, unsigned short, signed int, unsigned short);
signed short (*v24) (signed int, unsigned short, signed int, unsigned short) = v23;
unsigned int v25 (void);
unsigned int (*v26) (void) = v25;
extern unsigned short v27 (unsigned int, signed short, signed int);
extern unsigned short (*v28) (unsigned int, signed short, signed int);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v96 = 0;
unsigned short v95 = 5;
signed int v94 = 2;

unsigned int v25 (void)
{
{
for (;;) {
unsigned char v99 = 3;
signed char v98 = -3;
unsigned char v97 = 3;
trace++;
switch (trace)
{
case 9: 
{
v7 ();
}
break;
case 13: 
return 1U;
default: abort ();
}
}
}
}

signed short v23 (signed int v100, unsigned short v101, signed int v102, unsigned short v103)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed short v106 = -2;
signed char v105 = 2;
unsigned int v104 = 4U;
trace++;
switch (trace)
{
case 5: 
return v106;
default: abort ();
}
}
}
}
