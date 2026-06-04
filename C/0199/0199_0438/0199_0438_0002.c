#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned short v5 (signed int, signed short);
extern unsigned short (*v6) (signed int, signed short);
unsigned char v7 (unsigned int, unsigned short);
unsigned char (*v8) (unsigned int, unsigned short) = v7;
signed int v9 (unsigned short, signed int, unsigned int);
signed int (*v10) (unsigned short, signed int, unsigned int) = v9;
extern unsigned short v11 (unsigned int, signed int, unsigned short);
extern unsigned short (*v12) (unsigned int, signed int, unsigned short);
extern void v13 (signed short, signed short, signed char, signed char);
extern void (*v14) (signed short, signed short, signed char, signed char);
extern unsigned int v15 (unsigned short);
extern unsigned int (*v16) (unsigned short);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern void v19 (unsigned char);
extern void (*v20) (unsigned char);
extern signed int v21 (signed short);
extern signed int (*v22) (signed short);
extern unsigned short v23 (signed int, unsigned int, signed short);
extern unsigned short (*v24) (signed int, unsigned int, signed short);
extern unsigned char v25 (signed int);
extern unsigned char (*v26) (signed int);
extern signed int v27 (signed char, signed short, signed short);
extern signed int (*v28) (signed char, signed short, signed short);
unsigned short v29 (unsigned short, signed short, signed short, unsigned int);
unsigned short (*v30) (unsigned short, signed short, signed short, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v77 = -2;
unsigned short v76 = 3;
unsigned char v75 = 0;

unsigned short v29 (unsigned short v78, signed short v79, signed short v80, unsigned int v81)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
unsigned char v84 = 0;
signed short v83 = 1;
signed short v82 = 2;
trace++;
switch (trace)
{
case 2: 
return 5;
default: abort ();
}
}
}
}

signed int v9 (unsigned short v85, signed int v86, unsigned int v87)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
signed char v90 = 3;
unsigned short v89 = 0;
signed char v88 = 1;
trace++;
switch (trace)
{
case 5: 
return -2;
case 7: 
return v86;
case 9: 
return 2;
default: abort ();
}
}
}
}

unsigned char v7 (unsigned int v91, unsigned short v92)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned char v95 = 4;
signed char v94 = -2;
signed int v93 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
