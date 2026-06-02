#include <stdlib.h>
extern signed int v1 (signed short, unsigned int, unsigned short, unsigned int);
extern signed int (*v2) (signed short, unsigned int, unsigned short, unsigned int);
extern unsigned short v3 (signed char);
extern unsigned short (*v4) (signed char);
unsigned int v5 (unsigned char, unsigned char);
unsigned int (*v6) (unsigned char, unsigned char) = v5;
extern unsigned char v7 (unsigned char, signed int, signed short, signed short);
extern unsigned char (*v8) (unsigned char, signed int, signed short, signed short);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern void v13 (unsigned char, unsigned short);
extern void (*v14) (unsigned char, unsigned short);
extern void v15 (unsigned short, unsigned short);
extern void (*v16) (unsigned short, unsigned short);
extern unsigned short v17 (unsigned short, unsigned char, signed char, unsigned int);
extern unsigned short (*v18) (unsigned short, unsigned char, signed char, unsigned int);
extern void v19 (unsigned char);
extern void (*v20) (unsigned char);
extern signed char v21 (signed int, unsigned char, unsigned char, signed short);
extern signed char (*v22) (signed int, unsigned char, unsigned char, signed short);
extern unsigned short v23 (unsigned char, unsigned short, signed short);
extern unsigned short (*v24) (unsigned char, unsigned short, signed short);
extern unsigned char v25 (unsigned int, unsigned int);
extern unsigned char (*v26) (unsigned int, unsigned int);
unsigned int v27 (signed int, unsigned short);
unsigned int (*v28) (signed int, unsigned short) = v27;
extern unsigned short v29 (unsigned int, signed short);
extern unsigned short (*v30) (unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v63 = -3;
unsigned int v62 = 0U;
signed short v61 = -4;

unsigned int v27 (signed int v64, unsigned short v65)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
signed short v68 = 2;
unsigned short v67 = 0;
unsigned int v66 = 2U;
trace++;
switch (trace)
{
case 3: 
return 6U;
default: abort ();
}
}
}
}

unsigned int v5 (unsigned char v69, unsigned char v70)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
unsigned int v73 = 4U;
unsigned char v72 = 2;
unsigned short v71 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
