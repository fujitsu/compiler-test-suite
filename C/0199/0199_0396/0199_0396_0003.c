#include <stdlib.h>
signed int v3 (unsigned int);
signed int (*v4) (unsigned int) = v3;
extern unsigned int v5 (signed short, signed int, unsigned short);
extern unsigned int (*v6) (signed short, signed int, unsigned short);
unsigned int v7 (signed char, unsigned int);
unsigned int (*v8) (signed char, unsigned int) = v7;
extern signed short v9 (signed short, signed int, signed char, unsigned short);
extern signed short (*v10) (signed short, signed int, signed char, unsigned short);
extern signed short v11 (unsigned int, signed short);
extern signed short (*v12) (unsigned int, signed short);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern signed short v15 (unsigned short, signed short);
extern signed short (*v16) (unsigned short, signed short);
extern unsigned char v17 (unsigned int);
extern unsigned char (*v18) (unsigned int);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern signed int v25 (signed char);
extern signed int (*v26) (signed char);
extern signed char v27 (void);
extern signed char (*v28) (void);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v108 = -1;
unsigned char v107 = 3;
signed int v106 = 0;

unsigned int v7 (signed char v109, unsigned int v110)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed short v113 = 2;
signed int v112 = -2;
signed short v111 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (unsigned int v114)
{
history[history_index++] = (int)v114;
{
for (;;) {
unsigned short v117 = 3;
signed char v116 = -2;
unsigned int v115 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
