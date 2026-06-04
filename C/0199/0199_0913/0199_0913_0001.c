#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern unsigned short v3 (unsigned short, signed int, unsigned short, signed int);
extern unsigned short (*v4) (unsigned short, signed int, unsigned short, signed int);
extern unsigned int v5 (unsigned int, unsigned short, signed char, unsigned char);
extern unsigned int (*v6) (unsigned int, unsigned short, signed char, unsigned char);
extern signed char v7 (unsigned char, unsigned short, unsigned int, unsigned short);
extern signed char (*v8) (unsigned char, unsigned short, unsigned int, unsigned short);
unsigned short v9 (unsigned char, unsigned short, signed short);
unsigned short (*v10) (unsigned char, unsigned short, signed short) = v9;
unsigned int v11 (unsigned int);
unsigned int (*v12) (unsigned int) = v11;
extern signed short v13 (unsigned char);
extern signed short (*v14) (unsigned char);
extern void v15 (signed short);
extern void (*v16) (signed short);
extern void v17 (void);
extern void (*v18) (void);
signed short v19 (unsigned short, unsigned int, unsigned short, signed char);
signed short (*v20) (unsigned short, unsigned int, unsigned short, signed char) = v19;
extern signed int v21 (unsigned char, signed short, unsigned int, signed short);
extern signed int (*v22) (unsigned char, signed short, unsigned int, signed short);
extern unsigned int v23 (unsigned char, unsigned char);
extern unsigned int (*v24) (unsigned char, unsigned char);
extern void v27 (unsigned char);
extern void (*v28) (unsigned char);
extern void v29 (signed short, unsigned short, signed char, unsigned short);
extern void (*v30) (signed short, unsigned short, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v58 = 0;
signed short v57 = -4;
unsigned short v56 = 4;

signed short v19 (unsigned short v59, unsigned int v60, unsigned short v61, signed char v62)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
signed int v65 = -3;
unsigned int v64 = 1U;
signed short v63 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (unsigned int v66)
{
history[history_index++] = (int)v66;
{
for (;;) {
unsigned short v69 = 2;
unsigned int v68 = 2U;
signed char v67 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (unsigned char v70, unsigned short v71, signed short v72)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
signed int v75 = 1;
unsigned int v74 = 1U;
signed int v73 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
