#include <stdlib.h>
extern unsigned short v1 (signed char, unsigned short, signed short, unsigned short);
extern unsigned short (*v2) (signed char, unsigned short, signed short, unsigned short);
extern unsigned int v3 (unsigned short, signed int, unsigned int, signed char);
extern unsigned int (*v4) (unsigned short, signed int, unsigned int, signed char);
extern unsigned char v5 (signed char, signed int, unsigned short, unsigned char);
extern unsigned char (*v6) (signed char, signed int, unsigned short, unsigned char);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern signed short v9 (unsigned int, unsigned short);
extern signed short (*v10) (unsigned int, unsigned short);
unsigned int v11 (void);
unsigned int (*v12) (void) = v11;
extern signed int v13 (unsigned char);
extern signed int (*v14) (unsigned char);
extern unsigned char v15 (signed char);
extern unsigned char (*v16) (signed char);
unsigned char v17 (unsigned int, signed short);
unsigned char (*v18) (unsigned int, signed short) = v17;
extern signed short v19 (signed short, signed char);
extern signed short (*v20) (signed short, signed char);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern void v23 (void);
extern void (*v24) (void);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed short v27 (unsigned int, unsigned char, unsigned char, signed char);
extern signed short (*v28) (unsigned int, unsigned char, unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v103 = 7U;
unsigned int v102 = 3U;
signed short v101 = 2;

unsigned char v17 (unsigned int v104, signed short v105)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned short v108 = 2;
signed char v107 = 3;
signed short v106 = 1;
trace++;
switch (trace)
{
case 4: 
return 1;
case 6: 
return 3;
default: abort ();
}
}
}
}

unsigned int v11 (void)
{
{
for (;;) {
unsigned char v111 = 5;
unsigned char v110 = 4;
signed char v109 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
