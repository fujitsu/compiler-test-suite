#include <stdlib.h>
extern unsigned short v1 (signed int);
extern unsigned short (*v2) (signed int);
extern unsigned int v3 (signed char);
extern unsigned int (*v4) (signed char);
unsigned char v5 (unsigned char, unsigned short, unsigned short);
unsigned char (*v6) (unsigned char, unsigned short, unsigned short) = v5;
extern signed short v7 (unsigned int, unsigned char, signed short, signed char);
extern signed short (*v8) (unsigned int, unsigned char, signed short, signed char);
extern signed int v9 (signed char, signed char, signed char);
extern signed int (*v10) (signed char, signed char, signed char);
extern void v11 (unsigned char);
extern void (*v12) (unsigned char);
extern signed char v13 (signed char, signed short);
extern signed char (*v14) (signed char, signed short);
extern signed short v15 (void);
extern signed short (*v16) (void);
signed char v17 (unsigned short, signed int, signed int, unsigned short);
signed char (*v18) (unsigned short, signed int, signed int, unsigned short) = v17;
extern void v21 (unsigned int);
extern void (*v22) (unsigned int);
extern signed int v25 (signed char);
extern signed int (*v26) (signed char);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern unsigned short v29 (signed int, unsigned short, signed char, signed char);
extern unsigned short (*v30) (signed int, unsigned short, signed char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v47 = 1;
unsigned int v46 = 7U;
signed char v45 = 2;

signed char v17 (unsigned short v48, signed int v49, signed int v50, unsigned short v51)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
signed short v54 = -3;
unsigned char v53 = 0;
unsigned char v52 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned char v55, unsigned short v56, unsigned short v57)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
unsigned short v60 = 5;
signed char v59 = -1;
signed char v58 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
