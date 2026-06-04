#include <stdlib.h>
extern unsigned int v3 (unsigned short, signed char, signed short, unsigned int);
extern unsigned int (*v4) (unsigned short, signed char, signed short, unsigned int);
extern void v5 (unsigned short, signed char);
extern void (*v6) (unsigned short, signed char);
extern unsigned short v7 (signed int, signed short);
extern unsigned short (*v8) (signed int, signed short);
extern unsigned short v9 (signed char, unsigned char, unsigned int);
extern unsigned short (*v10) (signed char, unsigned char, unsigned int);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern void v13 (unsigned int);
extern void (*v14) (unsigned int);
extern unsigned short v15 (signed int, unsigned int, unsigned char);
extern unsigned short (*v16) (signed int, unsigned int, unsigned char);
signed short v17 (signed char, signed char, signed int);
signed short (*v18) (signed char, signed char, signed int) = v17;
signed short v19 (void);
signed short (*v20) (void) = v19;
extern signed char v21 (signed short, signed short);
extern signed char (*v22) (signed short, signed short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern unsigned char v25 (unsigned int, signed int);
extern unsigned char (*v26) (unsigned int, signed int);
extern signed int v27 (signed int, unsigned short, signed int, unsigned int);
extern signed int (*v28) (signed int, unsigned short, signed int, unsigned int);
extern signed char v29 (signed int, signed char, signed int, unsigned short);
extern signed char (*v30) (signed int, signed char, signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v66 = 3;
signed short v65 = -3;
signed short v64 = -2;

signed short v19 (void)
{
{
for (;;) {
signed char v69 = 1;
unsigned short v68 = 5;
signed char v67 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (signed char v70, signed char v71, signed int v72)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
unsigned short v75 = 7;
signed int v74 = 1;
unsigned char v73 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
