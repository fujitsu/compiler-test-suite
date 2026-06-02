#include <stdlib.h>
extern unsigned char v3 (signed int);
extern unsigned char (*v4) (signed int);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern signed short v9 (unsigned char, signed short, signed int);
extern signed short (*v10) (unsigned char, signed short, signed int);
unsigned char v11 (signed char);
unsigned char (*v12) (signed char) = v11;
unsigned char v13 (signed int, signed int);
unsigned char (*v14) (signed int, signed int) = v13;
extern signed short v15 (signed short, signed char, unsigned char);
extern signed short (*v16) (signed short, signed char, unsigned char);
extern signed short v17 (signed char, unsigned int, unsigned short);
extern signed short (*v18) (signed char, unsigned int, unsigned short);
extern signed short v21 (signed char, signed short, unsigned int);
extern signed short (*v22) (signed char, signed short, unsigned int);
extern unsigned int v25 (unsigned short, signed short);
extern unsigned int (*v26) (unsigned short, signed short);
extern signed short v27 (unsigned short, signed char, signed short);
extern signed short (*v28) (unsigned short, signed char, signed short);
extern unsigned short v29 (signed char, signed int, unsigned char);
extern unsigned short (*v30) (signed char, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v77 = -1;
signed short v76 = 0;
signed short v75 = 0;

unsigned char v13 (signed int v78, signed int v79)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned short v82 = 3;
unsigned short v81 = 6;
unsigned int v80 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (signed char v83)
{
history[history_index++] = (int)v83;
{
for (;;) {
signed char v86 = -3;
unsigned int v85 = 2U;
signed char v84 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
