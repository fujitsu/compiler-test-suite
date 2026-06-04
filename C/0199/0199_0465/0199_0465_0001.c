#include <stdlib.h>
extern unsigned int v1 (unsigned int, signed char, signed char);
extern unsigned int (*v2) (unsigned int, signed char, signed char);
extern unsigned int v3 (signed short);
extern unsigned int (*v4) (signed short);
unsigned short v5 (void);
unsigned short (*v6) (void) = v5;
extern signed short v7 (unsigned short, signed char, unsigned int, unsigned short);
extern signed short (*v8) (unsigned short, signed char, unsigned int, unsigned short);
extern void v9 (unsigned short, signed int, unsigned short, unsigned short);
extern void (*v10) (unsigned short, signed int, unsigned short, unsigned short);
extern void v11 (unsigned short, unsigned short);
extern void (*v12) (unsigned short, unsigned short);
extern signed short v13 (unsigned char, signed int, unsigned short);
extern signed short (*v14) (unsigned char, signed int, unsigned short);
extern signed short v15 (signed short, unsigned short, signed short, unsigned short);
extern signed short (*v16) (signed short, unsigned short, signed short, unsigned short);
unsigned int v17 (signed char, signed short, signed char, signed int);
unsigned int (*v18) (signed char, signed short, signed char, signed int) = v17;
signed int v19 (signed short, unsigned int, unsigned int, signed short);
signed int (*v20) (signed short, unsigned int, unsigned int, signed short) = v19;
unsigned short v21 (unsigned char, signed char);
unsigned short (*v22) (unsigned char, signed char) = v21;
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern void v27 (unsigned int, signed short, unsigned int);
extern void (*v28) (unsigned int, signed short, unsigned int);
extern signed char v29 (signed char);
extern signed char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v53 = -3;
unsigned char v52 = 3;
signed char v51 = -1;

unsigned short v21 (unsigned char v54, signed char v55)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
signed short v58 = -2;
signed int v57 = 1;
signed int v56 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (signed short v59, unsigned int v60, unsigned int v61, signed short v62)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
signed short v65 = 0;
signed short v64 = 0;
unsigned int v63 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (signed char v66, signed short v67, signed char v68, signed int v69)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
signed short v72 = 0;
unsigned char v71 = 6;
unsigned short v70 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (void)
{
{
for (;;) {
unsigned short v75 = 3;
unsigned int v74 = 4U;
unsigned int v73 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
