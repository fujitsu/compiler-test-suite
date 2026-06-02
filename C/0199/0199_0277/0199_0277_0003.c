#include <stdlib.h>
signed short v1 (signed short, signed int);
signed short (*v2) (signed short, signed int) = v1;
extern signed char v3 (signed char, signed short, unsigned char);
extern signed char (*v4) (signed char, signed short, unsigned char);
extern signed short v5 (unsigned short);
extern signed short (*v6) (unsigned short);
extern signed char v7 (signed int, signed int, unsigned short, signed short);
extern signed char (*v8) (signed int, signed int, unsigned short, signed short);
extern signed char v9 (signed short, unsigned short, unsigned char);
extern signed char (*v10) (signed short, unsigned short, unsigned char);
extern signed int v11 (signed int, unsigned int, signed int);
extern signed int (*v12) (signed int, unsigned int, signed int);
extern void v13 (signed int);
extern void (*v14) (signed int);
extern unsigned short v15 (unsigned short, unsigned int, signed char);
extern unsigned short (*v16) (unsigned short, unsigned int, signed char);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern unsigned int v21 (signed short, unsigned short, unsigned short, unsigned short);
extern unsigned int (*v22) (signed short, unsigned short, unsigned short, unsigned short);
extern signed int v23 (unsigned char, unsigned int);
extern signed int (*v24) (unsigned char, unsigned int);
extern signed int v25 (unsigned char, unsigned int, unsigned short, unsigned int);
extern signed int (*v26) (unsigned char, unsigned int, unsigned short, unsigned int);
signed short v27 (signed char, unsigned int, signed int, unsigned short);
signed short (*v28) (signed char, unsigned int, signed int, unsigned short) = v27;
extern signed int v29 (unsigned char, unsigned char, signed int);
extern signed int (*v30) (unsigned char, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v96 = 1;
signed int v95 = 1;
signed char v94 = -1;

signed short v27 (signed char v97, unsigned int v98, signed int v99, unsigned short v100)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed char v103 = 2;
signed short v102 = 2;
signed int v101 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed short v104, signed int v105)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned char v108 = 3;
unsigned char v107 = 3;
signed int v106 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed short v109;
unsigned short v110;
unsigned char v111;
signed char v112;
v109 = v104 + v104;
v110 = 1 + 3;
v111 = 1 - v107;
v112 = v9 (v109, v110, v111);
history[history_index++] = (int)v112;
}
break;
case 18: 
return 3;
default: abort ();
}
}
}
}
