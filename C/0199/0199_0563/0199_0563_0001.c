#include <stdlib.h>
extern unsigned short v1 (signed int, unsigned int, signed short, signed char);
extern unsigned short (*v2) (signed int, unsigned int, signed short, signed char);
extern signed char v3 (unsigned int, unsigned short);
extern signed char (*v4) (unsigned int, unsigned short);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
signed short v7 (signed short, unsigned char, signed short, signed short);
signed short (*v8) (signed short, unsigned char, signed short, signed short) = v7;
extern signed int v9 (signed char, signed char, unsigned int);
extern signed int (*v10) (signed char, signed char, unsigned int);
unsigned char v11 (void);
unsigned char (*v12) (void) = v11;
extern void v13 (signed short);
extern void (*v14) (signed short);
extern signed char v15 (signed short, signed char);
extern signed char (*v16) (signed short, signed char);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern void v19 (unsigned int, signed int, unsigned char);
extern void (*v20) (unsigned int, signed int, unsigned char);
extern unsigned short v21 (unsigned char);
extern unsigned short (*v22) (unsigned char);
extern signed char v23 (signed char, unsigned char, signed char);
extern signed char (*v24) (signed char, unsigned char, signed char);
extern signed int v25 (unsigned char);
extern signed int (*v26) (unsigned char);
extern unsigned char v27 (unsigned int);
extern unsigned char (*v28) (unsigned int);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v43 = 5U;
signed int v42 = -1;
signed char v41 = 2;

unsigned char v11 (void)
{
{
for (;;) {
signed int v46 = -3;
unsigned char v45 = 7;
signed int v44 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (signed short v47, unsigned char v48, signed short v49, signed short v50)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
unsigned short v53 = 1;
signed short v52 = 3;
signed char v51 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
