#include <stdlib.h>
extern signed int v1 (unsigned short, unsigned char, signed char, signed char);
extern signed int (*v2) (unsigned short, unsigned char, signed char, signed char);
extern unsigned short v3 (signed short);
extern unsigned short (*v4) (signed short);
extern signed char v5 (signed int, unsigned short);
extern signed char (*v6) (signed int, unsigned short);
extern signed char v7 (unsigned int, unsigned short, unsigned int);
extern signed char (*v8) (unsigned int, unsigned short, unsigned int);
extern signed short v9 (unsigned int);
extern signed short (*v10) (unsigned int);
extern signed short v11 (unsigned short, unsigned char, unsigned int, unsigned int);
extern signed short (*v12) (unsigned short, unsigned char, unsigned int, unsigned int);
extern signed int v13 (signed char, signed int, unsigned short, signed char);
extern signed int (*v14) (signed char, signed int, unsigned short, signed char);
extern signed int v15 (unsigned char, signed short);
extern signed int (*v16) (unsigned char, signed short);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern unsigned char v19 (signed short);
extern unsigned char (*v20) (signed short);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern void v23 (unsigned int, signed short, signed char, unsigned char);
extern void (*v24) (unsigned int, signed short, signed char, unsigned char);
extern unsigned int v25 (signed int);
extern unsigned int (*v26) (signed int);
unsigned char v27 (signed char, unsigned short, unsigned int);
unsigned char (*v28) (signed char, unsigned short, unsigned int) = v27;
signed char v29 (signed char, signed int);
signed char (*v30) (signed char, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v53 = -3;
unsigned int v52 = 2U;
unsigned short v51 = 4;

signed char v29 (signed char v54, signed int v55)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
signed int v58 = -2;
unsigned short v57 = 1;
unsigned short v56 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v27 (signed char v59, unsigned short v60, unsigned int v61)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
signed short v64 = -1;
signed char v63 = 0;
unsigned char v62 = 4;
trace++;
switch (trace)
{
case 2: 
return 1;
default: abort ();
}
}
}
}
