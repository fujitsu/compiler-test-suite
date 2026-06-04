#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed char v3 (signed char, signed short);
extern signed char (*v4) (signed char, signed short);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern void v7 (unsigned short);
extern void (*v8) (unsigned short);
extern void v9 (unsigned short);
extern void (*v10) (unsigned short);
extern signed short v11 (signed int, signed int, signed char, signed char);
extern signed short (*v12) (signed int, signed int, signed char, signed char);
extern void v15 (unsigned char);
extern void (*v16) (unsigned char);
extern signed int v17 (signed int, signed char);
extern signed int (*v18) (signed int, signed char);
extern signed short v19 (signed char, signed short, unsigned int);
extern signed short (*v20) (signed char, signed short, unsigned int);
signed char v21 (unsigned char, unsigned short, signed int);
signed char (*v22) (unsigned char, unsigned short, signed int) = v21;
extern unsigned short v23 (unsigned short, signed short);
extern unsigned short (*v24) (unsigned short, signed short);
extern unsigned int v25 (signed int, signed short, signed short, signed short);
extern unsigned int (*v26) (signed int, signed short, signed short, signed short);
extern unsigned char v27 (signed int, unsigned short, unsigned short, unsigned short);
extern unsigned char (*v28) (signed int, unsigned short, unsigned short, unsigned short);
signed char v29 (signed char, signed char, unsigned char, signed char);
signed char (*v30) (signed char, signed char, unsigned char, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v51 = -2;
signed short v50 = 2;
signed short v49 = -3;

signed char v29 (signed char v52, signed char v53, unsigned char v54, signed char v55)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
signed int v58 = -1;
unsigned char v57 = 7;
unsigned char v56 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v21 (unsigned char v59, unsigned short v60, signed int v61)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
unsigned char v64 = 4;
unsigned int v63 = 2U;
signed int v62 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
