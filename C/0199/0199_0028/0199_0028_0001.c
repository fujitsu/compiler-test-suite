#include <stdlib.h>
extern unsigned short v1 (unsigned int, unsigned short);
extern unsigned short (*v2) (unsigned int, unsigned short);
extern void v3 (signed short);
extern void (*v4) (signed short);
extern unsigned int v5 (signed int);
extern unsigned int (*v6) (signed int);
extern unsigned short v7 (signed int, signed short);
extern unsigned short (*v8) (signed int, signed short);
extern unsigned char v9 (signed char, signed int, unsigned char, signed char);
extern unsigned char (*v10) (signed char, signed int, unsigned char, signed char);
extern signed char v11 (signed short);
extern signed char (*v12) (signed short);
void v13 (signed char);
void (*v14) (signed char) = v13;
extern void v15 (unsigned char, signed short);
extern void (*v16) (unsigned char, signed short);
extern unsigned int v17 (unsigned short, signed char, signed char);
extern unsigned int (*v18) (unsigned short, signed char, signed char);
unsigned short v19 (unsigned short, signed short, signed int, unsigned char);
unsigned short (*v20) (unsigned short, signed short, signed int, unsigned char) = v19;
extern signed int v21 (void);
extern signed int (*v22) (void);
extern signed short v23 (signed char, signed char);
extern signed short (*v24) (signed char, signed char);
extern unsigned int v25 (signed short, signed char);
extern unsigned int (*v26) (signed short, signed char);
extern unsigned int v27 (signed short, unsigned short, unsigned int);
extern unsigned int (*v28) (signed short, unsigned short, unsigned int);
extern signed int v29 (signed int, unsigned short);
extern signed int (*v30) (signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v57 = 7U;
signed int v56 = -3;
unsigned int v55 = 4U;

unsigned short v19 (unsigned short v58, signed short v59, signed int v60, unsigned char v61)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
unsigned char v64 = 4;
signed int v63 = 2;
signed int v62 = -4;
trace++;
switch (trace)
{
case 5: 
return v58;
default: abort ();
}
}
}
}

void v13 (signed char v65)
{
history[history_index++] = (int)v65;
{
for (;;) {
signed char v68 = -1;
unsigned short v67 = 1;
unsigned int v66 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
