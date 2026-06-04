#include <stdlib.h>
extern void v3 (unsigned short, signed int, signed short);
extern void (*v4) (unsigned short, signed int, signed short);
signed short v5 (signed short, unsigned short, signed short);
signed short (*v6) (signed short, unsigned short, signed short) = v5;
extern unsigned char v7 (signed int, signed char, unsigned int, unsigned int);
extern unsigned char (*v8) (signed int, signed char, unsigned int, unsigned int);
extern signed char v9 (unsigned char);
extern signed char (*v10) (unsigned char);
extern signed char v11 (signed short, signed char, signed int);
extern signed char (*v12) (signed short, signed char, signed int);
signed int v13 (void);
signed int (*v14) (void) = v13;
extern unsigned char v15 (signed char, signed char, signed short, signed short);
extern unsigned char (*v16) (signed char, signed char, signed short, signed short);
extern signed int v17 (unsigned char);
extern signed int (*v18) (unsigned char);
extern signed char v19 (unsigned short);
extern signed char (*v20) (unsigned short);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern unsigned char v23 (unsigned short, signed short);
extern unsigned char (*v24) (unsigned short, signed short);
extern signed char v25 (unsigned int, signed int, signed int, signed int);
extern signed char (*v26) (unsigned int, signed int, signed int, signed int);
extern unsigned char v27 (unsigned short, signed short, signed char, unsigned int);
extern unsigned char (*v28) (unsigned short, signed short, signed char, unsigned int);
extern void v29 (signed char, unsigned short, unsigned short);
extern void (*v30) (signed char, unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v67 = 3;
signed char v66 = -3;
signed short v65 = 0;

signed int v13 (void)
{
{
for (;;) {
signed char v70 = 1;
signed char v69 = 0;
signed int v68 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (signed short v71, unsigned short v72, signed short v73)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
signed int v76 = 0;
unsigned char v75 = 3;
signed short v74 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
