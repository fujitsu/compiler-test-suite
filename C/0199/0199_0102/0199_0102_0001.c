#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern unsigned char v3 (signed short);
extern unsigned char (*v4) (signed short);
extern void v5 (signed short, unsigned short, unsigned short);
extern void (*v6) (signed short, unsigned short, unsigned short);
void v7 (signed char, signed int, unsigned int);
void (*v8) (signed char, signed int, unsigned int) = v7;
extern signed short v9 (unsigned char, unsigned int, signed char, signed char);
extern signed short (*v10) (unsigned char, unsigned int, signed char, signed char);
extern signed int v11 (signed char);
extern signed int (*v12) (signed char);
extern unsigned char v13 (unsigned char, unsigned char, unsigned short);
extern unsigned char (*v14) (unsigned char, unsigned char, unsigned short);
unsigned short v15 (signed short, signed char, unsigned short, signed short);
unsigned short (*v16) (signed short, signed char, unsigned short, signed short) = v15;
extern signed char v17 (unsigned short, signed char, unsigned char);
extern signed char (*v18) (unsigned short, signed char, unsigned char);
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
extern signed short v21 (signed char, unsigned short, signed char, unsigned int);
extern signed short (*v22) (signed char, unsigned short, signed char, unsigned int);
extern unsigned short v23 (signed short, signed int, unsigned short, signed char);
extern unsigned short (*v24) (signed short, signed int, unsigned short, signed char);
extern unsigned short v25 (unsigned char);
extern unsigned short (*v26) (unsigned char);
extern signed char v27 (signed short, signed int);
extern signed char (*v28) (signed short, signed int);
extern signed int v29 (unsigned char, unsigned int, unsigned int);
extern signed int (*v30) (unsigned char, unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v39 = 0;
signed int v38 = 1;
signed short v37 = -3;

unsigned short v15 (signed short v40, signed char v41, unsigned short v42, signed short v43)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
unsigned char v46 = 4;
signed char v45 = -4;
signed int v44 = 2;
trace++;
switch (trace)
{
case 2: 
return v42;
default: abort ();
}
}
}
}

void v7 (signed char v47, signed int v48, unsigned int v49)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned char v52 = 6;
unsigned char v51 = 4;
signed short v50 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
