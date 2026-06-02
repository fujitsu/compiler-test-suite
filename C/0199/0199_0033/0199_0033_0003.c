#include <stdlib.h>
signed char v1 (unsigned int, unsigned int, signed int);
signed char (*v2) (unsigned int, unsigned int, signed int) = v1;
extern unsigned short v3 (unsigned char, unsigned int, signed short);
extern unsigned short (*v4) (unsigned char, unsigned int, signed short);
unsigned short v5 (signed short, unsigned char, unsigned int);
unsigned short (*v6) (signed short, unsigned char, unsigned int) = v5;
extern signed int v7 (unsigned char);
extern signed int (*v8) (unsigned char);
extern unsigned short v9 (unsigned short, unsigned char, signed short);
extern unsigned short (*v10) (unsigned short, unsigned char, signed short);
extern signed short v11 (signed short);
extern signed short (*v12) (signed short);
extern unsigned char v13 (unsigned short, signed short);
extern unsigned char (*v14) (unsigned short, signed short);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern signed int v19 (signed short, signed int);
extern signed int (*v20) (signed short, signed int);
extern unsigned char v21 (signed int, signed int, unsigned int);
extern unsigned char (*v22) (signed int, signed int, unsigned int);
extern signed char v23 (signed int);
extern signed char (*v24) (signed int);
extern signed int v25 (signed int, signed int, unsigned short, signed char);
extern signed int (*v26) (signed int, signed int, unsigned short, signed char);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern unsigned char v29 (signed int);
extern unsigned char (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v95 = 5U;
signed int v94 = 3;
unsigned short v93 = 6;

unsigned short v5 (signed short v96, unsigned char v97, unsigned int v98)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed int v101 = -4;
signed short v100 = -1;
signed short v99 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (unsigned int v102, unsigned int v103, signed int v104)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
unsigned int v107 = 2U;
unsigned int v106 = 6U;
unsigned char v105 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v108;
signed int v109;
v108 = v105 + v105;
v109 = v7 (v108);
history[history_index++] = (int)v109;
}
break;
case 12: 
return -1;
default: abort ();
}
}
}
}
