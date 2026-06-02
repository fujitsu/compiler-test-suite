#include <stdlib.h>
extern unsigned char v1 (unsigned char, signed int);
extern unsigned char (*v2) (unsigned char, signed int);
extern signed int v3 (unsigned char, unsigned int);
extern signed int (*v4) (unsigned char, unsigned int);
extern signed int v5 (signed int, unsigned short, unsigned char);
extern signed int (*v6) (signed int, unsigned short, unsigned char);
signed int v7 (signed char, signed char, unsigned short, unsigned short);
signed int (*v8) (signed char, signed char, unsigned short, unsigned short) = v7;
extern void v9 (unsigned int);
extern void (*v10) (unsigned int);
extern void v11 (unsigned short);
extern void (*v12) (unsigned short);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern unsigned int v17 (unsigned short, signed int);
extern unsigned int (*v18) (unsigned short, signed int);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed char v21 (void);
extern signed char (*v22) (void);
unsigned int v23 (signed int, unsigned char, unsigned char);
unsigned int (*v24) (signed int, unsigned char, unsigned char) = v23;
extern signed int v25 (signed short, signed short);
extern signed int (*v26) (signed short, signed short);
extern unsigned char v27 (signed short, unsigned char);
extern unsigned char (*v28) (signed short, unsigned char);
extern signed short v29 (signed short, signed char, signed int);
extern signed short (*v30) (signed short, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v104 = 1;
signed char v103 = 3;
unsigned int v102 = 6U;

unsigned int v23 (signed int v105, unsigned char v106, unsigned char v107)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
unsigned int v110 = 2U;
unsigned short v109 = 1;
signed char v108 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (signed char v111, signed char v112, unsigned short v113, unsigned short v114)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
signed char v117 = 2;
unsigned short v116 = 2;
unsigned int v115 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
