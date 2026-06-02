#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned short v5 (signed int, signed short);
extern unsigned short (*v6) (signed int, signed short);
extern unsigned char v7 (unsigned int, unsigned short);
extern unsigned char (*v8) (unsigned int, unsigned short);
extern signed int v9 (unsigned short, signed int, unsigned int);
extern signed int (*v10) (unsigned short, signed int, unsigned int);
extern unsigned short v11 (unsigned int, signed int, unsigned short);
extern unsigned short (*v12) (unsigned int, signed int, unsigned short);
void v13 (signed short, signed short, signed char, signed char);
void (*v14) (signed short, signed short, signed char, signed char) = v13;
extern unsigned int v15 (unsigned short);
extern unsigned int (*v16) (unsigned short);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern void v19 (unsigned char);
extern void (*v20) (unsigned char);
signed int v21 (signed short);
signed int (*v22) (signed short) = v21;
extern unsigned short v23 (signed int, unsigned int, signed short);
extern unsigned short (*v24) (signed int, unsigned int, signed short);
extern unsigned char v25 (signed int);
extern unsigned char (*v26) (signed int);
signed int v27 (signed char, signed short, signed short);
signed int (*v28) (signed char, signed short, signed short) = v27;
extern unsigned short v29 (unsigned short, signed short, signed short, unsigned int);
extern unsigned short (*v30) (unsigned short, signed short, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v57 = 0;
unsigned char v56 = 5;
signed int v55 = -2;

signed int v27 (signed char v58, signed short v59, signed short v60)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
unsigned int v63 = 2U;
unsigned int v62 = 5U;
signed int v61 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (signed short v64)
{
history[history_index++] = (int)v64;
{
for (;;) {
unsigned char v67 = 7;
signed short v66 = 2;
unsigned int v65 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (signed short v68, signed short v69, signed char v70, signed char v71)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed short v74 = 1;
unsigned int v73 = 6U;
signed short v72 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
