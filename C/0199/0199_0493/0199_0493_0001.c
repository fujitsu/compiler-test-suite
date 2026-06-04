#include <stdlib.h>
extern signed char v1 (signed char, unsigned int, unsigned int, signed short);
extern signed char (*v2) (signed char, unsigned int, unsigned int, signed short);
extern void v3 (void);
extern void (*v4) (void);
signed short v5 (signed char, unsigned short);
signed short (*v6) (signed char, unsigned short) = v5;
extern signed short v7 (void);
extern signed short (*v8) (void);
extern signed char v9 (unsigned char, unsigned char, signed short);
extern signed char (*v10) (unsigned char, unsigned char, signed short);
signed short v11 (signed short);
signed short (*v12) (signed short) = v11;
extern void v13 (signed int, signed short, signed char, unsigned int);
extern void (*v14) (signed int, signed short, signed char, unsigned int);
extern unsigned short v15 (signed short, signed int);
extern unsigned short (*v16) (signed short, signed int);
extern void v17 (void);
extern void (*v18) (void);
extern signed char v19 (unsigned int, signed char, unsigned int, signed short);
extern signed char (*v20) (unsigned int, signed char, unsigned int, signed short);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern unsigned short v23 (unsigned char);
extern unsigned short (*v24) (unsigned char);
extern signed char v25 (unsigned int, unsigned int);
extern signed char (*v26) (unsigned int, unsigned int);
signed short v27 (unsigned char, unsigned char, unsigned short);
signed short (*v28) (unsigned char, unsigned char, unsigned short) = v27;
extern signed short v29 (unsigned int, signed char, unsigned char);
extern signed short (*v30) (unsigned int, signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v57 = 1;
signed int v56 = 3;
signed short v55 = -2;

signed short v27 (unsigned char v58, unsigned char v59, unsigned short v60)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
unsigned short v63 = 7;
signed short v62 = 2;
signed char v61 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (signed short v64)
{
history[history_index++] = (int)v64;
{
for (;;) {
unsigned char v67 = 3;
unsigned int v66 = 1U;
unsigned char v65 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (signed char v68, unsigned short v69)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
signed short v72 = -4;
signed int v71 = -1;
unsigned int v70 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
