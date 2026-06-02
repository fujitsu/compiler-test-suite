#include <stdlib.h>
extern unsigned char v1 (signed char, signed short, signed short, signed int);
extern unsigned char (*v2) (signed char, signed short, signed short, signed int);
extern signed int v3 (signed char, signed int, unsigned short, unsigned short);
extern signed int (*v4) (signed char, signed int, unsigned short, unsigned short);
extern signed char v5 (signed short, signed short, unsigned int);
extern signed char (*v6) (signed short, signed short, unsigned int);
extern signed char v7 (unsigned int, unsigned int, unsigned int);
extern signed char (*v8) (unsigned int, unsigned int, unsigned int);
extern void v9 (signed int);
extern void (*v10) (signed int);
extern signed short v11 (signed short, unsigned int, unsigned int, signed int);
extern signed short (*v12) (signed short, unsigned int, unsigned int, signed int);
signed char v13 (unsigned short, signed int);
signed char (*v14) (unsigned short, signed int) = v13;
extern signed int v15 (signed int, unsigned short, unsigned short);
extern signed int (*v16) (signed int, unsigned short, unsigned short);
unsigned char v17 (signed char);
unsigned char (*v18) (signed char) = v17;
extern signed char v21 (void);
extern signed char (*v22) (void);
extern signed int v23 (unsigned int);
extern signed int (*v24) (unsigned int);
extern unsigned short v25 (signed char, signed char, unsigned short);
extern unsigned short (*v26) (signed char, signed char, unsigned short);
extern signed int v27 (unsigned char);
extern signed int (*v28) (unsigned char);
extern unsigned char v29 (signed char);
extern unsigned char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v56 = 3;
signed char v55 = -1;
signed short v54 = -2;

unsigned char v17 (signed char v57)
{
history[history_index++] = (int)v57;
{
for (;;) {
unsigned short v60 = 7;
signed char v59 = -2;
signed short v58 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (unsigned short v61, signed int v62)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned short v65 = 5;
unsigned short v64 = 7;
unsigned short v63 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
