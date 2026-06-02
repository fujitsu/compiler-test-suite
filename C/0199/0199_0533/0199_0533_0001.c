#include <stdlib.h>
extern signed int v1 (signed int, signed char, unsigned int);
extern signed int (*v2) (signed int, signed char, unsigned int);
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern void v5 (signed int, signed short, signed char);
extern void (*v6) (signed int, signed short, signed char);
extern unsigned char v7 (signed short, unsigned char, unsigned char, signed char);
extern unsigned char (*v8) (signed short, unsigned char, unsigned char, signed char);
extern void v9 (signed short, signed char, signed short, unsigned short);
extern void (*v10) (signed short, signed char, signed short, unsigned short);
unsigned int v11 (signed int);
unsigned int (*v12) (signed int) = v11;
signed int v13 (signed short, signed short, signed short, unsigned short);
signed int (*v14) (signed short, signed short, signed short, unsigned short) = v13;
extern unsigned int v15 (unsigned char, signed short);
extern unsigned int (*v16) (unsigned char, signed short);
extern unsigned int v17 (signed short);
extern unsigned int (*v18) (signed short);
extern signed short v19 (signed char, unsigned short, unsigned short);
extern signed short (*v20) (signed char, unsigned short, unsigned short);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern signed char v23 (signed char, unsigned short);
extern signed char (*v24) (signed char, unsigned short);
extern signed int v25 (signed char, unsigned char);
extern signed int (*v26) (signed char, unsigned char);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern signed char v29 (unsigned short, unsigned char, unsigned char);
extern signed char (*v30) (unsigned short, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v49 = 3;
signed short v48 = 3;
signed char v47 = 2;

signed int v13 (signed short v50, signed short v51, signed short v52, unsigned short v53)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
signed short v56 = 2;
unsigned char v55 = 6;
unsigned int v54 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (signed int v57)
{
history[history_index++] = (int)v57;
{
for (;;) {
unsigned int v60 = 4U;
unsigned char v59 = 5;
unsigned int v58 = 5U;
trace++;
switch (trace)
{
case 1: 
return v60;
default: abort ();
}
}
}
}
