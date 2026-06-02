#include <stdlib.h>
extern signed int v1 (unsigned int, signed char, unsigned char, unsigned char);
extern signed int (*v2) (unsigned int, signed char, unsigned char, unsigned char);
unsigned char v3 (unsigned int, signed int);
unsigned char (*v4) (unsigned int, signed int) = v3;
extern unsigned char v5 (signed short, signed short, signed char);
extern unsigned char (*v6) (signed short, signed short, signed char);
extern unsigned char v7 (unsigned int);
extern unsigned char (*v8) (unsigned int);
extern void v9 (unsigned char, signed char, signed short, unsigned int);
extern void (*v10) (unsigned char, signed char, signed short, unsigned int);
extern signed short v11 (signed int, unsigned short, unsigned int);
extern signed short (*v12) (signed int, unsigned short, unsigned int);
signed int v13 (signed char, signed short, unsigned int);
signed int (*v14) (signed char, signed short, unsigned int) = v13;
extern signed int v15 (signed char, signed int, unsigned short);
extern signed int (*v16) (signed char, signed int, unsigned short);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern unsigned int v19 (signed char, signed int);
extern unsigned int (*v20) (signed char, signed int);
extern unsigned int v21 (unsigned char, signed int, unsigned char, unsigned short);
extern unsigned int (*v22) (unsigned char, signed int, unsigned char, unsigned short);
extern signed short v23 (unsigned short, unsigned char);
extern signed short (*v24) (unsigned short, unsigned char);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed char v27 (signed short, unsigned int, signed char);
extern signed char (*v28) (signed short, unsigned int, signed char);
extern unsigned int v29 (signed char, signed int, unsigned short);
extern unsigned int (*v30) (signed char, signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v67 = 0U;
signed int v66 = -3;
unsigned int v65 = 2U;

signed int v13 (signed char v68, signed short v69, unsigned int v70)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed int v73 = -4;
unsigned char v72 = 5;
signed int v71 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (unsigned int v74, signed int v75)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
signed char v78 = -3;
signed short v77 = -4;
unsigned int v76 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
