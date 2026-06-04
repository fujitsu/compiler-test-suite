#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
unsigned short v3 (unsigned int, unsigned char);
unsigned short (*v4) (unsigned int, unsigned char) = v3;
extern unsigned short v5 (signed short, unsigned short);
extern unsigned short (*v6) (signed short, unsigned short);
signed short v7 (unsigned int);
signed short (*v8) (unsigned int) = v7;
extern signed int v9 (signed char);
extern signed int (*v10) (signed char);
extern unsigned short v11 (signed int, unsigned char, unsigned short, signed char);
extern unsigned short (*v12) (signed int, unsigned char, unsigned short, signed char);
extern signed short v13 (unsigned char, signed short, signed char, signed short);
extern signed short (*v14) (unsigned char, signed short, signed char, signed short);
extern signed short v15 (unsigned short, signed int);
extern signed short (*v16) (unsigned short, signed int);
extern signed char v17 (signed int);
extern signed char (*v18) (signed int);
extern signed char v19 (signed int, signed int, signed char, signed int);
extern signed char (*v20) (signed int, signed int, signed char, signed int);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern signed char v23 (signed short, unsigned int, signed char, unsigned short);
extern signed char (*v24) (signed short, unsigned int, signed char, unsigned short);
extern unsigned short v25 (unsigned int, unsigned char, signed char);
extern unsigned short (*v26) (unsigned int, unsigned char, signed char);
extern void v27 (signed int, unsigned short, signed char);
extern void (*v28) (signed int, unsigned short, signed char);
extern unsigned int v29 (unsigned short, signed char, signed char, signed int);
extern unsigned int (*v30) (unsigned short, signed char, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v98 = 7U;
unsigned char v97 = 6;
signed short v96 = 2;

signed short v7 (unsigned int v99)
{
history[history_index++] = (int)v99;
{
for (;;) {
unsigned short v102 = 2;
signed char v101 = 2;
unsigned short v100 = 1;
trace++;
switch (trace)
{
case 2: 
{
signed char v103;
signed int v104;
v103 = v101 + v101;
v104 = v9 (v103);
history[history_index++] = (int)v104;
}
break;
case 16: 
return 3;
default: abort ();
}
}
}
}

unsigned short v3 (unsigned int v105, unsigned char v106)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
unsigned short v109 = 7;
signed int v108 = -1;
signed short v107 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
