#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
signed char v3 (signed short, unsigned int);
signed char (*v4) (signed short, unsigned int) = v3;
signed short v5 (signed char);
signed short (*v6) (signed char) = v5;
extern signed int v7 (unsigned char);
extern signed int (*v8) (unsigned char);
extern signed short v9 (unsigned char, unsigned short, unsigned char);
extern signed short (*v10) (unsigned char, unsigned short, unsigned char);
extern void v11 (unsigned int);
extern void (*v12) (unsigned int);
extern unsigned int v13 (unsigned char, unsigned int, unsigned char, signed short);
extern unsigned int (*v14) (unsigned char, unsigned int, unsigned char, signed short);
extern unsigned int v15 (signed short, signed int);
extern unsigned int (*v16) (signed short, signed int);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern signed int v19 (signed int, signed int, signed char, signed int);
extern signed int (*v20) (signed int, signed int, signed char, signed int);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern void v25 (signed short);
extern void (*v26) (signed short);
extern unsigned short v27 (unsigned int, signed int);
extern unsigned short (*v28) (unsigned int, signed int);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v113 = 2;
signed int v112 = -4;
signed int v111 = 3;

signed short v5 (signed char v114)
{
history[history_index++] = (int)v114;
{
for (;;) {
signed int v117 = 0;
unsigned int v116 = 3U;
signed char v115 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (signed short v118, unsigned int v119)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
signed short v122 = -4;
signed char v121 = -3;
unsigned int v120 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
