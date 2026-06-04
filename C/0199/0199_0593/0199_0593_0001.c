#include <stdlib.h>
extern unsigned int v1 (unsigned char, signed int, signed short, signed int);
extern unsigned int (*v2) (unsigned char, signed int, signed short, signed int);
extern unsigned char v3 (signed int);
extern unsigned char (*v4) (signed int);
extern void v5 (unsigned short, unsigned short, unsigned char);
extern void (*v6) (unsigned short, unsigned short, unsigned char);
extern unsigned int v7 (unsigned char);
extern unsigned int (*v8) (unsigned char);
extern unsigned int v9 (signed char, unsigned short);
extern unsigned int (*v10) (signed char, unsigned short);
signed int v11 (unsigned short, signed short, unsigned char);
signed int (*v12) (unsigned short, signed short, unsigned char) = v11;
extern unsigned char v13 (signed short, signed char);
extern unsigned char (*v14) (signed short, signed char);
extern unsigned int v17 (unsigned int, unsigned char, signed int);
extern unsigned int (*v18) (unsigned int, unsigned char, signed int);
extern void v19 (void);
extern void (*v20) (void);
unsigned short v21 (void);
unsigned short (*v22) (void) = v21;
extern signed int v23 (void);
extern signed int (*v24) (void);
extern void v27 (signed short, unsigned char, signed int);
extern void (*v28) (signed short, unsigned char, signed int);
signed int v29 (unsigned int);
signed int (*v30) (unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v49 = 5U;
signed int v48 = 3;
unsigned char v47 = 3;

signed int v29 (unsigned int v50)
{
history[history_index++] = (int)v50;
{
for (;;) {
signed int v53 = -4;
unsigned short v52 = 1;
signed short v51 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (void)
{
{
for (;;) {
unsigned short v56 = 0;
signed char v55 = -4;
unsigned short v54 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (unsigned short v57, signed short v58, unsigned char v59)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
signed int v62 = 0;
unsigned int v61 = 0U;
signed char v60 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
