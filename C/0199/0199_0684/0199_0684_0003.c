#include <stdlib.h>
extern unsigned char v1 (unsigned short, signed short, unsigned short);
extern unsigned char (*v2) (unsigned short, signed short, unsigned short);
signed short v3 (signed short, unsigned int, unsigned short, signed char);
signed short (*v4) (signed short, unsigned int, unsigned short, signed char) = v3;
extern unsigned short v5 (signed int);
extern unsigned short (*v6) (signed int);
extern signed char v7 (unsigned char, signed int, signed short, signed char);
extern signed char (*v8) (unsigned char, signed int, signed short, signed char);
extern signed short v9 (signed short, unsigned int, unsigned int, unsigned int);
extern signed short (*v10) (signed short, unsigned int, unsigned int, unsigned int);
extern signed char v11 (unsigned short, unsigned int);
extern signed char (*v12) (unsigned short, unsigned int);
extern unsigned short v13 (signed int);
extern unsigned short (*v14) (signed int);
extern unsigned short v15 (signed short, unsigned int, unsigned char);
extern unsigned short (*v16) (signed short, unsigned int, unsigned char);
extern unsigned char v17 (signed char);
extern unsigned char (*v18) (signed char);
extern unsigned int v19 (unsigned short, unsigned int, signed short);
extern unsigned int (*v20) (unsigned short, unsigned int, signed short);
extern signed char v21 (unsigned int, signed short, signed short, signed char);
extern signed char (*v22) (unsigned int, signed short, signed short, signed char);
extern signed int v23 (void);
extern signed int (*v24) (void);
void v25 (void);
void (*v26) (void) = v25;
extern signed short v27 (signed int);
extern signed short (*v28) (signed int);
extern signed char v29 (unsigned char, unsigned int);
extern signed char (*v30) (unsigned char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v87 = 3U;
signed int v86 = -2;
unsigned int v85 = 5U;

void v25 (void)
{
{
for (;;) {
unsigned int v90 = 4U;
unsigned int v89 = 3U;
unsigned int v88 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (signed short v91, unsigned int v92, unsigned short v93, signed char v94)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
unsigned short v97 = 7;
unsigned short v96 = 3;
signed char v95 = -1;
trace++;
switch (trace)
{
case 9: 
return -4;
default: abort ();
}
}
}
}
