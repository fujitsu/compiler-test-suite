#include <stdlib.h>
extern signed char v1 (signed short, signed int);
extern signed char (*v2) (signed short, signed int);
extern unsigned int v3 (unsigned char, signed short, signed int, unsigned short);
extern unsigned int (*v4) (unsigned char, signed short, signed int, unsigned short);
extern unsigned int v7 (unsigned int, unsigned short, signed short, unsigned int);
extern unsigned int (*v8) (unsigned int, unsigned short, signed short, unsigned int);
extern signed short v9 (unsigned char);
extern signed short (*v10) (unsigned char);
unsigned char v11 (unsigned short, signed int, unsigned int, unsigned short);
unsigned char (*v12) (unsigned short, signed int, unsigned int, unsigned short) = v11;
extern unsigned char v13 (signed int, signed int, unsigned char, unsigned short);
extern unsigned char (*v14) (signed int, signed int, unsigned char, unsigned short);
unsigned short v15 (void);
unsigned short (*v16) (void) = v15;
extern signed short v19 (signed short, signed short, unsigned int);
extern signed short (*v20) (signed short, signed short, unsigned int);
extern signed char v21 (signed int, signed short, unsigned int, unsigned int);
extern signed char (*v22) (signed int, signed short, unsigned int, unsigned int);
extern unsigned char v23 (signed char, signed short);
extern unsigned char (*v24) (signed char, signed short);
extern signed short v25 (signed char, signed int, unsigned int, signed short);
extern signed short (*v26) (signed char, signed int, unsigned int, signed short);
extern unsigned char v27 (unsigned int, signed int, unsigned short, signed int);
extern unsigned char (*v28) (unsigned int, signed int, unsigned short, signed int);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v104 = 3;
signed short v103 = -4;
signed int v102 = -1;

unsigned short v15 (void)
{
{
for (;;) {
unsigned char v107 = 1;
signed char v106 = -4;
unsigned int v105 = 2U;
trace++;
switch (trace)
{
case 3: 
return 2;
default: abort ();
}
}
}
}

unsigned char v11 (unsigned short v108, signed int v109, unsigned int v110, unsigned short v111)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
signed short v114 = -2;
unsigned int v113 = 7U;
unsigned char v112 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
