#include <stdlib.h>
extern unsigned int v3 (unsigned short, unsigned char, signed int, signed char);
extern unsigned int (*v4) (unsigned short, unsigned char, signed int, signed char);
extern unsigned char v5 (unsigned char, signed char, signed int, unsigned short);
extern unsigned char (*v6) (unsigned char, signed char, signed int, unsigned short);
extern signed short v7 (signed char);
extern signed short (*v8) (signed char);
extern unsigned short v9 (unsigned int, signed int);
extern unsigned short (*v10) (unsigned int, signed int);
extern void v11 (void);
extern void (*v12) (void);
extern signed int v13 (unsigned char, unsigned char, signed int, signed short);
extern signed int (*v14) (unsigned char, unsigned char, signed int, signed short);
extern signed int v15 (signed int, unsigned int);
extern signed int (*v16) (signed int, unsigned int);
extern unsigned char v17 (signed short, signed short, unsigned short);
extern unsigned char (*v18) (signed short, signed short, unsigned short);
extern signed char v19 (signed char, signed short);
extern signed char (*v20) (signed char, signed short);
signed short v21 (signed short);
signed short (*v22) (signed short) = v21;
extern unsigned short v23 (unsigned int, signed int, signed short);
extern unsigned short (*v24) (unsigned int, signed int, signed short);
signed int v25 (void);
signed int (*v26) (void) = v25;
extern signed short v27 (signed short, signed short);
extern signed short (*v28) (signed short, signed short);
extern signed int v29 (unsigned int, unsigned short, unsigned char, unsigned short);
extern signed int (*v30) (unsigned int, unsigned short, unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v109 = -2;
signed char v108 = -2;
signed char v107 = -4;

signed int v25 (void)
{
{
for (;;) {
signed char v112 = -4;
signed int v111 = -3;
unsigned int v110 = 4U;
trace++;
switch (trace)
{
case 3: 
return 2;
case 5: 
return v111;
default: abort ();
}
}
}
}

signed short v21 (signed short v113)
{
history[history_index++] = (int)v113;
{
for (;;) {
unsigned char v116 = 4;
unsigned short v115 = 2;
unsigned short v114 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
