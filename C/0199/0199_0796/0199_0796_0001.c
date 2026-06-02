#include <stdlib.h>
extern unsigned char v1 (signed char, unsigned int);
extern unsigned char (*v2) (signed char, unsigned int);
unsigned short v3 (unsigned char, signed short, unsigned int, unsigned short);
unsigned short (*v4) (unsigned char, signed short, unsigned int, unsigned short) = v3;
extern unsigned char v5 (signed int, signed short, signed char, signed short);
extern unsigned char (*v6) (signed int, signed short, signed char, signed short);
extern unsigned short v7 (unsigned char, signed char, unsigned char);
extern unsigned short (*v8) (unsigned char, signed char, unsigned char);
extern signed char v9 (signed short);
extern signed char (*v10) (signed short);
extern unsigned short v13 (unsigned char);
extern unsigned short (*v14) (unsigned char);
extern unsigned char v15 (unsigned short, unsigned char, signed char);
extern unsigned char (*v16) (unsigned short, unsigned char, signed char);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
signed char v19 (unsigned int, unsigned char, signed short, signed int);
signed char (*v20) (unsigned int, unsigned char, signed short, signed int) = v19;
extern signed int v21 (signed int);
extern signed int (*v22) (signed int);
extern unsigned int v23 (unsigned int, signed int, signed int);
extern unsigned int (*v24) (unsigned int, signed int, signed int);
extern signed int v25 (unsigned int, signed char, signed short, unsigned int);
extern signed int (*v26) (unsigned int, signed char, signed short, unsigned int);
extern unsigned int v27 (unsigned int);
extern unsigned int (*v28) (unsigned int);
extern signed short v29 (signed char);
extern signed short (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v52 = 1;
unsigned int v51 = 3U;
unsigned char v50 = 3;

signed char v19 (unsigned int v53, unsigned char v54, signed short v55, signed int v56)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
signed char v59 = -3;
unsigned char v58 = 0;
signed short v57 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (unsigned char v60, signed short v61, unsigned int v62, unsigned short v63)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
signed short v66 = 0;
unsigned char v65 = 2;
unsigned int v64 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
