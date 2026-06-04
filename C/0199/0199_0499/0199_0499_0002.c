#include <stdlib.h>
extern unsigned char v1 (unsigned int, unsigned short);
extern unsigned char (*v2) (unsigned int, unsigned short);
extern void v3 (void);
extern void (*v4) (void);
extern unsigned short v5 (signed short, signed short, unsigned int);
extern unsigned short (*v6) (signed short, signed short, unsigned int);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern signed char v9 (unsigned int);
extern signed char (*v10) (unsigned int);
extern signed char v11 (unsigned short, unsigned char, unsigned short);
extern signed char (*v12) (unsigned short, unsigned char, unsigned short);
signed short v15 (signed short);
signed short (*v16) (signed short) = v15;
extern unsigned short v17 (unsigned short, signed int);
extern unsigned short (*v18) (unsigned short, signed int);
extern unsigned short v19 (unsigned char, unsigned int);
extern unsigned short (*v20) (unsigned char, unsigned int);
extern signed short v21 (signed short, unsigned int, signed int, signed short);
extern signed short (*v22) (signed short, unsigned int, signed int, signed short);
extern void v23 (signed short);
extern void (*v24) (signed short);
extern unsigned short v25 (signed short, unsigned int);
extern unsigned short (*v26) (signed short, unsigned int);
unsigned int v27 (void);
unsigned int (*v28) (void) = v27;
extern void v29 (signed char, unsigned char, signed char);
extern void (*v30) (signed char, unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v94 = -2;
unsigned char v93 = 7;
unsigned int v92 = 3U;

unsigned int v27 (void)
{
{
for (;;) {
unsigned int v97 = 6U;
signed short v96 = 3;
signed char v95 = 1;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v98;
unsigned char v99;
unsigned short v100;
signed char v101;
v98 = 4 + 1;
v99 = 1 - 0;
v100 = 1 - 4;
v101 = v11 (v98, v99, v100);
history[history_index++] = (int)v101;
}
break;
case 15: 
return 4U;
default: abort ();
}
}
}
}

signed short v15 (signed short v102)
{
history[history_index++] = (int)v102;
{
for (;;) {
unsigned short v105 = 1;
signed int v104 = 2;
unsigned short v103 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
