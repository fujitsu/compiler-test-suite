#include <stdlib.h>
extern unsigned char v1 (unsigned char, unsigned int, unsigned char, signed char);
extern unsigned char (*v2) (unsigned char, unsigned int, unsigned char, signed char);
extern unsigned int v3 (unsigned short, signed short, signed int);
extern unsigned int (*v4) (unsigned short, signed short, signed int);
extern signed char v5 (signed char, unsigned char, signed char);
extern signed char (*v6) (signed char, unsigned char, signed char);
extern unsigned char v7 (signed int);
extern unsigned char (*v8) (signed int);
extern signed char v9 (signed short, signed char, unsigned int, signed short);
extern signed char (*v10) (signed short, signed char, unsigned int, signed short);
unsigned char v11 (unsigned int, unsigned int);
unsigned char (*v12) (unsigned int, unsigned int) = v11;
signed int v13 (signed short);
signed int (*v14) (signed short) = v13;
unsigned int v15 (unsigned short, unsigned short, signed int, signed int);
unsigned int (*v16) (unsigned short, unsigned short, signed int, signed int) = v15;
extern signed char v17 (unsigned short, signed int, unsigned short);
extern signed char (*v18) (unsigned short, signed int, unsigned short);
extern unsigned short v19 (unsigned char, unsigned short);
extern unsigned short (*v20) (unsigned char, unsigned short);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern void v23 (signed char, unsigned short);
extern void (*v24) (signed char, unsigned short);
extern unsigned short v25 (signed int, signed int, unsigned short);
extern unsigned short (*v26) (signed int, signed int, unsigned short);
unsigned int v27 (void);
unsigned int (*v28) (void) = v27;
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v48 = 6;
signed int v47 = 3;
signed int v46 = -4;

unsigned int v27 (void)
{
{
for (;;) {
unsigned char v51 = 2;
unsigned char v50 = 7;
unsigned int v49 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (unsigned short v52, unsigned short v53, signed int v54, signed int v55)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
signed short v58 = 0;
unsigned int v57 = 4U;
signed short v56 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (signed short v59)
{
history[history_index++] = (int)v59;
{
for (;;) {
signed short v62 = -2;
signed char v61 = -4;
signed char v60 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (unsigned int v63, unsigned int v64)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
signed char v67 = -1;
unsigned char v66 = 5;
unsigned int v65 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
