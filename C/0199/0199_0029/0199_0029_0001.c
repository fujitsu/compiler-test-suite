#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern void v3 (signed int, signed short, signed short, unsigned int);
extern void (*v4) (signed int, signed short, signed short, unsigned int);
signed int v5 (signed char, signed int, unsigned short);
signed int (*v6) (signed char, signed int, unsigned short) = v5;
extern void v7 (void);
extern void (*v8) (void);
extern unsigned short v9 (signed int, signed short, signed char, unsigned char);
extern unsigned short (*v10) (signed int, signed short, signed char, unsigned char);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern unsigned short v13 (unsigned int);
extern unsigned short (*v14) (unsigned int);
extern signed int v15 (unsigned short);
extern signed int (*v16) (unsigned short);
extern unsigned short v17 (signed int, signed char);
extern unsigned short (*v18) (signed int, signed char);
extern signed int v19 (signed char);
extern signed int (*v20) (signed char);
signed int v21 (unsigned short, signed int, signed int);
signed int (*v22) (unsigned short, signed int, signed int) = v21;
extern unsigned int v23 (signed char, unsigned char, signed int);
extern unsigned int (*v24) (signed char, unsigned char, signed int);
extern void v25 (signed char, unsigned short, unsigned char);
extern void (*v26) (signed char, unsigned short, unsigned char);
signed short v27 (signed int);
signed short (*v28) (signed int) = v27;
extern void v29 (unsigned char, signed int, signed int);
extern void (*v30) (unsigned char, signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v61 = 6;
signed char v60 = -3;
signed int v59 = -4;

signed short v27 (signed int v62)
{
history[history_index++] = (int)v62;
{
for (;;) {
unsigned short v65 = 2;
signed short v64 = -2;
unsigned int v63 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (unsigned short v66, signed int v67, signed int v68)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
unsigned short v71 = 6;
unsigned int v70 = 6U;
signed short v69 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (signed char v72, signed int v73, unsigned short v74)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed short v77 = 2;
unsigned short v76 = 5;
unsigned int v75 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
