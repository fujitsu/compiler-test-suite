#include <stdlib.h>
extern unsigned int v1 (signed short);
extern unsigned int (*v2) (signed short);
extern unsigned short v3 (signed int);
extern unsigned short (*v4) (signed int);
extern unsigned short v5 (signed int, signed char, unsigned int);
extern unsigned short (*v6) (signed int, signed char, unsigned int);
extern void v7 (signed short, unsigned int);
extern void (*v8) (signed short, unsigned int);
extern void v9 (void);
extern void (*v10) (void);
signed char v11 (signed short, unsigned char);
signed char (*v12) (signed short, unsigned char) = v11;
extern unsigned int v13 (signed char, unsigned int, signed char, signed char);
extern unsigned int (*v14) (signed char, unsigned int, signed char, signed char);
extern signed char v15 (unsigned int, signed int, signed char, signed short);
extern signed char (*v16) (unsigned int, signed int, signed char, signed short);
extern unsigned short v19 (signed int, unsigned int, unsigned short);
extern unsigned short (*v20) (signed int, unsigned int, unsigned short);
signed short v21 (signed short);
signed short (*v22) (signed short) = v21;
extern signed char v23 (signed char, unsigned int);
extern signed char (*v24) (signed char, unsigned int);
extern unsigned int v25 (signed short);
extern unsigned int (*v26) (signed short);
extern unsigned int v27 (unsigned int, unsigned short);
extern unsigned int (*v28) (unsigned int, unsigned short);
extern signed short v29 (unsigned short);
extern signed short (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v56 = 1;
unsigned char v55 = 6;
unsigned char v54 = 4;

signed short v21 (signed short v57)
{
history[history_index++] = (int)v57;
{
for (;;) {
unsigned int v60 = 5U;
signed char v59 = 1;
signed int v58 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (signed short v61, unsigned char v62)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
signed short v65 = -4;
unsigned int v64 = 4U;
signed int v63 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
