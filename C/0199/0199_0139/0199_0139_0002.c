#include <stdlib.h>
extern signed int v1 (unsigned int);
extern signed int (*v2) (unsigned int);
extern signed int v3 (void);
extern signed int (*v4) (void);
signed char v5 (signed char);
signed char (*v6) (signed char) = v5;
extern unsigned char v7 (unsigned short, unsigned short);
extern unsigned char (*v8) (unsigned short, unsigned short);
extern signed int v9 (unsigned short);
extern signed int (*v10) (unsigned short);
extern void v11 (unsigned char, unsigned char, signed char);
extern void (*v12) (unsigned char, unsigned char, signed char);
extern void v13 (unsigned char, unsigned int, signed char);
extern void (*v14) (unsigned char, unsigned int, signed char);
extern void v15 (void);
extern void (*v16) (void);
extern signed int v17 (unsigned int, unsigned short, unsigned int, unsigned int);
extern signed int (*v18) (unsigned int, unsigned short, unsigned int, unsigned int);
extern void v19 (unsigned short);
extern void (*v20) (unsigned short);
extern unsigned short v21 (unsigned int);
extern unsigned short (*v22) (unsigned int);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern signed short v25 (unsigned short, unsigned int, unsigned char);
extern signed short (*v26) (unsigned short, unsigned int, unsigned char);
extern signed int v27 (signed short, unsigned int, unsigned int, signed int);
extern signed int (*v28) (signed short, unsigned int, unsigned int, signed int);
signed int v29 (signed int, unsigned short, unsigned char);
signed int (*v30) (signed int, unsigned short, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v72 = 5;
signed int v71 = 0;
unsigned int v70 = 2U;

signed int v29 (signed int v73, unsigned short v74, unsigned char v75)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
unsigned char v78 = 1;
unsigned char v77 = 1;
unsigned int v76 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (signed char v79)
{
history[history_index++] = (int)v79;
{
for (;;) {
signed char v82 = 1;
unsigned int v81 = 4U;
signed short v80 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
