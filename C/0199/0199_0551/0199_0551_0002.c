#include <stdlib.h>
extern signed char v1 (signed short, signed short, signed short);
extern signed char (*v2) (signed short, signed short, signed short);
extern unsigned short v3 (unsigned short, signed int, unsigned char);
extern unsigned short (*v4) (unsigned short, signed int, unsigned char);
extern unsigned int v5 (signed char, signed int, unsigned int);
extern unsigned int (*v6) (signed char, signed int, unsigned int);
extern unsigned char v7 (signed short, unsigned int, unsigned int);
extern unsigned char (*v8) (signed short, unsigned int, unsigned int);
signed int v9 (void);
signed int (*v10) (void) = v9;
signed int v11 (void);
signed int (*v12) (void) = v11;
extern signed int v15 (unsigned char, signed int, unsigned char);
extern signed int (*v16) (unsigned char, signed int, unsigned char);
extern unsigned int v19 (signed short);
extern unsigned int (*v20) (signed short);
extern unsigned short v21 (unsigned short, signed short, unsigned char);
extern unsigned short (*v22) (unsigned short, signed short, unsigned char);
extern unsigned int v23 (signed char, unsigned char, signed char, unsigned int);
extern unsigned int (*v24) (signed char, unsigned char, signed char, unsigned int);
extern unsigned int v25 (signed short, signed char, signed char);
extern unsigned int (*v26) (signed short, signed char, signed char);
unsigned short v27 (unsigned short, signed short);
unsigned short (*v28) (unsigned short, signed short) = v27;
extern unsigned char v29 (signed int, signed short);
extern unsigned char (*v30) (signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v96 = -3;
unsigned short v95 = 5;
signed int v94 = 1;

unsigned short v27 (unsigned short v97, signed short v98)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed short v101 = 3;
signed int v100 = 1;
unsigned char v99 = 7;
trace++;
switch (trace)
{
case 1: 
{
signed short v102;
unsigned int v103;
unsigned int v104;
unsigned char v105;
v102 = 2 + v98;
v103 = 6U - 7U;
v104 = 5U + 6U;
v105 = v7 (v102, v103, v104);
history[history_index++] = (int)v105;
}
break;
case 17: 
return 5;
default: abort ();
}
}
}
}

signed int v11 (void)
{
{
for (;;) {
signed int v108 = 1;
unsigned char v107 = 2;
unsigned int v106 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (void)
{
{
for (;;) {
unsigned char v111 = 4;
unsigned short v110 = 1;
signed short v109 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
