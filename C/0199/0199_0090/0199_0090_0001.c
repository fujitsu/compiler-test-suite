#include <stdlib.h>
extern unsigned char v1 (unsigned char, unsigned int, unsigned char, unsigned short);
extern unsigned char (*v2) (unsigned char, unsigned int, unsigned char, unsigned short);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern unsigned int v5 (unsigned short, signed int, signed int);
extern unsigned int (*v6) (unsigned short, signed int, signed int);
extern unsigned short v7 (signed short, signed short, unsigned char);
extern unsigned short (*v8) (signed short, signed short, unsigned char);
extern unsigned char v9 (unsigned short, unsigned short, unsigned char, signed int);
extern unsigned char (*v10) (unsigned short, unsigned short, unsigned char, signed int);
extern unsigned short v11 (unsigned int, unsigned short, signed int);
extern unsigned short (*v12) (unsigned int, unsigned short, signed int);
signed int v13 (unsigned char, signed short, signed char);
signed int (*v14) (unsigned char, signed short, signed char) = v13;
extern signed short v15 (void);
extern signed short (*v16) (void);
extern void v19 (unsigned int, unsigned char, signed short, unsigned int);
extern void (*v20) (unsigned int, unsigned char, signed short, unsigned int);
unsigned short v21 (unsigned int, unsigned char);
unsigned short (*v22) (unsigned int, unsigned char) = v21;
extern signed short v23 (void);
extern signed short (*v24) (void);
extern void v25 (signed short, unsigned int);
extern void (*v26) (signed short, unsigned int);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v54 = -4;
signed int v53 = 2;
signed char v52 = 1;

unsigned short v21 (unsigned int v55, unsigned char v56)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
signed char v59 = 2;
signed short v58 = 0;
signed int v57 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (unsigned char v60, signed short v61, signed char v62)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned short v65 = 0;
signed char v64 = -3;
unsigned char v63 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
