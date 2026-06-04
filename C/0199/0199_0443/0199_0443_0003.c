#include <stdlib.h>
extern signed int v1 (signed short, unsigned short);
extern signed int (*v2) (signed short, unsigned short);
extern unsigned int v3 (signed char, unsigned char);
extern unsigned int (*v4) (signed char, unsigned char);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern signed char v7 (signed short, signed int, signed char);
extern signed char (*v8) (signed short, signed int, signed char);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned short v11 (signed char, signed int);
extern unsigned short (*v12) (signed char, signed int);
extern signed short v13 (unsigned int);
extern signed short (*v14) (unsigned int);
extern unsigned char v15 (signed int, signed char, unsigned int, signed short);
extern unsigned char (*v16) (signed int, signed char, unsigned int, signed short);
extern unsigned short v17 (signed int, signed char);
extern unsigned short (*v18) (signed int, signed char);
unsigned char v19 (signed char, unsigned char, signed char, signed char);
unsigned char (*v20) (signed char, unsigned char, signed char, signed char) = v19;
extern unsigned int v21 (signed char, signed int, unsigned int);
extern unsigned int (*v22) (signed char, signed int, unsigned int);
extern unsigned short v23 (unsigned int, unsigned int);
extern unsigned short (*v24) (unsigned int, unsigned int);
extern unsigned char v25 (unsigned char, unsigned short, unsigned short, unsigned char);
extern unsigned char (*v26) (unsigned char, unsigned short, unsigned short, unsigned char);
extern signed char v27 (signed short, signed char, signed char, signed short);
extern signed char (*v28) (signed short, signed char, signed char, signed short);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v109 = 2;
signed short v108 = 0;
signed int v107 = 2;

unsigned char v19 (signed char v110, unsigned char v111, signed char v112, signed char v113)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
unsigned int v116 = 1U;
unsigned int v115 = 4U;
signed char v114 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
