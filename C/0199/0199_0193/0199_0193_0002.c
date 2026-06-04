#include <stdlib.h>
extern unsigned int v1 (signed char);
extern unsigned int (*v2) (signed char);
extern unsigned short v3 (unsigned char, unsigned char);
extern unsigned short (*v4) (unsigned char, unsigned char);
signed short v5 (unsigned short, unsigned int, unsigned short);
signed short (*v6) (unsigned short, unsigned int, unsigned short) = v5;
extern unsigned int v7 (signed char, signed int);
extern unsigned int (*v8) (signed char, signed int);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
signed int v11 (signed char, signed char);
signed int (*v12) (signed char, signed char) = v11;
extern unsigned char v15 (unsigned char);
extern unsigned char (*v16) (unsigned char);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed short v21 (unsigned char, signed short, signed char, signed char);
extern signed short (*v22) (unsigned char, signed short, signed char, signed char);
extern void v23 (unsigned short, unsigned int);
extern void (*v24) (unsigned short, unsigned int);
extern signed short v25 (unsigned char, unsigned int, signed char, signed char);
extern signed short (*v26) (unsigned char, unsigned int, signed char, signed char);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v70 = -4;
unsigned short v69 = 7;
unsigned char v68 = 2;

signed int v11 (signed char v71, signed char v72)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
signed int v75 = -3;
unsigned char v74 = 1;
signed short v73 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (unsigned short v76, unsigned int v77, unsigned short v78)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
unsigned int v81 = 5U;
signed short v80 = -2;
unsigned short v79 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
