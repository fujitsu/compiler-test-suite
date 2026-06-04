#include <stdlib.h>
unsigned char v1 (unsigned char, signed int, signed short, signed short);
unsigned char (*v2) (unsigned char, signed int, signed short, signed short) = v1;
signed int v3 (unsigned short, signed int, unsigned short);
signed int (*v4) (unsigned short, signed int, unsigned short) = v3;
extern unsigned int v5 (signed short, unsigned char);
extern unsigned int (*v6) (signed short, unsigned char);
extern signed char v7 (unsigned char, signed short, signed int);
extern signed char (*v8) (unsigned char, signed short, signed int);
extern void v9 (signed int);
extern void (*v10) (signed int);
extern void v11 (unsigned short, signed short, unsigned char);
extern void (*v12) (unsigned short, signed short, unsigned char);
extern unsigned short v13 (unsigned int, signed char, signed char, unsigned short);
extern unsigned short (*v14) (unsigned int, signed char, signed char, unsigned short);
extern signed int v15 (signed char);
extern signed int (*v16) (signed char);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern unsigned char v19 (unsigned char, signed int, unsigned short, signed int);
extern unsigned char (*v20) (unsigned char, signed int, unsigned short, signed int);
extern unsigned int v21 (signed int, signed short, unsigned int);
extern unsigned int (*v22) (signed int, signed short, unsigned int);
extern signed char v23 (unsigned char, signed int, signed char);
extern signed char (*v24) (unsigned char, signed int, signed char);
extern unsigned int v25 (unsigned int);
extern unsigned int (*v26) (unsigned int);
extern signed char v27 (unsigned char);
extern signed char (*v28) (unsigned char);
extern unsigned char v29 (unsigned int, signed short, signed int);
extern unsigned char (*v30) (unsigned int, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v77 = 4;
signed short v76 = 3;
signed char v75 = 0;

signed int v3 (unsigned short v78, signed int v79, unsigned short v80)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned int v83 = 6U;
signed char v82 = -3;
signed char v81 = 1;
trace++;
switch (trace)
{
case 9: 
{
unsigned int v84;
unsigned int v85;
v84 = v83 - 1U;
v85 = v25 (v84);
history[history_index++] = (int)v85;
}
break;
case 11: 
return -4;
default: abort ();
}
}
}
}

unsigned char v1 (unsigned char v86, signed int v87, signed short v88, signed short v89)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned char v92 = 2;
unsigned char v91 = 7;
signed char v90 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v93;
signed short v94;
signed int v95;
signed char v96;
v93 = 1 + 0;
v94 = v89 + v88;
v95 = v87 - -3;
v96 = v7 (v93, v94, v95);
history[history_index++] = (int)v96;
}
break;
case 16: 
return 4;
default: abort ();
}
}
}
}
