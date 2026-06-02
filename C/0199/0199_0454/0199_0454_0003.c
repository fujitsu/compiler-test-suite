#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern unsigned char v3 (unsigned char, signed short);
extern unsigned char (*v4) (unsigned char, signed short);
extern signed short v5 (signed int, signed short, signed char, signed short);
extern signed short (*v6) (signed int, signed short, signed char, signed short);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned char v11 (signed int);
extern unsigned char (*v12) (signed int);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern unsigned short v15 (unsigned short, signed int);
extern unsigned short (*v16) (unsigned short, signed int);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern void v19 (unsigned short, signed int, signed char, signed char);
extern void (*v20) (unsigned short, signed int, signed char, signed char);
extern signed short v21 (signed char, unsigned int, signed short, unsigned short);
extern signed short (*v22) (signed char, unsigned int, signed short, unsigned short);
signed short v23 (signed short, signed short);
signed short (*v24) (signed short, signed short) = v23;
extern signed char v25 (void);
extern signed char (*v26) (void);
extern void v27 (unsigned char, unsigned int);
extern void (*v28) (unsigned char, unsigned int);
void v29 (void);
void (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v104 = 7U;
unsigned short v103 = 7;
signed char v102 = 3;

void v29 (void)
{
{
for (;;) {
signed int v107 = -2;
signed int v106 = -1;
signed char v105 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v23 (signed short v108, signed short v109)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned short v112 = 7;
signed short v111 = 3;
signed short v110 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
