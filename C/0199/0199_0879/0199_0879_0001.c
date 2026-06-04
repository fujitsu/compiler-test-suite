#include <stdlib.h>
extern signed short v1 (signed char, unsigned short, signed short, unsigned int);
extern signed short (*v2) (signed char, unsigned short, signed short, unsigned int);
extern signed char v3 (unsigned int);
extern signed char (*v4) (unsigned int);
extern unsigned short v5 (signed char, signed char);
extern unsigned short (*v6) (signed char, signed char);
extern signed char v9 (unsigned int, unsigned int);
extern signed char (*v10) (unsigned int, unsigned int);
signed int v11 (unsigned char, signed char, unsigned char);
signed int (*v12) (unsigned char, signed char, unsigned char) = v11;
extern signed char v13 (signed short, unsigned short, signed int, unsigned int);
extern signed char (*v14) (signed short, unsigned short, signed int, unsigned int);
void v15 (void);
void (*v16) (void) = v15;
extern signed char v17 (signed int, unsigned int, signed char);
extern signed char (*v18) (signed int, unsigned int, signed char);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern unsigned short v21 (signed char);
extern unsigned short (*v22) (signed char);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern signed int v27 (signed int, signed int, unsigned char, signed int);
extern signed int (*v28) (signed int, signed int, unsigned char, signed int);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v50 = 7;
signed int v49 = -2;
unsigned char v48 = 7;

void v15 (void)
{
{
for (;;) {
unsigned char v53 = 6;
unsigned int v52 = 6U;
signed short v51 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (unsigned char v54, signed char v55, unsigned char v56)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
unsigned short v59 = 7;
signed int v58 = -1;
unsigned char v57 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
