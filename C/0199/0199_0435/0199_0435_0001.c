#include <stdlib.h>
extern unsigned short v1 (unsigned short, signed char, unsigned char);
extern unsigned short (*v2) (unsigned short, signed char, unsigned char);
extern signed short v3 (unsigned char);
extern signed short (*v4) (unsigned char);
extern unsigned int v5 (signed char, unsigned short);
extern unsigned int (*v6) (signed char, unsigned short);
extern unsigned char v7 (unsigned short, unsigned char, unsigned short);
extern unsigned char (*v8) (unsigned short, unsigned char, unsigned short);
extern unsigned int v9 (signed short);
extern unsigned int (*v10) (signed short);
extern unsigned char v11 (unsigned char);
extern unsigned char (*v12) (unsigned char);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern unsigned int v19 (unsigned short, unsigned char, signed int);
extern unsigned int (*v20) (unsigned short, unsigned char, signed int);
signed int v21 (unsigned char);
signed int (*v22) (unsigned char) = v21;
extern signed char v23 (void);
extern signed char (*v24) (void);
unsigned char v25 (signed char, unsigned int);
unsigned char (*v26) (signed char, unsigned int) = v25;
extern unsigned char v27 (signed int, signed int, unsigned int, signed char);
extern unsigned char (*v28) (signed int, signed int, unsigned int, signed char);
extern unsigned int v29 (unsigned int, signed int, unsigned int);
extern unsigned int (*v30) (unsigned int, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v57 = -4;
signed short v56 = 0;
unsigned int v55 = 0U;

unsigned char v25 (signed char v58, unsigned int v59)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
signed int v62 = 2;
unsigned char v61 = 4;
unsigned int v60 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (unsigned char v63)
{
history[history_index++] = (int)v63;
{
for (;;) {
unsigned char v66 = 7;
signed short v65 = -2;
signed short v64 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
