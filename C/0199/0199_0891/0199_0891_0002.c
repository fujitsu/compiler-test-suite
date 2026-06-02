#include <stdlib.h>
extern signed int v1 (signed char);
extern signed int (*v2) (signed char);
signed short v3 (void);
signed short (*v4) (void) = v3;
extern signed char v5 (unsigned char, signed char, unsigned int);
extern signed char (*v6) (unsigned char, signed char, unsigned int);
extern signed int v7 (unsigned char);
extern signed int (*v8) (unsigned char);
extern signed int v9 (unsigned int, signed short);
extern signed int (*v10) (unsigned int, signed short);
extern unsigned char v11 (signed int, unsigned short);
extern unsigned char (*v12) (signed int, unsigned short);
unsigned short v13 (unsigned char, signed short);
unsigned short (*v14) (unsigned char, signed short) = v13;
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed short v17 (signed short, unsigned int, signed short);
extern signed short (*v18) (signed short, unsigned int, signed short);
extern signed int v21 (signed short, signed char, unsigned int);
extern signed int (*v22) (signed short, signed char, unsigned int);
extern unsigned char v23 (signed int);
extern unsigned char (*v24) (signed int);
extern unsigned int v25 (signed char, signed int, signed char);
extern unsigned int (*v26) (signed char, signed int, signed char);
extern signed int v27 (unsigned char);
extern signed int (*v28) (unsigned char);
extern signed char v29 (unsigned char, unsigned short, unsigned char);
extern signed char (*v30) (unsigned char, unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v90 = 3;
signed int v89 = -1;
signed short v88 = 0;

unsigned short v13 (unsigned char v91, signed short v92)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
signed int v95 = -1;
unsigned short v94 = 1;
unsigned int v93 = 2U;
trace++;
switch (trace)
{
case 5: 
return 0;
default: abort ();
}
}
}
}

signed short v3 (void)
{
{
for (;;) {
unsigned char v98 = 0;
signed short v97 = 1;
signed char v96 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
