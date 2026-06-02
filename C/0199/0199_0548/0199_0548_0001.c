#include <stdlib.h>
extern signed short v1 (signed char, signed short, unsigned short, signed char);
extern signed short (*v2) (signed char, signed short, unsigned short, signed char);
extern signed int v3 (signed int);
extern signed int (*v4) (signed int);
extern unsigned char v5 (signed int, signed char);
extern unsigned char (*v6) (signed int, signed char);
void v7 (signed int, unsigned int, unsigned int);
void (*v8) (signed int, unsigned int, unsigned int) = v7;
extern signed int v9 (void);
extern signed int (*v10) (void);
extern unsigned int v11 (unsigned int, signed short, signed int, unsigned char);
extern unsigned int (*v12) (unsigned int, signed short, signed int, unsigned char);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern signed short v15 (unsigned char, unsigned short, unsigned int);
extern signed short (*v16) (unsigned char, unsigned short, unsigned int);
extern unsigned int v17 (unsigned char, signed int, signed int);
extern unsigned int (*v18) (unsigned char, signed int, signed int);
extern void v19 (unsigned char, signed char, signed char, unsigned int);
extern void (*v20) (unsigned char, signed char, signed char, unsigned int);
extern signed int v21 (void);
extern signed int (*v22) (void);
unsigned int v23 (signed char, unsigned short, signed int, signed short);
unsigned int (*v24) (signed char, unsigned short, signed int, signed short) = v23;
extern signed short v25 (unsigned int, unsigned short);
extern signed short (*v26) (unsigned int, unsigned short);
void v27 (signed char);
void (*v28) (signed char) = v27;
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v54 = 3;
signed char v53 = 2;
unsigned short v52 = 7;

void v27 (signed char v55)
{
history[history_index++] = (int)v55;
{
for (;;) {
unsigned char v58 = 6;
signed int v57 = -4;
signed int v56 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v23 (signed char v59, unsigned short v60, signed int v61, signed short v62)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
signed short v65 = 2;
unsigned short v64 = 5;
signed char v63 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (signed int v66, unsigned int v67, unsigned int v68)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
unsigned int v71 = 6U;
unsigned int v70 = 7U;
unsigned char v69 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
