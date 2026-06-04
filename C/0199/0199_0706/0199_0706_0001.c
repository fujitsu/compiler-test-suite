#include <stdlib.h>
extern signed char v1 (signed char);
extern signed char (*v2) (signed char);
extern signed short v3 (void);
extern signed short (*v4) (void);
extern signed char v5 (unsigned char, unsigned short);
extern signed char (*v6) (unsigned char, unsigned short);
extern unsigned char v7 (signed char, signed short, signed int, unsigned int);
extern unsigned char (*v8) (signed char, signed short, signed int, unsigned int);
signed short v9 (unsigned short, unsigned short);
signed short (*v10) (unsigned short, unsigned short) = v9;
extern void v11 (unsigned char);
extern void (*v12) (unsigned char);
extern signed char v13 (signed int, unsigned int, unsigned char, signed char);
extern signed char (*v14) (signed int, unsigned int, unsigned char, signed char);
unsigned short v15 (signed char, signed char);
unsigned short (*v16) (signed char, signed char) = v15;
extern void v17 (signed int, signed short, signed int);
extern void (*v18) (signed int, signed short, signed int);
extern signed short v19 (signed char, signed char, unsigned short);
extern signed short (*v20) (signed char, signed char, unsigned short);
extern signed char v21 (signed char);
extern signed char (*v22) (signed char);
extern void v23 (unsigned char, signed short);
extern void (*v24) (unsigned char, signed short);
extern signed short v25 (signed int, signed int);
extern signed short (*v26) (signed int, signed int);
extern unsigned int v27 (unsigned char, unsigned short);
extern unsigned int (*v28) (unsigned char, unsigned short);
extern unsigned char v29 (unsigned char, unsigned int);
extern unsigned char (*v30) (unsigned char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v55 = 4U;
unsigned short v54 = 4;
signed short v53 = 0;

unsigned short v15 (signed char v56, signed char v57)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
signed short v60 = 2;
unsigned char v59 = 1;
unsigned int v58 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (unsigned short v61, unsigned short v62)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
signed char v65 = -1;
unsigned char v64 = 2;
signed int v63 = -4;
trace++;
switch (trace)
{
case 11: 
return -1;
default: abort ();
}
}
}
}
