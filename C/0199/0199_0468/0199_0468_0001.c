#include <stdlib.h>
extern void v1 (signed char, unsigned char);
extern void (*v2) (signed char, unsigned char);
extern unsigned char v3 (unsigned short);
extern unsigned char (*v4) (unsigned short);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
unsigned short v9 (unsigned char, unsigned int, signed short);
unsigned short (*v10) (unsigned char, unsigned int, signed short) = v9;
unsigned char v11 (void);
unsigned char (*v12) (void) = v11;
extern unsigned int v13 (signed char, unsigned short);
extern unsigned int (*v14) (signed char, unsigned short);
extern signed char v15 (signed char, unsigned short, signed int);
extern signed char (*v16) (signed char, unsigned short, signed int);
extern unsigned int v17 (signed char, signed int);
extern unsigned int (*v18) (signed char, signed int);
extern unsigned short v19 (signed char, unsigned int, unsigned short, unsigned short);
extern unsigned short (*v20) (signed char, unsigned int, unsigned short, unsigned short);
extern signed short v21 (signed char, unsigned int, unsigned short);
extern signed short (*v22) (signed char, unsigned int, unsigned short);
extern unsigned char v23 (signed int, unsigned char);
extern unsigned char (*v24) (signed int, unsigned char);
extern void v25 (unsigned short);
extern void (*v26) (unsigned short);
extern void v29 (signed char, unsigned char);
extern void (*v30) (signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v45 = -3;
unsigned int v44 = 6U;
signed int v43 = 0;

unsigned char v11 (void)
{
{
for (;;) {
unsigned short v48 = 4;
unsigned int v47 = 3U;
signed int v46 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (unsigned char v49, unsigned int v50, signed short v51)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
unsigned short v54 = 2;
unsigned short v53 = 6;
unsigned char v52 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
