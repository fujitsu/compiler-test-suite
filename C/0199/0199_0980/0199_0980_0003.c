#include <stdlib.h>
extern void v1 (unsigned short, signed char, unsigned short);
extern void (*v2) (unsigned short, signed char, unsigned short);
extern signed char v3 (signed char, signed short, signed int);
extern signed char (*v4) (signed char, signed short, signed int);
extern void v5 (signed char, signed char);
extern void (*v6) (signed char, signed char);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern signed char v9 (signed short, signed short, unsigned int);
extern signed char (*v10) (signed short, signed short, unsigned int);
extern signed char v11 (signed char, unsigned int, signed short, unsigned int);
extern signed char (*v12) (signed char, unsigned int, signed short, unsigned int);
unsigned short v13 (unsigned char, signed int, signed int, unsigned short);
unsigned short (*v14) (unsigned char, signed int, signed int, unsigned short) = v13;
extern void v17 (void);
extern void (*v18) (void);
extern unsigned short v19 (signed int, signed int, unsigned char, signed char);
extern unsigned short (*v20) (signed int, signed int, unsigned char, signed char);
unsigned int v21 (signed char, unsigned short);
unsigned int (*v22) (signed char, unsigned short) = v21;
extern unsigned int v23 (signed char);
extern unsigned int (*v24) (signed char);
extern signed short v25 (unsigned short, unsigned short);
extern signed short (*v26) (unsigned short, unsigned short);
extern unsigned char v29 (unsigned int, unsigned char);
extern unsigned char (*v30) (unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v92 = -3;
signed short v91 = 3;
unsigned short v90 = 3;

unsigned int v21 (signed char v93, unsigned short v94)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
signed int v97 = -4;
signed short v96 = 1;
unsigned char v95 = 2;
trace++;
switch (trace)
{
case 4: 
{
signed char v98;
unsigned int v99;
v98 = v93 - v93;
v99 = v23 (v98);
history[history_index++] = (int)v99;
}
break;
case 6: 
{
signed char v100;
unsigned int v101;
v100 = -2 + v93;
v101 = v23 (v100);
history[history_index++] = (int)v101;
}
break;
case 14: 
return 3U;
default: abort ();
}
}
}
}

unsigned short v13 (unsigned char v102, signed int v103, signed int v104, unsigned short v105)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed short v108 = 1;
signed short v107 = 2;
signed short v106 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
