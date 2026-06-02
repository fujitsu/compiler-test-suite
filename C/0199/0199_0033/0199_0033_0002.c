#include <stdlib.h>
extern signed char v1 (unsigned int, unsigned int, signed int);
extern signed char (*v2) (unsigned int, unsigned int, signed int);
extern unsigned short v3 (unsigned char, unsigned int, signed short);
extern unsigned short (*v4) (unsigned char, unsigned int, signed short);
extern unsigned short v5 (signed short, unsigned char, unsigned int);
extern unsigned short (*v6) (signed short, unsigned char, unsigned int);
extern signed int v7 (unsigned char);
extern signed int (*v8) (unsigned char);
extern unsigned short v9 (unsigned short, unsigned char, signed short);
extern unsigned short (*v10) (unsigned short, unsigned char, signed short);
extern signed short v11 (signed short);
extern signed short (*v12) (signed short);
extern unsigned char v13 (unsigned short, signed short);
extern unsigned char (*v14) (unsigned short, signed short);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern signed int v19 (signed short, signed int);
extern signed int (*v20) (signed short, signed int);
unsigned char v21 (signed int, signed int, unsigned int);
unsigned char (*v22) (signed int, signed int, unsigned int) = v21;
extern signed char v23 (signed int);
extern signed char (*v24) (signed int);
extern signed int v25 (signed int, signed int, unsigned short, signed char);
extern signed int (*v26) (signed int, signed int, unsigned short, signed char);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
unsigned char v29 (signed int);
unsigned char (*v30) (signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v82 = 0;
signed short v81 = -2;
unsigned int v80 = 3U;

unsigned char v29 (signed int v83)
{
history[history_index++] = (int)v83;
{
for (;;) {
unsigned char v86 = 4;
signed char v85 = 0;
signed char v84 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v21 (signed int v87, signed int v88, unsigned int v89)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned char v92 = 4;
signed short v91 = 3;
signed char v90 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
