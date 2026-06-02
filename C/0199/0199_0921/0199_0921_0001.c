#include <stdlib.h>
extern unsigned char v1 (unsigned short, unsigned char, unsigned int);
extern unsigned char (*v2) (unsigned short, unsigned char, unsigned int);
unsigned char v3 (unsigned int, signed char, signed char, signed short);
unsigned char (*v4) (unsigned int, signed char, signed char, signed short) = v3;
extern signed short v5 (void);
extern signed short (*v6) (void);
signed int v7 (signed int, signed char, unsigned int);
signed int (*v8) (signed int, signed char, unsigned int) = v7;
extern unsigned char v9 (signed int, unsigned short, signed short, signed char);
extern unsigned char (*v10) (signed int, unsigned short, signed short, signed char);
signed char v11 (signed char);
signed char (*v12) (signed char) = v11;
extern signed int v13 (void);
extern signed int (*v14) (void);
extern void v15 (unsigned int, unsigned int, unsigned char, signed char);
extern void (*v16) (unsigned int, unsigned int, unsigned char, signed char);
extern unsigned int v17 (unsigned char, signed int);
extern unsigned int (*v18) (unsigned char, signed int);
extern signed short v19 (signed short);
extern signed short (*v20) (signed short);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern void v23 (unsigned short, unsigned char, unsigned short, unsigned int);
extern void (*v24) (unsigned short, unsigned char, unsigned short, unsigned int);
extern unsigned char v25 (unsigned short, signed char);
extern unsigned char (*v26) (unsigned short, signed char);
extern signed char v27 (unsigned short, unsigned short, signed short, signed char);
extern signed char (*v28) (unsigned short, unsigned short, signed short, signed char);
extern unsigned short v29 (unsigned short);
extern unsigned short (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v56 = 1;
signed short v55 = -3;
signed int v54 = -2;

signed char v11 (signed char v57)
{
history[history_index++] = (int)v57;
{
for (;;) {
signed char v60 = 1;
signed int v59 = 3;
signed char v58 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (signed int v61, signed char v62, unsigned int v63)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
signed short v66 = -3;
signed char v65 = 2;
signed short v64 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (unsigned int v67, signed char v68, signed char v69, signed short v70)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed int v73 = 1;
unsigned short v72 = 6;
signed char v71 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
