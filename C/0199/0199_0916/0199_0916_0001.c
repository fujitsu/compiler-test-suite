#include <stdlib.h>
extern unsigned short v3 (signed int, signed short, unsigned short, unsigned char);
extern unsigned short (*v4) (signed int, signed short, unsigned short, unsigned char);
extern unsigned short v7 (signed short, unsigned short, signed short, unsigned int);
extern unsigned short (*v8) (signed short, unsigned short, signed short, unsigned int);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern unsigned char v11 (signed short, unsigned int, unsigned short, unsigned int);
extern unsigned char (*v12) (signed short, unsigned int, unsigned short, unsigned int);
extern void v13 (signed short, unsigned short, unsigned int);
extern void (*v14) (signed short, unsigned short, unsigned int);
extern signed int v15 (signed short, signed char, signed short, unsigned char);
extern signed int (*v16) (signed short, signed char, signed short, unsigned char);
extern unsigned short v17 (signed char, unsigned char, unsigned short, unsigned char);
extern unsigned short (*v18) (signed char, unsigned char, unsigned short, unsigned char);
extern void v19 (signed int, signed char, unsigned int);
extern void (*v20) (signed int, signed char, unsigned int);
extern unsigned char v21 (signed char, signed char, signed char, unsigned short);
extern unsigned char (*v22) (signed char, signed char, signed char, unsigned short);
extern void v23 (signed int, signed int, unsigned char, signed int);
extern void (*v24) (signed int, signed int, unsigned char, signed int);
extern signed char v25 (signed int);
extern signed char (*v26) (signed int);
unsigned int v27 (unsigned char, unsigned char, signed short);
unsigned int (*v28) (unsigned char, unsigned char, signed short) = v27;
signed char v29 (unsigned int, unsigned short, signed char, unsigned char);
signed char (*v30) (unsigned int, unsigned short, signed char, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v82 = -2;
signed char v81 = -1;
signed short v80 = -4;

signed char v29 (unsigned int v83, unsigned short v84, signed char v85, unsigned char v86)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
signed int v89 = 3;
signed int v88 = -3;
unsigned char v87 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v27 (unsigned char v90, unsigned char v91, signed short v92)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned short v95 = 4;
signed int v94 = -4;
signed char v93 = 2;
trace++;
switch (trace)
{
case 3: 
return 7U;
case 5: 
return 5U;
case 7: 
return 6U;
case 9: 
return 0U;
default: abort ();
}
}
}
}
