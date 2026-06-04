#include <stdlib.h>
extern unsigned short v1 (unsigned char, unsigned short, unsigned int);
extern unsigned short (*v2) (unsigned char, unsigned short, unsigned int);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern unsigned short v5 (signed char, unsigned int, signed char);
extern unsigned short (*v6) (signed char, unsigned int, signed char);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern unsigned short v9 (unsigned int, signed char, unsigned char, signed char);
extern unsigned short (*v10) (unsigned int, signed char, unsigned char, signed char);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern signed int v13 (unsigned int, signed int);
extern signed int (*v14) (unsigned int, signed int);
signed short v15 (unsigned char, signed int);
signed short (*v16) (unsigned char, signed int) = v15;
void v17 (void);
void (*v18) (void) = v17;
extern void v19 (unsigned char, unsigned short, signed short);
extern void (*v20) (unsigned char, unsigned short, signed short);
extern unsigned int v23 (unsigned int, signed int);
extern unsigned int (*v24) (unsigned int, signed int);
extern void v25 (signed short, unsigned int, signed short, unsigned short);
extern void (*v26) (signed short, unsigned int, signed short, unsigned short);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v42 = -3;
unsigned int v41 = 7U;
signed int v40 = 1;

void v17 (void)
{
{
for (;;) {
unsigned int v45 = 7U;
unsigned int v44 = 5U;
unsigned char v43 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (unsigned char v46, signed int v47)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed int v50 = -1;
signed int v49 = -3;
signed char v48 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
