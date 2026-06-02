#include <stdlib.h>
extern signed char v1 (signed char);
extern signed char (*v2) (signed char);
extern unsigned short v3 (unsigned int, unsigned short);
extern unsigned short (*v4) (unsigned int, unsigned short);
extern unsigned char v5 (signed short, signed int, unsigned int, signed int);
extern unsigned char (*v6) (signed short, signed int, unsigned int, signed int);
extern unsigned char v7 (unsigned short, signed char, unsigned short, unsigned int);
extern unsigned char (*v8) (unsigned short, signed char, unsigned short, unsigned int);
extern unsigned short v9 (signed short, unsigned short);
extern unsigned short (*v10) (signed short, unsigned short);
extern unsigned short v11 (signed char);
extern unsigned short (*v12) (signed char);
extern void v13 (unsigned char);
extern void (*v14) (unsigned char);
unsigned char v15 (signed int, unsigned char, signed char, signed char);
unsigned char (*v16) (signed int, unsigned char, signed char, signed char) = v15;
extern unsigned short v17 (unsigned int, unsigned int);
extern unsigned short (*v18) (unsigned int, unsigned int);
unsigned char v19 (signed char, signed int);
unsigned char (*v20) (signed char, signed int) = v19;
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern void v23 (void);
extern void (*v24) (void);
extern unsigned char v25 (signed short, unsigned short, unsigned int, unsigned char);
extern unsigned char (*v26) (signed short, unsigned short, unsigned int, unsigned char);
extern void v27 (unsigned int, unsigned short, signed short, unsigned char);
extern void (*v28) (unsigned int, unsigned short, signed short, unsigned char);
extern unsigned short v29 (unsigned short, unsigned short, signed short, unsigned short);
extern unsigned short (*v30) (unsigned short, unsigned short, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v89 = 7;
signed int v88 = -4;
unsigned char v87 = 4;

unsigned char v19 (signed char v90, signed int v91)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
unsigned int v94 = 5U;
unsigned char v93 = 2;
signed char v92 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (signed int v95, unsigned char v96, signed char v97, signed char v98)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed int v101 = 1;
signed char v100 = 0;
signed short v99 = -2;
trace++;
switch (trace)
{
case 3: 
{
v23 ();
}
break;
case 5: 
{
v23 ();
}
break;
case 7: 
return v96;
default: abort ();
}
}
}
}
