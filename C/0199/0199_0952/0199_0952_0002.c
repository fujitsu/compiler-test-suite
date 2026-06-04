#include <stdlib.h>
extern unsigned short v1 (signed int, signed char, unsigned short, signed short);
extern unsigned short (*v2) (signed int, signed char, unsigned short, signed short);
signed int v3 (void);
signed int (*v4) (void) = v3;
extern signed int v5 (unsigned short, signed short);
extern signed int (*v6) (unsigned short, signed short);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern unsigned int v9 (unsigned short, signed short);
extern unsigned int (*v10) (unsigned short, signed short);
extern unsigned char v11 (unsigned int, unsigned int, unsigned short, signed int);
extern unsigned char (*v12) (unsigned int, unsigned int, unsigned short, signed int);
signed short v13 (unsigned char);
signed short (*v14) (unsigned char) = v13;
signed char v15 (unsigned int, signed int, unsigned int, signed int);
signed char (*v16) (unsigned int, signed int, unsigned int, signed int) = v15;
extern unsigned char v17 (unsigned short, unsigned short, unsigned int, unsigned char);
extern unsigned char (*v18) (unsigned short, unsigned short, unsigned int, unsigned char);
extern void v19 (unsigned int, signed short, unsigned int);
extern void (*v20) (unsigned int, signed short, unsigned int);
extern unsigned int v21 (unsigned short, signed short, signed char);
extern unsigned int (*v22) (unsigned short, signed short, signed char);
extern signed short v23 (unsigned short, signed short, signed short, unsigned char);
extern signed short (*v24) (unsigned short, signed short, signed short, unsigned char);
extern void v25 (signed int, unsigned short, unsigned int);
extern void (*v26) (signed int, unsigned short, unsigned int);
extern unsigned int v27 (signed short, unsigned short, unsigned short);
extern unsigned int (*v28) (signed short, unsigned short, unsigned short);
extern unsigned short v29 (signed char, signed short, signed char, unsigned short);
extern unsigned short (*v30) (signed char, signed short, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v88 = -3;
signed short v87 = -3;
signed int v86 = -4;

signed char v15 (unsigned int v89, signed int v90, unsigned int v91, signed int v92)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
signed char v95 = 1;
unsigned char v94 = 7;
unsigned char v93 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (unsigned char v96)
{
history[history_index++] = (int)v96;
{
for (;;) {
signed int v99 = -1;
unsigned int v98 = 1U;
unsigned int v97 = 0U;
trace++;
switch (trace)
{
case 6: 
return 1;
case 10: 
return -2;
default: abort ();
}
}
}
}

signed int v3 (void)
{
{
for (;;) {
unsigned char v102 = 7;
signed char v101 = 1;
unsigned int v100 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
