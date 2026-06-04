#include <stdlib.h>
extern signed char v1 (signed char);
extern signed char (*v2) (signed char);
extern unsigned char v3 (unsigned short, signed short, signed char);
extern unsigned char (*v4) (unsigned short, signed short, signed char);
extern unsigned char v5 (unsigned char, unsigned char);
extern unsigned char (*v6) (unsigned char, unsigned char);
extern unsigned short v7 (signed int, signed int);
extern unsigned short (*v8) (signed int, signed int);
extern signed char v9 (unsigned char, signed int, unsigned char);
extern signed char (*v10) (unsigned char, signed int, unsigned char);
extern signed char v11 (signed short, unsigned short, unsigned short, signed char);
extern signed char (*v12) (signed short, unsigned short, unsigned short, signed char);
extern unsigned int v15 (signed char);
extern unsigned int (*v16) (signed char);
extern unsigned char v17 (signed short, unsigned char, signed int, signed char);
extern unsigned char (*v18) (signed short, unsigned char, signed int, signed char);
extern unsigned char v21 (signed short);
extern unsigned char (*v22) (signed short);
unsigned int v23 (signed char, unsigned char, unsigned short, unsigned short);
unsigned int (*v24) (signed char, unsigned char, unsigned short, unsigned short) = v23;
unsigned char v25 (signed short);
unsigned char (*v26) (signed short) = v25;
extern signed short v27 (unsigned char, signed char, signed char, unsigned short);
extern signed short (*v28) (unsigned char, signed char, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v46 = 1;
signed char v45 = -2;
signed short v44 = -2;

unsigned char v25 (signed short v47)
{
history[history_index++] = (int)v47;
{
for (;;) {
signed int v50 = 0;
signed int v49 = 0;
signed char v48 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v23 (signed char v51, unsigned char v52, unsigned short v53, unsigned short v54)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
signed char v57 = -3;
signed short v56 = -4;
signed char v55 = 2;
trace++;
switch (trace)
{
case 11: 
return 3U;
default: abort ();
}
}
}
}
