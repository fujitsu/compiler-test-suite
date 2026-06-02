#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern void v3 (signed char, signed char, unsigned int);
extern void (*v4) (signed char, signed char, unsigned int);
extern unsigned int v5 (unsigned int, signed short);
extern unsigned int (*v6) (unsigned int, signed short);
extern signed int v7 (unsigned short, unsigned char);
extern signed int (*v8) (unsigned short, unsigned char);
unsigned short v9 (signed int, signed char, signed int);
unsigned short (*v10) (signed int, signed char, signed int) = v9;
extern signed char v11 (signed short, signed int, signed char, unsigned int);
extern signed char (*v12) (signed short, signed int, signed char, unsigned int);
extern signed char v13 (unsigned int, signed int);
extern signed char (*v14) (unsigned int, signed int);
unsigned char v15 (signed char, unsigned char);
unsigned char (*v16) (signed char, unsigned char) = v15;
extern signed char v17 (void);
extern signed char (*v18) (void);
extern void v19 (void);
extern void (*v20) (void);
extern signed char v21 (unsigned short);
extern signed char (*v22) (unsigned short);
extern unsigned short v25 (unsigned char, unsigned short, unsigned short, unsigned int);
extern unsigned short (*v26) (unsigned char, unsigned short, unsigned short, unsigned int);
extern signed char v27 (signed short);
extern signed char (*v28) (signed short);
extern signed char v29 (signed short, signed int, unsigned char);
extern signed char (*v30) (signed short, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v46 = -3;
unsigned int v45 = 0U;
signed short v44 = 0;

unsigned char v15 (signed char v47, unsigned char v48)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
signed int v51 = 2;
signed int v50 = 0;
unsigned short v49 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (signed int v52, signed char v53, signed int v54)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
unsigned short v57 = 7;
signed char v56 = -2;
signed short v55 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
