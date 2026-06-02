#include <stdlib.h>
extern signed char v1 (signed char, signed int);
extern signed char (*v2) (signed char, signed int);
extern signed int v3 (signed char);
extern signed int (*v4) (signed char);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
signed char v7 (signed short, unsigned int, signed short, signed short);
signed char (*v8) (signed short, unsigned int, signed short, signed short) = v7;
extern signed int v9 (unsigned char, unsigned int);
extern signed int (*v10) (unsigned char, unsigned int);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern signed short v13 (unsigned char);
extern signed short (*v14) (unsigned char);
extern signed short v15 (unsigned char, signed int, unsigned int);
extern signed short (*v16) (unsigned char, signed int, unsigned int);
signed int v17 (signed char, signed short);
signed int (*v18) (signed char, signed short) = v17;
extern unsigned int v19 (signed int);
extern unsigned int (*v20) (signed int);
signed int v21 (void);
signed int (*v22) (void) = v21;
extern unsigned int v23 (signed short, unsigned int, unsigned short, signed int);
extern unsigned int (*v24) (signed short, unsigned int, unsigned short, signed int);
extern unsigned char v25 (unsigned char, unsigned short, unsigned short, signed char);
extern unsigned char (*v26) (unsigned char, unsigned short, unsigned short, signed char);
extern unsigned short v27 (signed int, unsigned int, unsigned int);
extern unsigned short (*v28) (signed int, unsigned int, unsigned int);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v44 = 5;
signed short v43 = 1;
signed int v42 = 1;

signed int v21 (void)
{
{
for (;;) {
unsigned int v47 = 5U;
unsigned char v46 = 6;
signed int v45 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (signed char v48, signed short v49)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned char v52 = 0;
unsigned int v51 = 5U;
signed char v50 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (signed short v53, unsigned int v54, signed short v55, signed short v56)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
unsigned int v59 = 7U;
unsigned short v58 = 1;
unsigned char v57 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
