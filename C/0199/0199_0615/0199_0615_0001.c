#include <stdlib.h>
extern signed char v1 (unsigned int);
extern signed char (*v2) (unsigned int);
unsigned int v3 (signed int, unsigned char, signed short);
unsigned int (*v4) (signed int, unsigned char, signed short) = v3;
extern void v5 (unsigned int, signed char, unsigned short);
extern void (*v6) (unsigned int, signed char, unsigned short);
extern unsigned int v7 (unsigned char, unsigned int, unsigned char, unsigned char);
extern unsigned int (*v8) (unsigned char, unsigned int, unsigned char, unsigned char);
extern signed int v9 (signed int, signed short, unsigned int, unsigned int);
extern signed int (*v10) (signed int, signed short, unsigned int, unsigned int);
extern void v11 (signed char);
extern void (*v12) (signed char);
extern unsigned short v13 (signed char);
extern unsigned short (*v14) (signed char);
extern void v15 (unsigned char);
extern void (*v16) (unsigned char);
extern signed int v17 (signed int, unsigned short, signed char, signed short);
extern signed int (*v18) (signed int, unsigned short, signed char, signed short);
extern signed int v19 (unsigned short, unsigned short);
extern signed int (*v20) (unsigned short, unsigned short);
extern signed short v21 (signed char, signed short, signed short, unsigned char);
extern signed short (*v22) (signed char, signed short, signed short, unsigned char);
extern signed int v23 (signed short, unsigned int, unsigned short);
extern signed int (*v24) (signed short, unsigned int, unsigned short);
void v25 (signed char);
void (*v26) (signed char) = v25;
extern signed int v27 (signed char, unsigned int, unsigned int, signed int);
extern signed int (*v28) (signed char, unsigned int, unsigned int, signed int);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v52 = -2;
signed short v51 = -2;
signed int v50 = -2;

void v25 (signed char v53)
{
history[history_index++] = (int)v53;
{
for (;;) {
unsigned int v56 = 2U;
signed char v55 = 0;
unsigned int v54 = 7U;
trace++;
switch (trace)
{
case 1: 
return;
default: abort ();
}
}
}
}

unsigned int v3 (signed int v57, unsigned char v58, signed short v59)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
signed short v62 = -2;
signed short v61 = 0;
unsigned short v60 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
