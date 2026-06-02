#include <stdlib.h>
extern signed int v1 (unsigned short, signed short);
extern signed int (*v2) (unsigned short, signed short);
extern signed char v5 (signed char, signed short);
extern signed char (*v6) (signed char, signed short);
extern void v7 (unsigned int, unsigned char, unsigned short, unsigned int);
extern void (*v8) (unsigned int, unsigned char, unsigned short, unsigned int);
extern signed int v9 (unsigned char);
extern signed int (*v10) (unsigned char);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed char v15 (signed short, signed int);
extern signed char (*v16) (signed short, signed int);
signed char v17 (signed char, signed int, signed int);
signed char (*v18) (signed char, signed int, signed int) = v17;
extern signed char v19 (void);
extern signed char (*v20) (void);
extern void v21 (signed short, signed char, unsigned int, unsigned char);
extern void (*v22) (signed short, signed char, unsigned int, unsigned char);
unsigned short v23 (unsigned char, unsigned char);
unsigned short (*v24) (unsigned char, unsigned char) = v23;
extern unsigned char v25 (signed int, signed char, unsigned short);
extern unsigned char (*v26) (signed int, signed char, unsigned short);
extern signed int v27 (signed short, signed short, signed char, unsigned int);
extern signed int (*v28) (signed short, signed short, signed char, unsigned int);
extern void v29 (unsigned int, signed int);
extern void (*v30) (unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v56 = -3;
unsigned int v55 = 3U;
signed short v54 = 3;

unsigned short v23 (unsigned char v57, unsigned char v58)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
unsigned char v61 = 6;
signed char v60 = 3;
unsigned char v59 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (signed char v62, signed int v63, signed int v64)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
signed char v67 = -4;
unsigned short v66 = 7;
unsigned int v65 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
