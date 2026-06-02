#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
unsigned short v7 (void);
unsigned short (*v8) (void) = v7;
extern signed short v9 (unsigned char, signed short, signed int, signed short);
extern signed short (*v10) (unsigned char, signed short, signed int, signed short);
unsigned char v11 (signed short);
unsigned char (*v12) (signed short) = v11;
extern signed int v13 (unsigned int, unsigned int, unsigned short);
extern signed int (*v14) (unsigned int, unsigned int, unsigned short);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern unsigned int v19 (signed short);
extern unsigned int (*v20) (signed short);
extern unsigned int v21 (unsigned int, signed int, signed int);
extern unsigned int (*v22) (unsigned int, signed int, signed int);
extern signed int v23 (unsigned char, signed short, signed int);
extern signed int (*v24) (unsigned char, signed short, signed int);
extern signed short v25 (signed int);
extern signed short (*v26) (signed int);
extern void v27 (void);
extern void (*v28) (void);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v91 = -1;
unsigned int v90 = 7U;
signed int v89 = -3;

unsigned char v11 (signed short v92)
{
history[history_index++] = (int)v92;
{
for (;;) {
unsigned char v95 = 6;
unsigned short v94 = 4;
unsigned char v93 = 2;
trace++;
switch (trace)
{
case 9: 
{
v29 ();
}
break;
case 11: 
return v93;
default: abort ();
}
}
}
}

unsigned short v7 (void)
{
{
for (;;) {
signed char v98 = 1;
unsigned short v97 = 2;
signed char v96 = 0;
trace++;
switch (trace)
{
case 5: 
return v97;
default: abort ();
}
}
}
}
