#include <stdlib.h>
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern void v9 (signed short, signed char, signed int, signed short);
extern void (*v10) (signed short, signed char, signed int, signed short);
extern signed short v11 (unsigned char);
extern signed short (*v12) (unsigned char);
extern signed short v13 (signed char, signed char);
extern signed short (*v14) (signed char, signed char);
unsigned char v15 (unsigned char, signed char, unsigned char, unsigned int);
unsigned char (*v16) (unsigned char, signed char, unsigned char, unsigned int) = v15;
extern signed int v19 (unsigned char);
extern signed int (*v20) (unsigned char);
extern signed int v21 (unsigned int, unsigned int, signed short, unsigned int);
extern signed int (*v22) (unsigned int, unsigned int, signed short, unsigned int);
extern unsigned short v23 (signed char, unsigned short, unsigned short);
extern unsigned short (*v24) (signed char, unsigned short, unsigned short);
signed int v25 (signed int, unsigned char, signed short, unsigned int);
signed int (*v26) (signed int, unsigned char, signed short, unsigned int) = v25;
extern signed short v27 (unsigned char, signed char);
extern signed short (*v28) (unsigned char, signed char);
extern signed char v29 (signed char, unsigned char);
extern signed char (*v30) (signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v81 = 3;
signed char v80 = -1;
unsigned int v79 = 4U;

signed int v25 (signed int v82, unsigned char v83, signed short v84, unsigned int v85)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
unsigned short v88 = 1;
signed short v87 = 2;
unsigned short v86 = 2;
trace++;
switch (trace)
{
case 4: 
return v82;
default: abort ();
}
}
}
}

unsigned char v15 (unsigned char v89, signed char v90, unsigned char v91, unsigned int v92)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
signed short v95 = -4;
signed short v94 = 2;
signed int v93 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
