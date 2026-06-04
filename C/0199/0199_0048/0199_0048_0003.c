#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern unsigned char v3 (signed int, unsigned char, unsigned char);
extern unsigned char (*v4) (signed int, unsigned char, unsigned char);
extern unsigned int v5 (unsigned int);
extern unsigned int (*v6) (unsigned int);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern unsigned short v9 (signed int, signed int, signed char);
extern unsigned short (*v10) (signed int, signed int, signed char);
extern signed short v11 (unsigned short, unsigned short);
extern signed short (*v12) (unsigned short, unsigned short);
extern unsigned int v13 (unsigned char, unsigned int, unsigned short, signed char);
extern unsigned int (*v14) (unsigned char, unsigned int, unsigned short, signed char);
extern signed short v15 (unsigned int, unsigned char, unsigned char);
extern signed short (*v16) (unsigned int, unsigned char, unsigned char);
extern unsigned int v17 (unsigned int);
extern unsigned int (*v18) (unsigned int);
extern signed short v19 (unsigned int);
extern signed short (*v20) (unsigned int);
extern void v21 (void);
extern void (*v22) (void);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
signed int v27 (void);
signed int (*v28) (void) = v27;
void v29 (unsigned short, unsigned char, signed int);
void (*v30) (unsigned short, unsigned char, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v93 = 2;
unsigned int v92 = 2U;
signed int v91 = -2;

void v29 (unsigned short v94, unsigned char v95, signed int v96)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed short v99 = -3;
unsigned char v98 = 6;
unsigned char v97 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v27 (void)
{
{
for (;;) {
unsigned int v102 = 2U;
signed char v101 = 1;
unsigned char v100 = 0;
trace++;
switch (trace)
{
case 5: 
return -4;
case 7: 
return -2;
default: abort ();
}
}
}
}
