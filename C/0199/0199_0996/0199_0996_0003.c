#include <stdlib.h>
void v1 (unsigned short);
void (*v2) (unsigned short) = v1;
extern unsigned char v3 (signed char);
extern unsigned char (*v4) (signed char);
extern signed short v5 (unsigned char);
extern signed short (*v6) (unsigned char);
extern signed int v7 (unsigned char, signed char, signed char);
extern signed int (*v8) (unsigned char, signed char, signed char);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed char v11 (unsigned int);
extern signed char (*v12) (unsigned int);
extern signed short v13 (signed int, unsigned char, unsigned char, signed int);
extern signed short (*v14) (signed int, unsigned char, unsigned char, signed int);
extern unsigned int v15 (unsigned int, unsigned short, signed int);
extern unsigned int (*v16) (unsigned int, unsigned short, signed int);
extern signed int v17 (signed int, signed int, unsigned short);
extern signed int (*v18) (signed int, signed int, unsigned short);
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
extern signed int v21 (unsigned char);
extern signed int (*v22) (unsigned char);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed char v25 (void);
extern signed char (*v26) (void);
unsigned int v27 (void);
unsigned int (*v28) (void) = v27;
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v87 = 3U;
signed char v86 = -1;
unsigned int v85 = 1U;

unsigned int v27 (void)
{
{
for (;;) {
unsigned int v90 = 7U;
unsigned short v89 = 3;
unsigned short v88 = 1;
trace++;
switch (trace)
{
case 7: 
return v90;
case 9: 
return v90;
default: abort ();
}
}
}
}

void v1 (unsigned short v91)
{
history[history_index++] = (int)v91;
{
for (;;) {
unsigned short v94 = 3;
signed char v93 = -2;
unsigned short v92 = 7;
trace++;
switch (trace)
{
case 0: 
{
signed int v95;
v95 = v9 ();
history[history_index++] = (int)v95;
}
break;
case 2: 
{
signed int v96;
v96 = v9 ();
history[history_index++] = (int)v96;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
