#include <stdlib.h>
extern signed int v1 (unsigned short, signed int);
extern signed int (*v2) (unsigned short, signed int);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern signed int v5 (unsigned short, unsigned int, unsigned char, signed int);
extern signed int (*v6) (unsigned short, unsigned int, unsigned char, signed int);
extern void v7 (signed char, signed char, signed short, unsigned short);
extern void (*v8) (signed char, signed char, signed short, unsigned short);
extern void v9 (signed short, unsigned char);
extern void (*v10) (signed short, unsigned char);
extern void v11 (unsigned int, unsigned int, unsigned char, unsigned int);
extern void (*v12) (unsigned int, unsigned int, unsigned char, unsigned int);
extern unsigned int v13 (signed int, unsigned char);
extern unsigned int (*v14) (signed int, unsigned char);
extern void v15 (void);
extern void (*v16) (void);
unsigned short v17 (signed char, unsigned short, signed int, signed short);
unsigned short (*v18) (signed char, unsigned short, signed int, signed short) = v17;
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern signed short v21 (void);
extern signed short (*v22) (void);
signed char v23 (signed int, unsigned char);
signed char (*v24) (signed int, unsigned char) = v23;
extern unsigned int v25 (unsigned short, unsigned char);
extern unsigned int (*v26) (unsigned short, unsigned char);
signed short v27 (void);
signed short (*v28) (void) = v27;
extern int history[];
extern int history_index;
extern int trace;
signed short v54 = 0;
unsigned int v53 = 6U;
unsigned int v52 = 3U;

signed short v27 (void)
{
{
for (;;) {
unsigned int v57 = 7U;
signed short v56 = 2;
unsigned int v55 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v23 (signed int v58, unsigned char v59)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
signed int v62 = 3;
signed int v61 = 0;
unsigned char v60 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (signed char v63, unsigned short v64, signed int v65, signed short v66)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned char v69 = 6;
unsigned int v68 = 4U;
unsigned char v67 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
