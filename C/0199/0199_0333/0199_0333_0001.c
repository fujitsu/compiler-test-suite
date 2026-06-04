#include <stdlib.h>
extern void v1 (unsigned char);
extern void (*v2) (unsigned char);
extern void v3 (unsigned char);
extern void (*v4) (unsigned char);
extern signed int v5 (signed short, unsigned char, signed char);
extern signed int (*v6) (signed short, unsigned char, signed char);
extern unsigned short v7 (unsigned int, signed char, unsigned char, unsigned int);
extern unsigned short (*v8) (unsigned int, signed char, unsigned char, unsigned int);
extern unsigned int v9 (signed short, signed int);
extern unsigned int (*v10) (signed short, signed int);
signed int v11 (unsigned int, unsigned int, unsigned char, unsigned short);
signed int (*v12) (unsigned int, unsigned int, unsigned char, unsigned short) = v11;
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed short v15 (unsigned short, signed int, unsigned char);
extern signed short (*v16) (unsigned short, signed int, unsigned char);
extern unsigned int v17 (signed char);
extern unsigned int (*v18) (signed char);
void v19 (void);
void (*v20) (void) = v19;
extern signed short v21 (signed short);
extern signed short (*v22) (signed short);
extern unsigned short v23 (signed char);
extern unsigned short (*v24) (signed char);
extern unsigned short v25 (unsigned int, unsigned short, signed int);
extern unsigned short (*v26) (unsigned int, unsigned short, signed int);
unsigned char v27 (void);
unsigned char (*v28) (void) = v27;
extern unsigned char v29 (unsigned int, signed short);
extern unsigned char (*v30) (unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v50 = 1;
signed char v49 = 0;
signed int v48 = -2;

unsigned char v27 (void)
{
{
for (;;) {
unsigned int v53 = 6U;
unsigned char v52 = 3;
unsigned short v51 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (void)
{
{
for (;;) {
unsigned int v56 = 4U;
unsigned int v55 = 5U;
unsigned short v54 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (unsigned int v57, unsigned int v58, unsigned char v59, unsigned short v60)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
signed short v63 = 0;
signed int v62 = -3;
signed int v61 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
