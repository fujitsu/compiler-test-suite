#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern void v3 (unsigned int);
extern void (*v4) (unsigned int);
void v5 (signed short, unsigned char, unsigned short);
void (*v6) (signed short, unsigned char, unsigned short) = v5;
extern unsigned int v7 (unsigned char, unsigned short, unsigned int);
extern unsigned int (*v8) (unsigned char, unsigned short, unsigned int);
extern unsigned short v9 (unsigned short, unsigned int);
extern unsigned short (*v10) (unsigned short, unsigned int);
extern unsigned int v11 (unsigned int, unsigned char, unsigned short, signed int);
extern unsigned int (*v12) (unsigned int, unsigned char, unsigned short, signed int);
extern unsigned short v13 (signed char);
extern unsigned short (*v14) (signed char);
extern signed char v15 (unsigned char, signed short);
extern signed char (*v16) (unsigned char, signed short);
extern void v17 (void);
extern void (*v18) (void);
extern signed int v21 (signed short, signed short);
extern signed int (*v22) (signed short, signed short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern signed char v25 (unsigned short, signed short, signed char, signed int);
extern signed char (*v26) (unsigned short, signed short, signed char, signed int);
extern unsigned int v27 (signed char, signed int, signed int);
extern unsigned int (*v28) (signed char, signed int, signed int);
unsigned int v29 (unsigned int, signed int);
unsigned int (*v30) (unsigned int, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v50 = 1;
unsigned int v49 = 7U;
unsigned short v48 = 5;

unsigned int v29 (unsigned int v51, signed int v52)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
signed char v55 = -3;
signed short v54 = -4;
signed int v53 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (signed short v56, unsigned char v57, unsigned short v58)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
signed int v61 = 2;
unsigned char v60 = 4;
signed char v59 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
