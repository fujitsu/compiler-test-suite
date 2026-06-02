#include <stdlib.h>
extern void v1 (unsigned char, signed char);
extern void (*v2) (unsigned char, signed char);
extern unsigned short v3 (signed char, unsigned short, unsigned short);
extern unsigned short (*v4) (signed char, unsigned short, unsigned short);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
signed short v7 (unsigned int);
signed short (*v8) (unsigned int) = v7;
extern signed int v9 (signed int);
extern signed int (*v10) (signed int);
extern unsigned short v11 (signed short, signed char, signed short, unsigned char);
extern unsigned short (*v12) (signed short, signed char, signed short, unsigned char);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern unsigned int v15 (signed int);
extern unsigned int (*v16) (signed int);
extern void v17 (signed int, unsigned short, signed int, signed short);
extern void (*v18) (signed int, unsigned short, signed int, signed short);
extern signed int v19 (unsigned char, signed short);
extern signed int (*v20) (unsigned char, signed short);
extern unsigned char v21 (unsigned char, unsigned int);
extern unsigned char (*v22) (unsigned char, unsigned int);
extern unsigned int v25 (unsigned short, unsigned char);
extern unsigned int (*v26) (unsigned short, unsigned char);
extern unsigned int v27 (signed int, unsigned short, signed short, signed short);
extern unsigned int (*v28) (signed int, unsigned short, signed short, signed short);
signed int v29 (signed int, unsigned char, unsigned char, signed short);
signed int (*v30) (signed int, unsigned char, unsigned char, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v109 = -1;
signed short v108 = 0;
signed int v107 = 2;

signed int v29 (signed int v110, unsigned char v111, unsigned char v112, signed short v113)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
unsigned short v116 = 7;
signed short v115 = -2;
signed char v114 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (unsigned int v117)
{
history[history_index++] = (int)v117;
{
for (;;) {
signed short v120 = 2;
signed int v119 = 3;
unsigned short v118 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
