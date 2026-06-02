#include <stdlib.h>
extern signed int v1 (unsigned short, signed char);
extern signed int (*v2) (unsigned short, signed char);
extern void v3 (unsigned short, signed int);
extern void (*v4) (unsigned short, signed int);
extern signed int v5 (unsigned short, signed short, unsigned char, signed short);
extern signed int (*v6) (unsigned short, signed short, unsigned char, signed short);
extern signed short v7 (unsigned char, unsigned char);
extern signed short (*v8) (unsigned char, unsigned char);
extern void v9 (unsigned char, unsigned int, unsigned short, unsigned char);
extern void (*v10) (unsigned char, unsigned int, unsigned short, unsigned char);
extern void v11 (signed short, unsigned int);
extern void (*v12) (signed short, unsigned int);
signed int v13 (void);
signed int (*v14) (void) = v13;
void v17 (unsigned short, unsigned short, signed short);
void (*v18) (unsigned short, unsigned short, signed short) = v17;
extern signed int v19 (signed char, signed int, unsigned char);
extern signed int (*v20) (signed char, signed int, unsigned char);
extern unsigned char v21 (unsigned short, unsigned short, unsigned int, signed char);
extern unsigned char (*v22) (unsigned short, unsigned short, unsigned int, signed char);
signed char v23 (unsigned int);
signed char (*v24) (unsigned int) = v23;
extern signed char v25 (signed char, unsigned int, signed short, signed char);
extern signed char (*v26) (signed char, unsigned int, signed short, signed char);
extern unsigned int v27 (signed int, signed char, unsigned char);
extern unsigned int (*v28) (signed int, signed char, unsigned char);
extern unsigned char v29 (unsigned short, unsigned int, unsigned char);
extern unsigned char (*v30) (unsigned short, unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v47 = 5U;
unsigned short v46 = 0;
unsigned int v45 = 2U;

signed char v23 (unsigned int v48)
{
history[history_index++] = (int)v48;
{
for (;;) {
unsigned char v51 = 7;
signed int v50 = 1;
signed short v49 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (unsigned short v52, unsigned short v53, signed short v54)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
unsigned char v57 = 4;
unsigned char v56 = 1;
signed short v55 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (void)
{
{
for (;;) {
unsigned char v60 = 0;
unsigned int v59 = 6U;
unsigned char v58 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
