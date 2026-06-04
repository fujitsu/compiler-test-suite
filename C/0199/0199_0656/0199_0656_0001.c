#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern signed short v3 (signed short, signed int, unsigned char);
extern signed short (*v4) (signed short, signed int, unsigned char);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern signed short v7 (signed char, unsigned short);
extern signed short (*v8) (signed char, unsigned short);
unsigned short v11 (signed char, signed char, signed short);
unsigned short (*v12) (signed char, signed char, signed short) = v11;
extern unsigned short v13 (unsigned char, signed int, unsigned char, unsigned char);
extern unsigned short (*v14) (unsigned char, signed int, unsigned char, unsigned char);
extern signed char v15 (void);
extern signed char (*v16) (void);
void v17 (signed int, signed char, signed char, unsigned short);
void (*v18) (signed int, signed char, signed char, unsigned short) = v17;
extern void v19 (signed int, unsigned char, unsigned char, unsigned int);
extern void (*v20) (signed int, unsigned char, unsigned char, unsigned int);
extern signed int v21 (unsigned int, signed short, signed short, unsigned short);
extern signed int (*v22) (unsigned int, signed short, signed short, unsigned short);
extern signed short v23 (unsigned char, signed char, signed short, unsigned char);
extern signed short (*v24) (unsigned char, signed char, signed short, unsigned char);
extern unsigned char v25 (signed int, unsigned char, signed char, signed int);
extern unsigned char (*v26) (signed int, unsigned char, signed char, signed int);
extern signed char v27 (signed int);
extern signed char (*v28) (signed int);
extern unsigned short v29 (unsigned short, signed short, signed int, unsigned int);
extern unsigned short (*v30) (unsigned short, signed short, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v70 = 3;
signed short v69 = -4;
signed int v68 = 3;

void v17 (signed int v71, signed char v72, signed char v73, unsigned short v74)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed char v77 = 1;
unsigned short v76 = 2;
unsigned short v75 = 1;
trace++;
switch (trace)
{
case 7: 
return;
default: abort ();
}
}
}
}

unsigned short v11 (signed char v78, signed char v79, signed short v80)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned short v83 = 5;
unsigned char v82 = 6;
signed int v81 = 2;
trace++;
switch (trace)
{
case 11: 
return v83;
default: abort ();
}
}
}
}
