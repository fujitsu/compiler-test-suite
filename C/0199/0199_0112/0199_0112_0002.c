#include <stdlib.h>
extern unsigned short v1 (unsigned short, unsigned char, unsigned short);
extern unsigned short (*v2) (unsigned short, unsigned char, unsigned short);
extern signed int v3 (void);
extern signed int (*v4) (void);
signed int v5 (unsigned int, signed int, unsigned int, signed int);
signed int (*v6) (unsigned int, signed int, unsigned int, signed int) = v5;
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern unsigned char v9 (unsigned char, signed char, signed int, signed char);
extern unsigned char (*v10) (unsigned char, signed char, signed int, signed char);
extern unsigned int v11 (unsigned char, unsigned short, signed char);
extern unsigned int (*v12) (unsigned char, unsigned short, signed char);
extern unsigned char v13 (unsigned short, signed char, signed short);
extern unsigned char (*v14) (unsigned short, signed char, signed short);
extern signed short v15 (signed int);
extern signed short (*v16) (signed int);
extern signed short v17 (signed short, signed char, signed int, signed char);
extern signed short (*v18) (signed short, signed char, signed int, signed char);
extern unsigned char v19 (unsigned char);
extern unsigned char (*v20) (unsigned char);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
signed int v27 (signed short);
signed int (*v28) (signed short) = v27;
signed int v29 (unsigned int);
signed int (*v30) (unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v62 = 3;
unsigned int v61 = 1U;
unsigned short v60 = 5;

signed int v29 (unsigned int v63)
{
history[history_index++] = (int)v63;
{
for (;;) {
unsigned short v66 = 2;
unsigned short v65 = 0;
unsigned short v64 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v27 (signed short v67)
{
history[history_index++] = (int)v67;
{
for (;;) {
signed char v70 = -3;
unsigned int v69 = 6U;
unsigned char v68 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (unsigned int v71, signed int v72, unsigned int v73, signed int v74)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed int v77 = -1;
signed short v76 = 2;
signed int v75 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
