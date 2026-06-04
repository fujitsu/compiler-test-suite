#include <stdlib.h>
extern unsigned short v1 (signed short, signed int, signed int);
extern unsigned short (*v2) (signed short, signed int, signed int);
signed short v3 (void);
signed short (*v4) (void) = v3;
extern signed char v5 (unsigned char, unsigned char);
extern signed char (*v6) (unsigned char, unsigned char);
extern unsigned short v7 (unsigned int);
extern unsigned short (*v8) (unsigned int);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
signed short v13 (signed int, unsigned int);
signed short (*v14) (signed int, unsigned int) = v13;
extern void v15 (signed int, signed char, signed short);
extern void (*v16) (signed int, signed char, signed short);
extern void v17 (unsigned int, signed short);
extern void (*v18) (unsigned int, signed short);
unsigned int v19 (unsigned char);
unsigned int (*v20) (unsigned char) = v19;
extern signed int v21 (unsigned short);
extern signed int (*v22) (unsigned short);
extern signed int v23 (void);
extern signed int (*v24) (void);
signed int v25 (unsigned int, unsigned int, signed short, unsigned short);
signed int (*v26) (unsigned int, unsigned int, signed short, unsigned short) = v25;
extern signed int v27 (void);
extern signed int (*v28) (void);
extern signed int v29 (signed short);
extern signed int (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v51 = 5;
unsigned char v50 = 1;
signed int v49 = 1;

signed int v25 (unsigned int v52, unsigned int v53, signed short v54, unsigned short v55)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned short v58 = 7;
unsigned short v57 = 0;
signed short v56 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (unsigned char v59)
{
history[history_index++] = (int)v59;
{
for (;;) {
signed short v62 = 1;
signed short v61 = 1;
unsigned char v60 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (signed int v63, unsigned int v64)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
signed int v67 = 1;
unsigned short v66 = 3;
signed int v65 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (void)
{
{
for (;;) {
unsigned char v70 = 4;
unsigned short v69 = 4;
unsigned char v68 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
