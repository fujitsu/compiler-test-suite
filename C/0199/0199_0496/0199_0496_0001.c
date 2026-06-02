#include <stdlib.h>
extern signed short v1 (unsigned int, unsigned short);
extern signed short (*v2) (unsigned int, unsigned short);
extern signed int v3 (signed short, signed char);
extern signed int (*v4) (signed short, signed char);
signed short v5 (void);
signed short (*v6) (void) = v5;
void v7 (unsigned char, unsigned char, signed int);
void (*v8) (unsigned char, unsigned char, signed int) = v7;
extern signed int v9 (signed int, signed char, signed char);
extern signed int (*v10) (signed int, signed char, signed char);
extern signed int v11 (unsigned short);
extern signed int (*v12) (unsigned short);
extern unsigned char v13 (unsigned short, unsigned char);
extern unsigned char (*v14) (unsigned short, unsigned char);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
unsigned short v17 (signed int);
unsigned short (*v18) (signed int) = v17;
extern signed char v19 (signed char, unsigned short);
extern signed char (*v20) (signed char, unsigned short);
extern signed int v21 (signed char, unsigned short, unsigned short, signed int);
extern signed int (*v22) (signed char, unsigned short, unsigned short, signed int);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern signed short v27 (unsigned char, unsigned short, signed int);
extern signed short (*v28) (unsigned char, unsigned short, signed int);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v48 = 6U;
unsigned short v47 = 1;
signed short v46 = 3;

unsigned short v17 (signed int v49)
{
history[history_index++] = (int)v49;
{
for (;;) {
signed int v52 = 1;
signed short v51 = 1;
signed short v50 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (unsigned char v53, unsigned char v54, signed int v55)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned short v58 = 7;
unsigned int v57 = 3U;
unsigned short v56 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (void)
{
{
for (;;) {
unsigned short v61 = 5;
signed char v60 = -4;
signed short v59 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
